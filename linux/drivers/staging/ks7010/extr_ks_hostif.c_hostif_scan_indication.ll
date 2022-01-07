; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_scan_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_scan_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.ap_info = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"scan_ind_count = %d\0A\00", align 1
@IEEE80211_STYPE_PROBE_RESP = common dso_local global i64 0, align 8
@LOCAL_APLIST_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c" scan_ind_count=%d :: aplist.size=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c" count over :: scan_ind_count=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_scan_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_scan_indication(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ap_info*, align 8
  %5 = alloca i32*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %6 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %7 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %10 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %14 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ap_info*
  store %struct.ap_info* %16, %struct.ap_info** %4, align 8
  %17 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %18 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %64, %21
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %25 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %22
  %30 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %31 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %5, align 8
  %39 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %40 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @ether_addr_equal(i32 %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %64

46:                                               ; preds = %29
  %47 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %48 = getelementptr inbounds %struct.ap_info, %struct.ap_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IEEE80211_STYPE_PROBE_RESP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %54 = load %struct.ap_info*, %struct.ap_info** %4, align 8
  %55 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %56 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = call i32 @get_ap_information(%struct.ks_wlan_private* %53, %struct.ap_info* %54, %struct.TYPE_4__* %61)
  br label %63

63:                                               ; preds = %52, %46
  br label %121

64:                                               ; preds = %45
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %22

67:                                               ; preds = %22
  br label %68

68:                                               ; preds = %67, %1
  %69 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %70 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %74 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @LOCAL_APLIST_MAX, align 4
  %77 = add nsw i32 %76, 1
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %68
  %80 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %81 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %84 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %87 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %89)
  %91 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %92 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %93 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.ap_info*
  %96 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %97 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %101 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %104
  %106 = call i32 @get_ap_information(%struct.ks_wlan_private* %91, %struct.ap_info* %95, %struct.TYPE_4__* %105)
  %107 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %108 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %111 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  br label %121

113:                                              ; preds = %68
  %114 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %115 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %118 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %63, %113, %79
  ret void
}

declare dso_local i32 @netdev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @get_ap_information(%struct.ks_wlan_private*, %struct.ap_info*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
