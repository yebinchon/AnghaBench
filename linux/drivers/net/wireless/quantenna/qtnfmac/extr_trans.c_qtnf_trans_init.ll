; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_trans.c_qtnf_trans_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_trans.c_qtnf_trans_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { %struct.qtnf_qlink_transport }
%struct.qtnf_qlink_transport = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i64, i32 }

@QTNF_MAX_EVENT_QUEUE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_trans_init(%struct.qtnf_bus* %0) #0 {
  %2 = alloca %struct.qtnf_bus*, align 8
  %3 = alloca %struct.qtnf_qlink_transport*, align 8
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %2, align 8
  %4 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %5 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %4, i32 0, i32 0
  store %struct.qtnf_qlink_transport* %5, %struct.qtnf_qlink_transport** %3, align 8
  %6 = load %struct.qtnf_qlink_transport*, %struct.qtnf_qlink_transport** %3, align 8
  %7 = getelementptr inbounds %struct.qtnf_qlink_transport, %struct.qtnf_qlink_transport* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  %9 = call i32 @init_completion(i32* %8)
  %10 = load %struct.qtnf_qlink_transport*, %struct.qtnf_qlink_transport** %3, align 8
  %11 = getelementptr inbounds %struct.qtnf_qlink_transport, %struct.qtnf_qlink_transport* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.qtnf_qlink_transport*, %struct.qtnf_qlink_transport** %3, align 8
  %15 = getelementptr inbounds %struct.qtnf_qlink_transport, %struct.qtnf_qlink_transport* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.qtnf_qlink_transport*, %struct.qtnf_qlink_transport** %3, align 8
  %19 = getelementptr inbounds %struct.qtnf_qlink_transport, %struct.qtnf_qlink_transport* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.qtnf_qlink_transport*, %struct.qtnf_qlink_transport** %3, align 8
  %22 = getelementptr inbounds %struct.qtnf_qlink_transport, %struct.qtnf_qlink_transport* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.qtnf_qlink_transport*, %struct.qtnf_qlink_transport** %3, align 8
  %25 = getelementptr inbounds %struct.qtnf_qlink_transport, %struct.qtnf_qlink_transport* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.qtnf_qlink_transport*, %struct.qtnf_qlink_transport** %3, align 8
  %28 = getelementptr inbounds %struct.qtnf_qlink_transport, %struct.qtnf_qlink_transport* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.qtnf_qlink_transport*, %struct.qtnf_qlink_transport** %3, align 8
  %32 = getelementptr inbounds %struct.qtnf_qlink_transport, %struct.qtnf_qlink_transport* %31, i32 0, i32 1
  %33 = call i32 @skb_queue_head_init(i32* %32)
  %34 = load i32, i32* @QTNF_MAX_EVENT_QUEUE_LEN, align 4
  %35 = load %struct.qtnf_qlink_transport*, %struct.qtnf_qlink_transport** %3, align 8
  %36 = getelementptr inbounds %struct.qtnf_qlink_transport, %struct.qtnf_qlink_transport* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
