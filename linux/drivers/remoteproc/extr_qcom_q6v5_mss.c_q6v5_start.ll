; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i64 }
%struct.q6v5 = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"MBA booted, loading mpss\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"start timed out\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Failed to reclaim mba buffer system may become unstable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @q6v5_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_start(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.q6v5*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %7 = load %struct.rproc*, %struct.rproc** %3, align 8
  %8 = getelementptr inbounds %struct.rproc, %struct.rproc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.q6v5*
  store %struct.q6v5* %10, %struct.q6v5** %4, align 8
  %11 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %12 = call i32 @q6v5_mba_load(%struct.q6v5* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  %18 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %19 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_info(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %23 = call i32 @q6v5_mpss_load(%struct.q6v5* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %64

27:                                               ; preds = %17
  %28 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %29 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %28, i32 0, i32 9
  %30 = call i32 @msecs_to_jiffies(i32 5000)
  %31 = call i32 @qcom_q6v5_wait_for_start(i32* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %38 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %64

41:                                               ; preds = %27
  %42 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %43 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %44 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %43, i32 0, i32 8
  %45 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %46 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %49 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @q6v5_xfer_mem_ownership(%struct.q6v5* %42, i32* %44, i32 0, i32 %47, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %56 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %41
  %60 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %61 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %63 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  store i32 0, i32* %2, align 4
  br label %80

64:                                               ; preds = %36, %26
  %65 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %66 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %67 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %66, i32 0, i32 3
  %68 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %69 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %72 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @q6v5_xfer_mem_ownership(%struct.q6v5* %65, i32* %67, i32 0, i32 %70, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @WARN_ON(i32 %75)
  %77 = load %struct.q6v5*, %struct.q6v5** %4, align 8
  %78 = call i32 @q6v5_mba_reclaim(%struct.q6v5* %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %64, %59, %15
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @q6v5_mba_load(%struct.q6v5*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @q6v5_mpss_load(%struct.q6v5*) #1

declare dso_local i32 @qcom_q6v5_wait_for_start(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @q6v5_xfer_mem_ownership(%struct.q6v5*, i32*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @q6v5_mba_reclaim(%struct.q6v5*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
