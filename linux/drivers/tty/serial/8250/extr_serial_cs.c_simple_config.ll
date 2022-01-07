; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_simple_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_serial_cs.c_simple_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, %struct.TYPE_4__**, i32, i32, %struct.serial_info* }
%struct.TYPE_4__ = type { i32 }
%struct.serial_info = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { {}* }

@ENODEV = common dso_local global i32 0, align 4
@CONF_AUTO_SET_VPP = common dso_local global i32 0, align 4
@simple_config_check = common dso_local global i32 0, align 4
@simple_config_check_notpicky = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"no usable port range found, giving up\0A\00", align 1
@MANFID_3COM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @simple_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.serial_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 5
  %9 = load %struct.serial_info*, %struct.serial_info** %8, align 8
  store %struct.serial_info* %9, %struct.serial_info** %4, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @CONF_AUTO_SET_VPP, align 4
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %27, %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %22 = load i32, i32* @simple_config_check, align 4
  %23 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %21, i32 %22, i32* %6)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %40

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %17

30:                                               ; preds = %17
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %32 = load i32, i32* @simple_config_check_notpicky, align 4
  %33 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %31, i32 %32, i32* null)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %40

36:                                               ; preds = %30
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %38 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %37, i32 0, i32 3
  %39 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %98

40:                                               ; preds = %35, %25
  %41 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %42 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %47 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MANFID_3COM, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %53 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, -9
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %45, %40
  %57 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %58 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = icmp ne %struct.TYPE_3__* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %63 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = bitcast {}** %65 to i32 (%struct.pcmcia_device*)**
  %67 = load i32 (%struct.pcmcia_device*)*, i32 (%struct.pcmcia_device*)** %66, align 8
  %68 = icmp ne i32 (%struct.pcmcia_device*)* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %71 = getelementptr inbounds %struct.serial_info, %struct.serial_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = bitcast {}** %73 to i32 (%struct.pcmcia_device*)**
  %75 = load i32 (%struct.pcmcia_device*)*, i32 (%struct.pcmcia_device*)** %74, align 8
  %76 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %77 = call i32 %75(%struct.pcmcia_device* %76)
  br label %78

78:                                               ; preds = %69, %61, %56
  %79 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %80 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 -1, i32* %2, align 4
  br label %98

84:                                               ; preds = %78
  %85 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %86 = load %struct.serial_info*, %struct.serial_info** %4, align 8
  %87 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %88 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %89, i64 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %95 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @setup_serial(%struct.pcmcia_device* %85, %struct.serial_info* %86, i32 %93, i32 %96)
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %84, %83, %36
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @setup_serial(%struct.pcmcia_device*, %struct.serial_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
