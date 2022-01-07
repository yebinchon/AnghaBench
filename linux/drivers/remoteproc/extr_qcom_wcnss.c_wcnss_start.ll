; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss.c_wcnss_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss.c_wcnss_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i64 }
%struct.qcom_wcnss = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"no iris registered\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WCNSS_PAS_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to authenticate image and release reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"start timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @wcnss_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcnss_start(%struct.rproc* %0) #0 {
  %2 = alloca %struct.rproc*, align 8
  %3 = alloca %struct.qcom_wcnss*, align 8
  %4 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %2, align 8
  %5 = load %struct.rproc*, %struct.rproc** %2, align 8
  %6 = getelementptr inbounds %struct.rproc, %struct.rproc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.qcom_wcnss*
  store %struct.qcom_wcnss* %8, %struct.qcom_wcnss** %3, align 8
  %9 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %10 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %13 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %18 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %91

23:                                               ; preds = %1
  %24 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %25 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %28 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regulator_bulk_enable(i32 %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %91

34:                                               ; preds = %23
  %35 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %36 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @qcom_iris_enable(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %83

42:                                               ; preds = %34
  %43 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %44 = call i32 @wcnss_indicate_nv_download(%struct.qcom_wcnss* %43)
  %45 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %46 = call i32 @wcnss_configure_iris(%struct.qcom_wcnss* %45)
  %47 = load i32, i32* @WCNSS_PAS_ID, align 4
  %48 = call i32 @qcom_scm_pas_auth_and_reset(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %53 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %78

56:                                               ; preds = %42
  %57 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %58 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %57, i32 0, i32 6
  %59 = call i32 @msecs_to_jiffies(i32 5000)
  %60 = call i32 @wait_for_completion_timeout(i32* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %62 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %70 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @WCNSS_PAS_ID, align 4
  %74 = call i32 @qcom_scm_pas_shutdown(i32 %73)
  %75 = load i32, i32* @ETIMEDOUT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %65, %56
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %68, %51
  %79 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %80 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @qcom_iris_disable(i32 %81)
  br label %83

83:                                               ; preds = %78, %41
  %84 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %85 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %88 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @regulator_bulk_disable(i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %83, %33, %16
  %92 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %93 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @qcom_iris_enable(i32) #1

declare dso_local i32 @wcnss_indicate_nv_download(%struct.qcom_wcnss*) #1

declare dso_local i32 @wcnss_configure_iris(%struct.qcom_wcnss*) #1

declare dso_local i32 @qcom_scm_pas_auth_and_reset(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @qcom_scm_pas_shutdown(i32) #1

declare dso_local i32 @qcom_iris_disable(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
