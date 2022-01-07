; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ser-gigaset.c_flush_send_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ser-gigaset.c_flush_send_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { %struct.TYPE_2__*, i32, i64, i64, i32*, %struct.cmdbuf_t* }
%struct.TYPE_2__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.cmdbuf_t = type { i64, %struct.cmdbuf_t* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardstate*)* @flush_send_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_send_queue(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.cmdbuf_t*, align 8
  %5 = alloca i64, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %6 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %7 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  br label %10

10:                                               ; preds = %30, %1
  %11 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %12 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %11, i32 0, i32 5
  %13 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %12, align 8
  store %struct.cmdbuf_t* %13, %struct.cmdbuf_t** %4, align 8
  %14 = icmp ne %struct.cmdbuf_t* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %17 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %16, i32 0, i32 1
  %18 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %17, align 8
  %19 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %20 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %19, i32 0, i32 5
  store %struct.cmdbuf_t* %18, %struct.cmdbuf_t** %20, align 8
  %21 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %22 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %27 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @tasklet_schedule(i64 %28)
  br label %30

30:                                               ; preds = %25, %15
  %31 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %32 = call i32 @kfree(%struct.cmdbuf_t* %31)
  br label %10

33:                                               ; preds = %10
  %34 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %35 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %34, i32 0, i32 4
  store i32* null, i32** %35, align 8
  %36 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %37 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %36, i32 0, i32 5
  store %struct.cmdbuf_t* null, %struct.cmdbuf_t** %37, align 8
  %38 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %39 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %41 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %43 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %42, i32 0, i32 1
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %47 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.sk_buff*, %struct.sk_buff** %49, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %33
  %53 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %54 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  %58 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %52, %33
  br label %60

60:                                               ; preds = %67, %59
  %61 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %62 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call %struct.sk_buff* @skb_dequeue(i32* %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %3, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %68)
  br label %60

70:                                               ; preds = %60
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i64) #1

declare dso_local i32 @kfree(%struct.cmdbuf_t*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
