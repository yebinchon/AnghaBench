; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00crypto.c_rt2x00crypto_tx_remove_iv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00crypto.c_rt2x00crypto_tx_remove_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.txentry_desc = type { i64, i64, i64 }
%struct.skb_frame_desc = type { i32, i32 }

@SKBDESC_IV_STRIPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00crypto_tx_remove_iv(%struct.sk_buff* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.skb_frame_desc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff* %6)
  store %struct.skb_frame_desc* %7, %struct.skb_frame_desc** %5, align 8
  %8 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %9 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %63

17:                                               ; preds = %2
  %18 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %19 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %25 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %29 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @memcpy(i32 %20, i64 %27, i64 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %36 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %43 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memmove(i64 %38, i64 %41, i64 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %48 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @skb_pull(%struct.sk_buff* %46, i64 %49)
  %51 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %52 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %55 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i32, i32* @SKBDESC_IV_STRIPPED, align 4
  %59 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %60 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
