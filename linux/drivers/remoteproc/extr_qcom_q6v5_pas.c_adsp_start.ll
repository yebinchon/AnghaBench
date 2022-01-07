; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_pas.c_adsp_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_pas.c_adsp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i64 }
%struct.qcom_adsp = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"failed to authenticate image and release reset\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"start timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @adsp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_start(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.qcom_adsp*, align 8
  %5 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %6 = load %struct.rproc*, %struct.rproc** %3, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.qcom_adsp*
  store %struct.qcom_adsp* %9, %struct.qcom_adsp** %4, align 8
  %10 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %11 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %10, i32 0, i32 6
  %12 = call i32 @qcom_q6v5_prepare(i32* %11)
  %13 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %14 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_prepare_enable(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %97

21:                                               ; preds = %1
  %22 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %23 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_prepare_enable(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %91

29:                                               ; preds = %21
  %30 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %31 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regulator_enable(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %86

37:                                               ; preds = %29
  %38 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %39 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regulator_enable(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %81

45:                                               ; preds = %37
  %46 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %47 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @qcom_scm_pas_auth_and_reset(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %54 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %76

57:                                               ; preds = %45
  %58 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %59 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %58, i32 0, i32 6
  %60 = call i32 @msecs_to_jiffies(i32 5000)
  %61 = call i32 @qcom_q6v5_wait_for_start(i32* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %68 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %72 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @qcom_scm_pas_shutdown(i32 %73)
  br label %76

75:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %97

76:                                               ; preds = %66, %52
  %77 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %78 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @regulator_disable(i32 %79)
  br label %81

81:                                               ; preds = %76, %44
  %82 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %83 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @regulator_disable(i32 %84)
  br label %86

86:                                               ; preds = %81, %36
  %87 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %88 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @clk_disable_unprepare(i32 %89)
  br label %91

91:                                               ; preds = %86, %28
  %92 = load %struct.qcom_adsp*, %struct.qcom_adsp** %4, align 8
  %93 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @clk_disable_unprepare(i32 %94)
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %91, %75, %19
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @qcom_q6v5_prepare(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @qcom_scm_pas_auth_and_reset(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @qcom_q6v5_wait_for_start(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @qcom_scm_pas_shutdown(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
