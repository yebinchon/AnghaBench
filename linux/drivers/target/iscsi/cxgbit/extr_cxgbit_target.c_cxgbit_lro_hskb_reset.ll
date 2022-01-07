; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_lro_hskb_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_lro_hskb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { %struct.sk_buff* }
%struct.sk_buff = type { i64, i32, i64, i32 }
%struct.skb_shared_info = type { i64, i32* }

@LRO_SKB_MIN_HEADROOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbit_sock*)* @cxgbit_lro_hskb_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_lro_hskb_reset(%struct.cxgbit_sock* %0) #0 {
  %2 = alloca %struct.cxgbit_sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.skb_shared_info*, align 8
  %5 = alloca i64, align 8
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %2, align 8
  %6 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %2, align 8
  %7 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %6, i32 0, i32 0
  %8 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %9)
  store %struct.skb_shared_info* %10, %struct.skb_shared_info** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LRO_SKB_MIN_HEADROOM, align 4
  %15 = call i32 @memset(i32 %13, i32 0, i32 %14)
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %30, %1
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.skb_shared_info*, %struct.skb_shared_info** %4, align 8
  %19 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.skb_shared_info*, %struct.skb_shared_info** %4, align 8
  %24 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = call i32 @skb_frag_page(i32* %27)
  %29 = call i32 @put_page(i32 %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %16

33:                                               ; preds = %16
  %34 = load %struct.skb_shared_info*, %struct.skb_shared_info** %4, align 8
  %35 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  ret void
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
