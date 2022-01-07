; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3029c2.c_rv3029_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3029c2.c_rv3029_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.rv3029_data = type { i32, i32, %struct.device*, %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reading status failed\0A\00", align 1
@rv3029_rtc_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to register the class device\0A\00", align 1
@rv3029_handle_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"rv3029\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", align 1
@rv3029_read_alarm = common dso_local global i32 0, align 4
@rv3029_set_alarm = common dso_local global i32 0, align 4
@rv3029_alarm_irq_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.regmap*, i32, i8*)* @rv3029_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3029_probe(%struct.device* %0, %struct.regmap* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rv3029_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [1 x i32], align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.rv3029_data* @devm_kzalloc(%struct.device* %13, i32 24, i32 %14)
  store %struct.rv3029_data* %15, %struct.rv3029_data** %10, align 8
  %16 = load %struct.rv3029_data*, %struct.rv3029_data** %10, align 8
  %17 = icmp ne %struct.rv3029_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %96

21:                                               ; preds = %4
  %22 = load %struct.regmap*, %struct.regmap** %7, align 8
  %23 = load %struct.rv3029_data*, %struct.rv3029_data** %10, align 8
  %24 = getelementptr inbounds %struct.rv3029_data, %struct.rv3029_data* %23, i32 0, i32 3
  store %struct.regmap* %22, %struct.regmap** %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.rv3029_data*, %struct.rv3029_data** %10, align 8
  %27 = getelementptr inbounds %struct.rv3029_data, %struct.rv3029_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load %struct.rv3029_data*, %struct.rv3029_data** %10, align 8
  %30 = getelementptr inbounds %struct.rv3029_data, %struct.rv3029_data* %29, i32 0, i32 2
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.rv3029_data*, %struct.rv3029_data** %10, align 8
  %33 = call i32 @dev_set_drvdata(%struct.device* %31, %struct.rv3029_data* %32)
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %36 = call i32 @rv3029_get_sr(%struct.device* %34, i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %21
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %96

43:                                               ; preds = %21
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @rv3029_trickle_config(%struct.device* %44)
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @rv3029_hwmon_register(%struct.device* %46, i8* %47)
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @THIS_MODULE, align 4
  %52 = call i32 @devm_rtc_device_register(%struct.device* %49, i8* %50, %struct.TYPE_3__* @rv3029_rtc_ops, i32 %51)
  %53 = load %struct.rv3029_data*, %struct.rv3029_data** %10, align 8
  %54 = getelementptr inbounds %struct.rv3029_data, %struct.rv3029_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rv3029_data*, %struct.rv3029_data** %10, align 8
  %56 = getelementptr inbounds %struct.rv3029_data, %struct.rv3029_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %43
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.rv3029_data*, %struct.rv3029_data** %10, align 8
  %64 = getelementptr inbounds %struct.rv3029_data, %struct.rv3029_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %5, align 4
  br label %96

67:                                               ; preds = %43
  %68 = load %struct.rv3029_data*, %struct.rv3029_data** %10, align 8
  %69 = getelementptr inbounds %struct.rv3029_data, %struct.rv3029_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = load %struct.rv3029_data*, %struct.rv3029_data** %10, align 8
  %75 = getelementptr inbounds %struct.rv3029_data, %struct.rv3029_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @rv3029_handle_irq, align 4
  %78 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %79 = load i32, i32* @IRQF_ONESHOT, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = call i32 @devm_request_threaded_irq(%struct.device* %73, i32 %76, i32* null, i32 %77, i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.device* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %72
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call i32 @dev_warn(%struct.device* %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.rv3029_data*, %struct.rv3029_data** %10, align 8
  %89 = getelementptr inbounds %struct.rv3029_data, %struct.rv3029_data* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  br label %94

90:                                               ; preds = %72
  %91 = load i32, i32* @rv3029_read_alarm, align 4
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rv3029_rtc_ops, i32 0, i32 2), align 4
  %92 = load i32, i32* @rv3029_set_alarm, align 4
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rv3029_rtc_ops, i32 0, i32 1), align 4
  %93 = load i32, i32* @rv3029_alarm_irq_enable, align 4
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rv3029_rtc_ops, i32 0, i32 0), align 4
  br label %94

94:                                               ; preds = %90, %85
  br label %95

95:                                               ; preds = %94, %67
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %60, %39, %18
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.rv3029_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.rv3029_data*) #1

declare dso_local i32 @rv3029_get_sr(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rv3029_trickle_config(%struct.device*) #1

declare dso_local i32 @rv3029_hwmon_register(%struct.device*, i8*) #1

declare dso_local i32 @devm_rtc_device_register(%struct.device*, i8*, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
