; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mrst.c_vrtc_mrst_do_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mrst.c_vrtc_mrst_do_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.device*, %struct.TYPE_9__* }
%struct.device = type { i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.resource = type { i32 }

@mrst_rtc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"i/o mem already in use.\0A\00", align 1
@mrst_rtc_ops = common dso_local global i32 0, align 4
@rtc_lock = common dso_local global i32 0, align 4
@RTC_PIE = common dso_local global i32 0, align 4
@RTC_AIE = common dso_local global i32 0, align 4
@RTC_CONTROL = common dso_local global i32 0, align 4
@RTC_24H = common dso_local global i8 0, align 1
@RTC_DM_BINARY = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"TODO: support more than 24-hr BCD mode\0A\00", align 1
@mrst_rtc_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"IRQ %d is already in use, err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"initialised\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"rtc-mrst: unable to initialise\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.resource*, i32)* @vrtc_mrst_do_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrtc_mrst_do_probe(%struct.device* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mrst_rtc, i32 0, i32 1), align 8
  %11 = icmp ne %struct.device* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %115

15:                                               ; preds = %3
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = icmp ne %struct.resource* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %115

21:                                               ; preds = %15
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = call i32 @resource_size(%struct.resource* %26)
  %28 = load i32, i32* @driver_name, align 4
  %29 = call %struct.resource* @devm_request_mem_region(%struct.device* %22, i32 %25, i32 %27, i32 %28)
  store %struct.resource* %29, %struct.resource** %6, align 8
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = icmp ne %struct.resource* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %21
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %115

37:                                               ; preds = %21
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mrst_rtc, i32 0, i32 0), align 8
  %39 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %39, %struct.device** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mrst_rtc, i32 0, i32 1), align 8
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i32 @dev_set_drvdata(%struct.device* %40, %struct.TYPE_10__* @mrst_rtc)
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call %struct.TYPE_9__* @devm_rtc_allocate_device(%struct.device* %42)
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mrst_rtc, i32 0, i32 2), align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mrst_rtc, i32 0, i32 2), align 8
  %45 = call i64 @IS_ERR(%struct.TYPE_9__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mrst_rtc, i32 0, i32 2), align 8
  %49 = call i32 @PTR_ERR(%struct.TYPE_9__* %48)
  store i32 %49, i32* %4, align 4
  br label %115

50:                                               ; preds = %37
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mrst_rtc, i32 0, i32 2), align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32* @mrst_rtc_ops, i32** %52, align 8
  %53 = load %struct.resource*, %struct.resource** %6, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mrst_rtc, i32 0, i32 2), align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = call i32 @dev_name(i32* %55)
  %57 = call i32 @rename_region(%struct.resource* %53, i32 %56)
  %58 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %59 = load i32, i32* @RTC_PIE, align 4
  %60 = load i32, i32* @RTC_AIE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @mrst_irq_disable(%struct.TYPE_10__* @mrst_rtc, i32 %61)
  %63 = load i32, i32* @RTC_CONTROL, align 4
  %64 = call zeroext i8 @vrtc_cmos_read(i32 %63)
  store i8 %64, i8* %9, align 1
  %65 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %66 = load i8, i8* %9, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @RTC_24H, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %50
  %73 = load i8, i8* %9, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @RTC_DM_BINARY, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72, %50
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %72
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @mrst_rtc_irq, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mrst_rtc, i32 0, i32 2), align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = call i32 @dev_name(i32* %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mrst_rtc, i32 0, i32 2), align 8
  %93 = call i32 @devm_request_irq(%struct.device* %86, i32 %87, i32 %88, i32 0, i32 %91, %struct.TYPE_9__* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %85
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %98, i32 %99)
  br label %111

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101, %82
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mrst_rtc, i32 0, i32 2), align 8
  %104 = call i32 @rtc_register_device(%struct.TYPE_9__* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %111

108:                                              ; preds = %102
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %115

111:                                              ; preds = %107, %96
  store %struct.device* null, %struct.device** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @mrst_rtc, i32 0, i32 1), align 8
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %108, %47, %32, %18, %12
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.resource* @devm_request_mem_region(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @devm_rtc_allocate_device(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @rename_region(%struct.resource*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @mrst_irq_disable(%struct.TYPE_10__*, i32) #1

declare dso_local zeroext i8 @vrtc_cmos_read(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
