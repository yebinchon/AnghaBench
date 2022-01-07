; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_lro_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_lro_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_lro_mgr = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.cxgbit_lro_cb = type { %struct.cxgbit_sock* }
%struct.cxgbit_sock = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_lro_mgr*, %struct.sk_buff*)* @cxgbit_lro_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_lro_flush(%struct.t4_lro_mgr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.t4_lro_mgr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbit_lro_cb*, align 8
  %6 = alloca %struct.cxgbit_sock*, align 8
  store %struct.t4_lro_mgr* %0, %struct.t4_lro_mgr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.cxgbit_lro_cb* @cxgbit_skb_lro_cb(%struct.sk_buff* %7)
  store %struct.cxgbit_lro_cb* %8, %struct.cxgbit_lro_cb** %5, align 8
  %9 = load %struct.cxgbit_lro_cb*, %struct.cxgbit_lro_cb** %5, align 8
  %10 = getelementptr inbounds %struct.cxgbit_lro_cb, %struct.cxgbit_lro_cb* %9, i32 0, i32 0
  %11 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %10, align 8
  store %struct.cxgbit_sock* %11, %struct.cxgbit_sock** %6, align 8
  %12 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %6, align 8
  %13 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load %struct.t4_lro_mgr*, %struct.t4_lro_mgr** %3, align 8
  %16 = getelementptr inbounds %struct.t4_lro_mgr, %struct.t4_lro_mgr* %15, i32 0, i32 2
  %17 = call i32 @__skb_unlink(%struct.sk_buff* %14, i32* %16)
  %18 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @cxgbit_queue_lro_skb(%struct.cxgbit_sock* %18, %struct.sk_buff* %19)
  %21 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %6, align 8
  %22 = call i32 @cxgbit_put_csk(%struct.cxgbit_sock* %21)
  %23 = load %struct.t4_lro_mgr*, %struct.t4_lro_mgr** %3, align 8
  %24 = getelementptr inbounds %struct.t4_lro_mgr, %struct.t4_lro_mgr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.t4_lro_mgr*, %struct.t4_lro_mgr** %3, align 8
  %28 = getelementptr inbounds %struct.t4_lro_mgr, %struct.t4_lro_mgr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  ret void
}

declare dso_local %struct.cxgbit_lro_cb* @cxgbit_skb_lro_cb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @cxgbit_queue_lro_skb(%struct.cxgbit_sock*, %struct.sk_buff*) #1

declare dso_local i32 @cxgbit_put_csk(%struct.cxgbit_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
