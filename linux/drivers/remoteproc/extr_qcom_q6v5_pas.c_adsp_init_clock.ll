; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_pas.c_adsp_init_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_pas.c_adsp_init_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_adsp = type { i32, i8*, i64, i8* }

@.str = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get xo clock\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"aggre2\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to get aggre2 clock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_adsp*)* @adsp_init_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_init_clock(%struct.qcom_adsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_adsp*, align 8
  %4 = alloca i32, align 4
  store %struct.qcom_adsp* %0, %struct.qcom_adsp** %3, align 8
  %5 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %6 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @devm_clk_get(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %10 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  %11 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %12 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %18 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @PTR_ERR(i8* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @EPROBE_DEFER, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %27 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %16
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %67

32:                                               ; preds = %1
  %33 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %34 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %32
  %38 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %39 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @devm_clk_get(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %43 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %45 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %37
  %50 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %51 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @EPROBE_DEFER, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %60 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %49
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %37
  br label %66

66:                                               ; preds = %65, %32
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %63, %30
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
