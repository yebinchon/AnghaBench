; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ngd_ctrl = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"qmi init fail, ret:%d, state:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error adding slim controller\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SLIM controller Registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_slim_ngd_ctrl*, i32)* @qcom_slim_ngd_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_ngd_enable(%struct.qcom_slim_ngd_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qcom_slim_ngd_ctrl* %0, %struct.qcom_slim_ngd_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %75

9:                                                ; preds = %2
  %10 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %11 = call i32 @qcom_slim_qmi_init(%struct.qcom_slim_ngd_ctrl* %10, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %16 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %82

24:                                               ; preds = %9
  %25 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %26 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @complete(i32* %27)
  %29 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %30 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pm_runtime_enabled(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %36 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pm_runtime_suspended(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34, %24
  %41 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %42 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @qcom_slim_ngd_runtime_resume(i32 %43)
  br label %50

45:                                               ; preds = %34
  %46 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %47 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pm_runtime_resume(i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %52 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pm_runtime_mark_last_busy(i32 %53)
  %55 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %56 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pm_runtime_put(i32 %57)
  %59 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %60 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %59, i32 0, i32 0
  %61 = call i32 @slim_register_controller(i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %50
  %65 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %66 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %82

70:                                               ; preds = %50
  %71 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %72 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_info(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %81

75:                                               ; preds = %2
  %76 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %77 = call i32 @qcom_slim_qmi_exit(%struct.qcom_slim_ngd_ctrl* %76)
  %78 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %4, align 8
  %79 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %78, i32 0, i32 0
  %80 = call i32 @slim_unregister_controller(i32* %79)
  br label %81

81:                                               ; preds = %75, %70
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %64, %14
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @qcom_slim_qmi_init(%struct.qcom_slim_ngd_ctrl*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @pm_runtime_enabled(i32) #1

declare dso_local i32 @pm_runtime_suspended(i32) #1

declare dso_local i32 @qcom_slim_ngd_runtime_resume(i32) #1

declare dso_local i32 @pm_runtime_resume(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @slim_register_controller(i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @qcom_slim_qmi_exit(%struct.qcom_slim_ngd_ctrl*) #1

declare dso_local i32 @slim_unregister_controller(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
