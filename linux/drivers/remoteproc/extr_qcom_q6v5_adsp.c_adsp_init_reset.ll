; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_adsp_init_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_adsp_init_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_adsp = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [9 x i8] c"pdc_sync\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to acquire pdc_sync reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"cc_lpass\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to acquire restart\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_adsp*)* @adsp_init_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_init_reset(%struct.qcom_adsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_adsp*, align 8
  store %struct.qcom_adsp* %0, %struct.qcom_adsp** %3, align 8
  %4 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %5 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i8* @devm_reset_control_get_optional_exclusive(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %8, i32 0, i32 2
  store i8* %7, i8** %9, align 8
  %10 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %11 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @IS_ERR(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %17 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %21 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @PTR_ERR(i8* %22)
  store i32 %23, i32* %2, align 4
  br label %58

24:                                               ; preds = %1
  %25 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %26 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @devm_reset_control_get_optional_exclusive(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %30 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %32 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %24
  %36 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %37 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @devm_reset_control_get_exclusive(i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %41 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %35, %24
  %43 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %44 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %50 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %54 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %48, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i8* @devm_reset_control_get_optional_exclusive(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_reset_control_get_exclusive(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
