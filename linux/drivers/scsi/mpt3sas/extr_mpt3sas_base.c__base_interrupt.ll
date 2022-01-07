; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_base.c__base_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter_reply_queue = type { i64, %struct.MPT3SAS_ADAPTER* }
%struct.MPT3SAS_ADAPTER = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @_base_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_base_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.adapter_reply_queue*, align 8
  %7 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.adapter_reply_queue*
  store %struct.adapter_reply_queue* %9, %struct.adapter_reply_queue** %6, align 8
  %10 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %6, align 8
  %11 = getelementptr inbounds %struct.adapter_reply_queue, %struct.adapter_reply_queue* %10, i32 0, i32 1
  %12 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %11, align 8
  store %struct.MPT3SAS_ADAPTER* %12, %struct.MPT3SAS_ADAPTER** %7, align 8
  %13 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %7, align 8
  %14 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %6, align 8
  %21 = getelementptr inbounds %struct.adapter_reply_queue, %struct.adapter_reply_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %19
  %27 = load %struct.adapter_reply_queue*, %struct.adapter_reply_queue** %6, align 8
  %28 = call i64 @_base_process_reply_queue(%struct.adapter_reply_queue* %27)
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @IRQ_NONE, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %24, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @_base_process_reply_queue(%struct.adapter_reply_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
