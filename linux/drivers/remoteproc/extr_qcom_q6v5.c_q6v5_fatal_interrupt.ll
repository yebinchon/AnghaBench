; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5.c_q6v5_fatal_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5.c_q6v5_fatal_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_q6v5 = type { i32, i32, i32, i32 }

@QCOM_SMEM_HOST_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"fatal error received: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"fatal error without message\0A\00", align 1
@RPROC_FATAL_ERROR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @q6v5_fatal_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_fatal_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qcom_q6v5*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.qcom_q6v5*
  store %struct.qcom_q6v5* %9, %struct.qcom_q6v5** %5, align 8
  %10 = load i32, i32* @QCOM_SMEM_HOST_ANY, align 4
  %11 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %5, align 8
  %12 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @qcom_smem_get(i32 %10, i32 %13, i64* %6)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @IS_ERR(i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %5, align 8
  %29 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %38

33:                                               ; preds = %21, %18, %2
  %34 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %5, align 8
  %35 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %27
  %39 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %5, align 8
  %40 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %5, align 8
  %42 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RPROC_FATAL_ERROR, align 4
  %45 = call i32 @rproc_report_crash(i32 %43, i32 %44)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %46
}

declare dso_local i8* @qcom_smem_get(i32, i32, i64*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @rproc_report_crash(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
