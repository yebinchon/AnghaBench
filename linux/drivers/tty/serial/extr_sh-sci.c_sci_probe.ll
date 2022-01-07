; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_port = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.plat_sci_port*, i64 }
%struct.plat_sci_port = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no platform data supplied\0A\00", align 1
@sci_ports = common dso_local global %struct.sci_port* null, align 8
@dev_attr_rx_fifo_trigger = common dso_local global i32 0, align 4
@PORT_SCIFA = common dso_local global i64 0, align 8
@PORT_SCIFB = common dso_local global i64 0, align 8
@PORT_HSCIF = common dso_local global i64 0, align 8
@dev_attr_rx_fifo_timeout = common dso_local global i32 0, align 4
@sci_ports_in_use = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_sci_port*, align 8
  %5 = alloca %struct.sci_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call i64 @is_early_platform_device(%struct.platform_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i32 @sci_probe_earlyprintk(%struct.platform_device* %12)
  store i32 %13, i32* %2, align 4
  br label %123

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call %struct.plat_sci_port* @sci_parse_dt(%struct.platform_device* %21, i32* %6)
  store %struct.plat_sci_port* %22, %struct.plat_sci_port** %4, align 8
  %23 = load %struct.plat_sci_port*, %struct.plat_sci_port** %4, align 8
  %24 = icmp eq %struct.plat_sci_port* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %123

28:                                               ; preds = %20
  br label %46

29:                                               ; preds = %14
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.plat_sci_port*, %struct.plat_sci_port** %32, align 8
  store %struct.plat_sci_port* %33, %struct.plat_sci_port** %4, align 8
  %34 = load %struct.plat_sci_port*, %struct.plat_sci_port** %4, align 8
  %35 = icmp eq %struct.plat_sci_port* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 1
  %39 = call i32 @dev_err(%struct.TYPE_6__* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %123

42:                                               ; preds = %29
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %28
  %47 = load %struct.sci_port*, %struct.sci_port** @sci_ports, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %47, i64 %49
  store %struct.sci_port* %50, %struct.sci_port** %5, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %53 = call i32 @platform_set_drvdata(%struct.platform_device* %51, %struct.sci_port* %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.plat_sci_port*, %struct.plat_sci_port** %4, align 8
  %57 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %58 = call i32 @sci_probe_single(%struct.platform_device* %54, i32 %55, %struct.plat_sci_port* %56, %struct.sci_port* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %123

63:                                               ; preds = %46
  %64 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %65 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 1
  %72 = call i32 @device_create_file(%struct.TYPE_6__* %71, i32* @dev_attr_rx_fifo_trigger)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %123

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %63
  %79 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %80 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PORT_SCIFA, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %99, label %85

85:                                               ; preds = %78
  %86 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %87 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PORT_SCIFB, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %94 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PORT_HSCIF, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %92, %85, %78
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 1
  %102 = call i32 @device_create_file(%struct.TYPE_6__* %101, i32* @dev_attr_rx_fifo_timeout)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load %struct.sci_port*, %struct.sci_port** %5, align 8
  %107 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 1
  %114 = call i32 @device_remove_file(%struct.TYPE_6__* %113, i32* @dev_attr_rx_fifo_trigger)
  br label %115

115:                                              ; preds = %111, %105
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %123

117:                                              ; preds = %99
  br label %118

118:                                              ; preds = %117, %92
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @BIT(i32 %119)
  %121 = load i32, i32* @sci_ports_in_use, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* @sci_ports_in_use, align 4
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %118, %115, %75, %61, %36, %25, %11
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i64 @is_early_platform_device(%struct.platform_device*) #1

declare dso_local i32 @sci_probe_earlyprintk(%struct.platform_device*) #1

declare dso_local %struct.plat_sci_port* @sci_parse_dt(%struct.platform_device*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sci_port*) #1

declare dso_local i32 @sci_probe_single(%struct.platform_device*, i32, %struct.plat_sci_port*, %struct.sci_port*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
