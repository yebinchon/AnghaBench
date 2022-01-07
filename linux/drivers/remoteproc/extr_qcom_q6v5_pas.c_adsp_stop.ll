; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_pas.c_adsp_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_pas.c_adsp_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i64 }
%struct.qcom_adsp = type { i32, i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"timed out on wait\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to shutdown: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @adsp_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_stop(%struct.rproc* %0) #0 {
  %2 = alloca %struct.rproc*, align 8
  %3 = alloca %struct.qcom_adsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %2, align 8
  %6 = load %struct.rproc*, %struct.rproc** %2, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.qcom_adsp*
  store %struct.qcom_adsp* %9, %struct.qcom_adsp** %3, align 8
  %10 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %11 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %10, i32 0, i32 0
  %12 = call i32 @qcom_q6v5_request_stop(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ETIMEDOUT, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %19 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %24 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @qcom_scm_pas_shutdown(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %31 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %37 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %36, i32 0, i32 0
  %38 = call i32 @qcom_q6v5_unprepare(i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.qcom_adsp*, %struct.qcom_adsp** %3, align 8
  %43 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %42, i32 0, i32 0
  %44 = call i32 @qcom_pas_handover(i32* %43)
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @qcom_q6v5_request_stop(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @qcom_scm_pas_shutdown(i32) #1

declare dso_local i32 @qcom_q6v5_unprepare(i32*) #1

declare dso_local i32 @qcom_pas_handover(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
