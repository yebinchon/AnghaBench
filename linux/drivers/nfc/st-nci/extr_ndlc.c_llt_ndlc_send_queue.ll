; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_llt_ndlc_send_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_llt_ndlc_send_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llt_ndlc = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, %struct.sk_buff*)* }
%struct.sk_buff = type { i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"sendQlen=%d unackQlen=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ndlc frame written\00", align 1
@jiffies = common dso_local global i64 0, align 8
@NDLC_TIMER_T1 = common dso_local global i32 0, align 4
@NDLC_TIMER_T2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llt_ndlc*)* @llt_ndlc_send_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llt_ndlc_send_queue(%struct.llt_ndlc* %0) #0 {
  %2 = alloca %struct.llt_ndlc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.llt_ndlc* %0, %struct.llt_ndlc** %2, align 8
  %6 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %7 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %6, i32 0, i32 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %13 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %12, i32 0, i32 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %17 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %19)
  br label %21

21:                                               ; preds = %11, %1
  br label %22

22:                                               ; preds = %50, %21
  %23 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %24 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %22
  %29 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %30 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %29, i32 0, i32 8
  %31 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_6__* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %3, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call i32 @NDLC_DUMP_SKB(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %32)
  %34 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %35 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %34, i32 0, i32 7
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %37, align 8
  %39 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %40 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i32 %38(i32 %41, %struct.sk_buff* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %28
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %49 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %79

50:                                               ; preds = %28
  %51 = load i64, i64* @jiffies, align 8
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 %52, i64* %56, align 8
  %57 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %58 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %57, i32 0, i32 5
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = call i32 @skb_queue_tail(%struct.TYPE_5__* %58, %struct.sk_buff* %59)
  %61 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %62 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %64 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %63, i32 0, i32 4
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* @NDLC_TIMER_T1, align 4
  %67 = call i64 @msecs_to_jiffies(i32 %66)
  %68 = add i64 %65, %67
  %69 = call i32 @mod_timer(i32* %64, i64 %68)
  %70 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %71 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  %72 = load %struct.llt_ndlc*, %struct.llt_ndlc** %2, align 8
  %73 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %72, i32 0, i32 3
  %74 = load i64, i64* %5, align 8
  %75 = load i32, i32* @NDLC_TIMER_T2, align 4
  %76 = call i64 @msecs_to_jiffies(i32 %75)
  %77 = add i64 %74, %76
  %78 = call i32 @mod_timer(i32* %73, i64 %77)
  br label %22

79:                                               ; preds = %46, %22
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_6__*) #1

declare dso_local i32 @NDLC_DUMP_SKB(i8*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(%struct.TYPE_5__*, %struct.sk_buff*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
