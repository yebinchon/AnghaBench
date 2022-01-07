; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_do_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_do_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.lpfc_hba = type { i32*, i64, i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@MIN_NICE = common dso_local global i32 0, align 4
@PF_NOFREEZE = common dso_local global i32 0, align 4
@LPFC_DATA_READY = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"0433 Wakeup on signal: rc=x%x\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"0432 Worker thread stopped.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_do_work(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.lpfc_hba*
  store %struct.lpfc_hba* %6, %struct.lpfc_hba** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %8 = load i32, i32* @MIN_NICE, align 4
  %9 = call i32 @set_user_nice(%struct.TYPE_3__* %7, i32 %8)
  %10 = load i32, i32* @PF_NOFREEZE, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %45, %1
  %18 = call i64 (...) @kthread_should_stop()
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LPFC_DATA_READY, align 4
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 1
  %28 = call i64 @test_and_clear_bit(i32 %25, i64* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = call i64 (...) @kthread_should_stop()
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %30, %21
  %34 = phi i1 [ true, %21 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @wait_event_interruptible(i32 %24, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %41 = load i32, i32* @KERN_ERR, align 4
  %42 = load i32, i32* @LOG_ELS, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %48

45:                                               ; preds = %33
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %47 = call i32 @lpfc_work_done(%struct.lpfc_hba* %46)
  br label %17

48:                                               ; preds = %39, %17
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = load i32, i32* @KERN_INFO, align 4
  %53 = load i32, i32* @LOG_ELS, align 4
  %54 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @set_user_nice(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_work_done(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
