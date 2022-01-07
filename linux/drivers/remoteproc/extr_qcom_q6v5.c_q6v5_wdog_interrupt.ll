; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5.c_q6v5_wdog_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5.c_q6v5_wdog_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_q6v5 = type { i32, i32, i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@QCOM_SMEM_HOST_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"watchdog received: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"watchdog without message\0A\00", align 1
@RPROC_WATCHDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @q6v5_wdog_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_wdog_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qcom_q6v5*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.qcom_q6v5*
  store %struct.qcom_q6v5* %10, %struct.qcom_q6v5** %6, align 8
  %11 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %6, align 8
  %12 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %6, align 8
  %17 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %16, i32 0, i32 3
  %18 = call i32 @complete(i32* %17)
  %19 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load i32, i32* @QCOM_SMEM_HOST_ANY, align 4
  %22 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %6, align 8
  %23 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @qcom_smem_get(i32 %21, i32 %24, i64* %7)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @IS_ERR(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %6, align 8
  %40 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %49

44:                                               ; preds = %32, %29, %20
  %45 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %6, align 8
  %46 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.qcom_q6v5*, %struct.qcom_q6v5** %6, align 8
  %51 = getelementptr inbounds %struct.qcom_q6v5, %struct.qcom_q6v5* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RPROC_WATCHDOG, align 4
  %54 = call i32 @rproc_report_crash(i32 %52, i32 %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @complete(i32*) #1

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
