; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cxgb4_lld_info }
%struct.cxgb4_lld_info = type { i32 }
%struct.sk_buff = type { i32 }

@SKCBF_RX_LRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*, %struct.sk_buff*)* @cxgbit_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_rx_skb(%struct.cxgbit_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbit_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgb4_lld_info*, align 8
  %6 = alloca i32, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %8 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.cxgb4_lld_info* %11, %struct.cxgb4_lld_info** %5, align 8
  store i32 -1, i32* %6, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @cxgbit_skcb_flags(%struct.sk_buff* %12)
  %14 = load i32, i32* @SKCBF_RX_LRO, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %5, align 8
  %20 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @is_t5(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @cxgbit_rx_lro_skb(%struct.cxgbit_sock* %25, %struct.sk_buff* %26)
  store i32 %27, i32* %6, align 4
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @cxgbit_process_lro_skb(%struct.cxgbit_sock* %29, %struct.sk_buff* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @__kfree_skb(%struct.sk_buff* %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cxgbit_skcb_flags(%struct.sk_buff*) #1

declare dso_local i64 @is_t5(i32) #1

declare dso_local i32 @cxgbit_rx_lro_skb(%struct.cxgbit_sock*, %struct.sk_buff*) #1

declare dso_local i32 @cxgbit_process_lro_skb(%struct.cxgbit_sock*, %struct.sk_buff*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
