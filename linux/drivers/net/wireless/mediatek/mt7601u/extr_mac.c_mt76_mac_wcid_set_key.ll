; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_wcid_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_wcid_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32 }

@MT_CIPHER_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT_CIPHER_TKIP = common dso_local global i32 0, align 4
@MT_WCID_ATTR_PKEY_MODE = common dso_local global i32 0, align 4
@MT_WCID_ATTR_PKEY_MODE_EXT = common dso_local global i32 0, align 4
@MT_WCID_ATTR_PAIRWISE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76_mac_wcid_set_key(%struct.mt7601u_dev* %0, i32 %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7601u_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_key_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %7, align 8
  %12 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %14 = call i32 @mt76_mac_get_key_info(%struct.ieee80211_key_conf* %12, i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MT_CIPHER_NONE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %20 = icmp ne %struct.ieee80211_key_conf* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %109

24:                                               ; preds = %18, %3
  %25 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @trace_set_key(%struct.mt7601u_dev* %25, i32 %26)
  %28 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @MT_WCID_KEY(i32 %29)
  %31 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %32 = call i32 @mt7601u_wr_copy(%struct.mt7601u_dev* %28, i32 %30, i32* %31, i32 128)
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %34 = call i32 @memset(i32* %33, i32 0, i32 32)
  %35 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %36 = icmp ne %struct.ieee80211_key_conf* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %24
  %38 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 6
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @MT_CIPHER_TKIP, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %48 = load i32, i32* %47, align 16
  %49 = or i32 %48, 1
  store i32 %49, i32* %47, align 16
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, 32
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %37
  br label %54

54:                                               ; preds = %53, %24
  %55 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @MT_WCID_IV(i32 %56)
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %59 = call i32 @mt7601u_wr_copy(%struct.mt7601u_dev* %55, i32 %57, i32* %58, i32 32)
  %60 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @MT_WCID_ATTR(i32 %61)
  %63 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %60, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @MT_WCID_ATTR_PKEY_MODE, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* @MT_WCID_ATTR_PKEY_MODE_EXT, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* @MT_WCID_ATTR_PKEY_MODE, align 4
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 7
  %74 = call i32 @FIELD_PREP(i32 %71, i32 %73)
  %75 = load i32, i32* @MT_WCID_ATTR_PKEY_MODE_EXT, align 4
  %76 = load i32, i32* %8, align 4
  %77 = lshr i32 %76, 3
  %78 = call i32 @FIELD_PREP(i32 %75, i32 %77)
  %79 = or i32 %74, %78
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* @MT_WCID_ATTR_PAIRWISE, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @MT_WCID_ATTR_PAIRWISE, align 4
  %87 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %88 = icmp ne %struct.ieee80211_key_conf* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %54
  %90 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %89, %54
  %97 = phi i1 [ false, %54 ], [ %95, %89 ]
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = mul nsw i32 %86, %100
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @MT_WCID_ATTR(i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %104, i32 %106, i32 %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %96, %21
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @mt76_mac_get_key_info(%struct.ieee80211_key_conf*, i32*) #1

declare dso_local i32 @trace_set_key(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt7601u_wr_copy(%struct.mt7601u_dev*, i32, i32*, i32) #1

declare dso_local i32 @MT_WCID_KEY(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MT_WCID_IV(i32) #1

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @MT_WCID_ATTR(i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
