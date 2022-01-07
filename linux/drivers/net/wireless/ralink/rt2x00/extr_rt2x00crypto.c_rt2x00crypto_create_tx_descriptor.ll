; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00crypto.c_rt2x00crypto_create_tx_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00crypto.c_rt2x00crypto_create_tx_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.txentry_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32, i32, i32 }

@ENTRY_TXD_ENCRYPT = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_PAIRWISE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@ENTRY_TXD_ENCRYPT_MMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00crypto_create_tx_descriptor(%struct.rt2x00_dev* %0, %struct.sk_buff* %1, %struct.txentry_desc* %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.txentry_desc*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.txentry_desc* %2, %struct.txentry_desc** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %9)
  store %struct.ieee80211_tx_info* %10, %struct.ieee80211_tx_info** %7, align 8
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %13, align 8
  store %struct.ieee80211_key_conf* %14, %struct.ieee80211_key_conf** %8, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %16 = call i32 @rt2x00_has_cap_hw_crypto(%struct.rt2x00_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %20 = icmp ne %struct.ieee80211_key_conf* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %3
  br label %81

22:                                               ; preds = %18
  %23 = load i32, i32* @ENTRY_TXD_ENCRYPT, align 4
  %24 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %25 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %24, i32 0, i32 0
  %26 = call i32 @__set_bit(i32 %23, i32* %25)
  %27 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %28 = call i32 @rt2x00crypto_key_to_cipher(%struct.ieee80211_key_conf* %27)
  %29 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %30 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load i32, i32* @ENTRY_TXD_ENCRYPT_PAIRWISE, align 4
  %39 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %40 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %39, i32 0, i32 0
  %41 = call i32 @__set_bit(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %37, %22
  %43 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %47 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %49 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %52 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %57 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %59 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %42
  %65 = load i32, i32* @ENTRY_TXD_ENCRYPT_IV, align 4
  %66 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %67 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %66, i32 0, i32 0
  %68 = call i32 @__set_bit(i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %64, %42
  %70 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @ENTRY_TXD_ENCRYPT_MMIC, align 4
  %78 = load %struct.txentry_desc*, %struct.txentry_desc** %6, align 8
  %79 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %78, i32 0, i32 0
  %80 = call i32 @__set_bit(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %21, %76, %69
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @rt2x00_has_cap_hw_crypto(%struct.rt2x00_dev*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00crypto_key_to_cipher(%struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
