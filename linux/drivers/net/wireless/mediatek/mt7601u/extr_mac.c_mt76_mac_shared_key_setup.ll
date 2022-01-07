; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_shared_key_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_shared_key_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.ieee80211_key_conf = type { i32 }

@MT_CIPHER_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT_SKEY_MODE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76_mac_shared_key_setup(%struct.mt7601u_dev* %0, i32 %1, i32 %2, %struct.ieee80211_key_conf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7601u_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %9, align 8
  %13 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %15 = call i32 @mt76_mac_get_key_info(%struct.ieee80211_key_conf* %13, i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MT_CIPHER_NONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %21 = icmp ne %struct.ieee80211_key_conf* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %60

25:                                               ; preds = %19, %4
  %26 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @trace_set_shared_key(%struct.mt7601u_dev* %26, i32 %27, i32 %28)
  %30 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @MT_SKEY(i32 %31, i32 %32)
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %35 = call i32 @mt7601u_wr_copy(%struct.mt7601u_dev* %30, i32 %33, i32* %34, i32 128)
  %36 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @MT_SKEY_MODE(i32 %37)
  %39 = call i32 @mt76_rr(%struct.mt7601u_dev* %36, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* @MT_SKEY_MODE_MASK, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @MT_SKEY_MODE_SHIFT(i32 %41, i32 %42)
  %44 = shl i32 %40, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @MT_SKEY_MODE_SHIFT(i32 %49, i32 %50)
  %52 = shl i32 %48, %51
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @MT_SKEY_MODE(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @mt76_wr(%struct.mt7601u_dev* %55, i32 %57, i32 %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %25, %22
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @mt76_mac_get_key_info(%struct.ieee80211_key_conf*, i32*) #1

declare dso_local i32 @trace_set_shared_key(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_wr_copy(%struct.mt7601u_dev*, i32, i32*, i32) #1

declare dso_local i32 @MT_SKEY(i32, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @MT_SKEY_MODE(i32) #1

declare dso_local i32 @MT_SKEY_MODE_SHIFT(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7601u_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
