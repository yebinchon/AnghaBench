; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_update_attrib_phy_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_update_attrib_phy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i64 }
%struct.pkt_attrib = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.sta_info = type { i64, i64, i64, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.pkt_attrib*, %struct.sta_info*)* @update_attrib_phy_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_attrib_phy_info(%struct.adapter* %0, %struct.pkt_attrib* %1, %struct.sta_info* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.pkt_attrib*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.mlme_ext_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.pkt_attrib* %1, %struct.pkt_attrib** %5, align 8
  store %struct.sta_info* %2, %struct.sta_info** %6, align 8
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  store %struct.mlme_ext_priv* %9, %struct.mlme_ext_priv** %7, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %14 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %13, i32 0, i32 16
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %19 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %18, i32 0, i32 15
  store i32 %17, i32* %19, align 8
  %20 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %21 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %20, i32 0, i32 14
  store i64 0, i64* %21, align 8
  %22 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %23 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %22, i32 0, i32 13
  store i64 0, i64* %23, align 8
  %24 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %25 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %24, i32 0, i32 12
  store i64 0, i64* %25, align 8
  %26 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %27 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %32 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %37 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %39 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %3
  %46 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %7, align 8
  %47 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %50 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %57

51:                                               ; preds = %3
  %52 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %56 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %59 = call i32 @query_ra_short_GI(%struct.sta_info* %58)
  %60 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %61 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 4
  %62 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %66 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %71 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %73 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %77 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %79 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %83 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %85 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  %86 = load %struct.adapter*, %struct.adapter** %4, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 255
  br i1 %89, label %90, label %96

90:                                               ; preds = %57
  %91 = load %struct.adapter*, %struct.adapter** %4, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %95 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %103

96:                                               ; preds = %57
  %97 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %98 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %102 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %96, %90
  %104 = load %struct.pkt_attrib*, %struct.pkt_attrib** %5, align 8
  %105 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %104, i32 0, i32 3
  store i32 0, i32* %105, align 4
  ret void
}

declare dso_local i32 @query_ra_short_GI(%struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
