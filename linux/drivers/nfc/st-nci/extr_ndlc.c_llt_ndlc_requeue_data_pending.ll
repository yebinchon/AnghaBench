; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_llt_ndlc_requeue_data_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_llt_ndlc_requeue_data_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llt_ndlc = type { i32, i32 }
%struct.sk_buff = type { i32* }

@PCB_TYPE_MASK = common dso_local global i32 0, align 4
@PCB_SUPERVISOR_RETRANSMIT_MASK = common dso_local global i32 0, align 4
@PCB_SUPERVISOR_RETRANSMIT_YES = common dso_local global i32 0, align 4
@PCB_DATAFRAME_RETRANSMIT_MASK = common dso_local global i32 0, align 4
@PCB_DATAFRAME_RETRANSMIT_YES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"UNKNOWN Packet Control Byte=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llt_ndlc*)* @llt_ndlc_requeue_data_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llt_ndlc_requeue_data_pending(%struct.llt_ndlc* %0) #0 {
  %2 = alloca %struct.llt_ndlc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.llt_ndlc* %0, %struct.llt_ndlc** %2, align 8
  br label %5

5:                                                ; preds = %46, %41, %1
  %6 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %7 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %6, i32 0, i32 1
  %8 = call %struct.sk_buff* @skb_dequeue_tail(i32* %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %10, label %51

10:                                               ; preds = %5
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PCB_TYPE_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %41 [
    i32 128, label %19
    i32 129, label %30
  ]

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PCB_SUPERVISOR_RETRANSMIT_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load i32, i32* @PCB_SUPERVISOR_RETRANSMIT_YES, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %25, i32* %29, align 4
  br label %46

30:                                               ; preds = %10
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PCB_DATAFRAME_RETRANSMIT_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* @PCB_DATAFRAME_RETRANSMIT_YES, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  br label %46

41:                                               ; preds = %10
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  br label %5

46:                                               ; preds = %30, %19
  %47 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %48 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %47, i32 0, i32 0
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @skb_queue_head(i32* %48, %struct.sk_buff* %49)
  br label %5

51:                                               ; preds = %5
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue_tail(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
