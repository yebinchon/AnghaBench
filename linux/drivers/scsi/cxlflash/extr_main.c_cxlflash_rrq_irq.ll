; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_cxlflash_rrq_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_cxlflash_rrq_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwq = type { i32, i32, i32, %struct.afu* }
%struct.afu = type { i32 }

@doneq = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cxlflash_rrq_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxlflash_rrq_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hwq*, align 8
  %7 = alloca %struct.afu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.hwq*
  store %struct.hwq* %11, %struct.hwq** %6, align 8
  %12 = load %struct.hwq*, %struct.hwq** %6, align 8
  %13 = getelementptr inbounds %struct.hwq, %struct.hwq* %12, i32 0, i32 3
  %14 = load %struct.afu*, %struct.afu** %13, align 8
  store %struct.afu* %14, %struct.afu** %7, align 8
  %15 = load i32, i32* @doneq, align 4
  %16 = call i32 @LIST_HEAD(i32 %15)
  store i32 0, i32* %9, align 4
  %17 = load %struct.hwq*, %struct.hwq** %6, align 8
  %18 = getelementptr inbounds %struct.hwq, %struct.hwq* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.hwq*, %struct.hwq** %6, align 8
  %22 = getelementptr inbounds %struct.hwq, %struct.hwq* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.hwq*, %struct.hwq** %6, align 8
  %27 = getelementptr inbounds %struct.hwq, %struct.hwq* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %2
  %32 = load %struct.afu*, %struct.afu** %7, align 8
  %33 = call i64 @afu_is_irqpoll_enabled(%struct.afu* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.hwq*, %struct.hwq** %6, align 8
  %37 = getelementptr inbounds %struct.hwq, %struct.hwq* %36, i32 0, i32 1
  %38 = call i32 @irq_poll_sched(i32* %37)
  %39 = load %struct.hwq*, %struct.hwq** %6, align 8
  %40 = getelementptr inbounds %struct.hwq, %struct.hwq* %39, i32 0, i32 0
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %31
  %45 = load %struct.hwq*, %struct.hwq** %6, align 8
  %46 = call i32 @process_hrrq(%struct.hwq* %45, i32* @doneq, i32 -1)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.hwq*, %struct.hwq** %6, align 8
  %48 = getelementptr inbounds %struct.hwq, %struct.hwq* %47, i32 0, i32 0
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @IRQ_NONE, align 4
  store i32 %54, i32* %3, align 4
  br label %58

55:                                               ; preds = %44
  %56 = call i32 @process_cmd_doneq(i32* @doneq)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %53, %35, %25
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @afu_is_irqpoll_enabled(%struct.afu*) #1

declare dso_local i32 @irq_poll_sched(i32*) #1

declare dso_local i32 @process_hrrq(%struct.hwq*, i32*, i32) #1

declare dso_local i32 @process_cmd_doneq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
