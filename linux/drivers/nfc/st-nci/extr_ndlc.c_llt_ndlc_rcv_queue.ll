; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_llt_ndlc_rcv_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_llt_ndlc_rcv_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llt_ndlc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"rcvQlen=%d\0A\00", align 1
@PCB_TYPE_MASK = common dso_local global i32 0, align 4
@PCB_TYPE_SUPERVISOR = common dso_local global i32 0, align 4
@PCB_SYNC_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NDLC_TIMER_T1 = common dso_local global i32 0, align 4
@NDLC_TIMER_T1_WAIT = common dso_local global i32 0, align 4
@PCB_TYPE_DATAFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llt_ndlc*)* @llt_ndlc_rcv_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llt_ndlc_rcv_queue(%struct.llt_ndlc* %0) #0 {
  %2 = alloca %struct.llt_ndlc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.llt_ndlc* %0, %struct.llt_ndlc** %2, align 8
  %6 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %7 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %13 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %11, %1
  br label %18

18:                                               ; preds = %106, %17
  %19 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %20 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %19, i32 0, i32 6
  %21 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_2__* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %3, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %107

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = call i32 @skb_pull(%struct.sk_buff* %29, i32 1)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PCB_TYPE_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @PCB_TYPE_SUPERVISOR, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %90

36:                                               ; preds = %23
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @PCB_SYNC_MASK, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %86 [
    i32 130, label %40
    i32 129, label %56
    i32 128, label %73
  ]

40:                                               ; preds = %36
  %41 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %42 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %41, i32 0, i32 5
  %43 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_2__* %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  %46 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %47 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %46, i32 0, i32 3
  %48 = call i32 @del_timer_sync(i32* %47)
  %49 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %50 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %49, i32 0, i32 4
  %51 = call i32 @del_timer_sync(i32* %50)
  %52 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %53 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %55 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %89

56:                                               ; preds = %36
  %57 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %58 = call i32 @llt_ndlc_requeue_data_pending(%struct.llt_ndlc* %57)
  %59 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %60 = call i32 @llt_ndlc_send_queue(%struct.llt_ndlc* %59)
  %61 = load i64, i64* @jiffies, align 8
  store i64 %61, i64* %5, align 8
  %62 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %63 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %65 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %64, i32 0, i32 3
  %66 = load i64, i64* %5, align 8
  %67 = load i32, i32* @NDLC_TIMER_T1, align 4
  %68 = call i32 @msecs_to_jiffies(i32 %67)
  %69 = sext i32 %68 to i64
  %70 = add i64 %66, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @mod_timer(i32* %65, i32 %71)
  br label %89

73:                                               ; preds = %36
  %74 = load i64, i64* @jiffies, align 8
  store i64 %74, i64* %5, align 8
  %75 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %76 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %78 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %77, i32 0, i32 3
  %79 = load i64, i64* %5, align 8
  %80 = load i32, i32* @NDLC_TIMER_T1_WAIT, align 4
  %81 = call i32 @msecs_to_jiffies(i32 %80)
  %82 = sext i32 %81 to i64
  %83 = add i64 %79, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @mod_timer(i32* %78, i32 %84)
  br label %89

86:                                               ; preds = %36
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  br label %89

89:                                               ; preds = %86, %73, %56, %40
  br label %106

90:                                               ; preds = %23
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @PCB_TYPE_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @PCB_TYPE_DATAFRAME, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %98 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %101 = call i32 @nci_recv_frame(i32 %99, %struct.sk_buff* %100)
  br label %105

102:                                              ; preds = %90
  %103 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %104 = call i32 @kfree_skb(%struct.sk_buff* %103)
  br label %105

105:                                              ; preds = %102, %96
  br label %106

106:                                              ; preds = %105, %89
  br label %18

107:                                              ; preds = %18
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_2__*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @llt_ndlc_requeue_data_pending(%struct.llt_ndlc*) #1

declare dso_local i32 @llt_ndlc_send_queue(%struct.llt_ndlc*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @nci_recv_frame(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
