; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_add_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_add_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.cfg80211_beacon_data = type { i64, i32, i64, i32 }
%struct.wid = type { i32*, i64, i32, i32 }

@WID_ADD_BEACON = common dso_local global i32 0, align 4
@WID_BIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to send add beacon\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_add_beacon(%struct.wilc_vif* %0, i64 %1, i64 %2, %struct.cfg80211_beacon_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wilc_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cfg80211_beacon_data*, align 8
  %10 = alloca %struct.wid, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.cfg80211_beacon_data* %3, %struct.cfg80211_beacon_data** %9, align 8
  %13 = load i32, i32* @WID_ADD_BEACON, align 4
  %14 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @WID_BIN, align 4
  %16 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %9, align 8
  %18 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %9, align 8
  %21 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = add nsw i64 %23, 16
  %25 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kzalloc(i64 %27, i32 %28)
  %30 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 0
  store i32* %29, i32** %30, align 8
  %31 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %112

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %12, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @put_unaligned_le32(i64 %40, i32* %41)
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32* %44, i32** %12, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @put_unaligned_le32(i64 %45, i32* %46)
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32* %49, i32** %12, align 8
  %50 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %9, align 8
  %51 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @put_unaligned_le32(i64 %52, i32* %53)
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32* %56, i32** %12, align 8
  %57 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %9, align 8
  %58 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %37
  %62 = load i32*, i32** %12, align 8
  %63 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %9, align 8
  %64 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %9, align 8
  %67 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @memcpy(i32* %62, i32 %65, i64 %68)
  br label %70

70:                                               ; preds = %61, %37
  %71 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %9, align 8
  %72 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 %73
  store i32* %75, i32** %12, align 8
  %76 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %9, align 8
  %77 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @put_unaligned_le32(i64 %78, i32* %79)
  %81 = load i32*, i32** %12, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32* %82, i32** %12, align 8
  %83 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %9, align 8
  %84 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %70
  %88 = load i32*, i32** %12, align 8
  %89 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %9, align 8
  %90 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %9, align 8
  %93 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @memcpy(i32* %88, i32 %91, i64 %94)
  br label %96

96:                                               ; preds = %87, %70
  %97 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %98 = load i32, i32* @WILC_SET_CFG, align 4
  %99 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %97, i32 %98, %struct.wid* %10, i32 1)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %104 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @netdev_err(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %107

107:                                              ; preds = %102, %96
  %108 = getelementptr inbounds %struct.wid, %struct.wid* %10, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @kfree(i32* %109)
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %107, %34
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @put_unaligned_le32(i64, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
