; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusbhc_devconnect_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusbhc_devconnect_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32, %struct.TYPE_2__, i32 (%struct.wusbhc*, i32, i32, i32*, i32)*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.wusb_dn_connect = type { i32 }
%struct.wusb_dev = type { i32 }
%struct.wusb_port = type { i32, i32, %struct.wusb_dev* }

@USB_PORT_STAT_POWER = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Host controller can't connect more devices (%u already connected); device %s rejected\0A\00", align 1
@USB_PORT_STAT_C_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wusbhc*, %struct.wusb_dn_connect*, i8*)* @wusbhc_devconnect_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wusbhc_devconnect_ack(%struct.wusbhc* %0, %struct.wusb_dn_connect* %1, i8* %2) #0 {
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.wusb_dn_connect*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.wusb_dev*, align 8
  %10 = alloca %struct.wusb_port*, align 8
  %11 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store %struct.wusb_dn_connect* %1, %struct.wusb_dn_connect** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %13 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %12, i32 0, i32 4
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %16 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %43, %3
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %21 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.wusb_port* @wusb_port_by_idx(%struct.wusbhc* %25, i32 %26)
  store %struct.wusb_port* %27, %struct.wusb_port** %10, align 8
  %28 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %29 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %28, i32 0, i32 2
  %30 = load %struct.wusb_dev*, %struct.wusb_dev** %29, align 8
  %31 = icmp ne %struct.wusb_dev* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.wusb_dn_connect*, %struct.wusb_dn_connect** %5, align 8
  %34 = getelementptr inbounds %struct.wusb_dn_connect, %struct.wusb_dn_connect* %33, i32 0, i32 0
  %35 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %36 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %35, i32 0, i32 2
  %37 = load %struct.wusb_dev*, %struct.wusb_dev** %36, align 8
  %38 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %37, i32 0, i32 0
  %39 = call i64 @memcmp(i32* %34, i32* %38, i32 4)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %127

42:                                               ; preds = %32, %24
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %11, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %18

46:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %50 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %47
  %54 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call %struct.wusb_port* @wusb_port_by_idx(%struct.wusbhc* %54, i32 %55)
  store %struct.wusb_port* %56, %struct.wusb_port** %10, align 8
  %57 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %58 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @USB_PORT_STAT_POWER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %65 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %75

71:                                               ; preds = %63, %53
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %47

75:                                               ; preds = %70, %47
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %78 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp uge i32 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.device*, %struct.device** %8, align 8
  %83 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %84 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %85, i8* %86)
  br label %127

88:                                               ; preds = %75
  %89 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %90 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %89, i32 0, i32 3
  %91 = load i32 (%struct.wusbhc*, i32, i32, i32*, i32)*, i32 (%struct.wusbhc*, i32, i32, i32*, i32)** %90, align 8
  %92 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 %91(%struct.wusbhc* %92, i32 %93, i32 0, i32* null, i32 0)
  %95 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %96 = load %struct.wusb_dn_connect*, %struct.wusb_dn_connect** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call %struct.wusb_dev* @wusbhc_cack_add(%struct.wusbhc* %95, %struct.wusb_dn_connect* %96, i8* %97, i32 %98)
  store %struct.wusb_dev* %99, %struct.wusb_dev** %9, align 8
  %100 = load %struct.wusb_dev*, %struct.wusb_dev** %9, align 8
  %101 = icmp eq %struct.wusb_dev* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %127

103:                                              ; preds = %88
  %104 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %105 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %106 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = call i32 @wusbhc_mmcie_set(%struct.wusbhc* %104, i32 0, i32 0, i32* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %127

112:                                              ; preds = %103
  %113 = call i32 @msleep(i32 3)
  %114 = load %struct.wusb_dev*, %struct.wusb_dev** %9, align 8
  %115 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %116 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %115, i32 0, i32 2
  store %struct.wusb_dev* %114, %struct.wusb_dev** %116, align 8
  %117 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %118 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %119 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* @USB_PORT_STAT_C_CONNECTION, align 4
  %123 = load %struct.wusb_port*, %struct.wusb_port** %10, align 8
  %124 = getelementptr inbounds %struct.wusb_port, %struct.wusb_port* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %112, %111, %102, %81, %41
  %128 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %129 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %128, i32 0, i32 1
  %130 = call i32 @mutex_unlock(i32* %129)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wusb_port* @wusb_port_by_idx(%struct.wusbhc*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i8*) #1

declare dso_local %struct.wusb_dev* @wusbhc_cack_add(%struct.wusbhc*, %struct.wusb_dn_connect*, i8*, i32) #1

declare dso_local i32 @wusbhc_mmcie_set(%struct.wusbhc*, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
