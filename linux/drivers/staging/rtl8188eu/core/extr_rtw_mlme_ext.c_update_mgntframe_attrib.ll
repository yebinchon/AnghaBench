; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_update_mgntframe_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_update_mgntframe_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i32, i32 }
%struct.pkt_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@WIRELESS_11B = common dso_local global i32 0, align 4
@_NO_PRIVACY_ = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_mgntframe_attrib(%struct.adapter* %0, %struct.pkt_attrib* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.pkt_attrib*, align 8
  %5 = alloca %struct.mlme_ext_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.pkt_attrib* %1, %struct.pkt_attrib** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.mlme_ext_priv* %7, %struct.mlme_ext_priv** %5, align 8
  %8 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %9 = bitcast %struct.pkt_attrib* %8 to i32*
  %10 = call i32 @memset(i32* %9, i32 0, i32 72)
  %11 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %12 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %11, i32 0, i32 0
  store i32 24, i32* %12, align 8
  %13 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %14 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %16 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %15, i32 0, i32 2
  store i32 7, i32* %16, align 8
  %17 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %18 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %17, i32 0, i32 15
  store i64 0, i64* %18, align 8
  %19 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %20 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %19, i32 0, i32 3
  store i32 18, i32* %20, align 4
  %21 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %22 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %21, i32 0, i32 14
  store i64 0, i64* %22, align 8
  %23 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %24 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WIRELESS_11B, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %31 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %30, i32 0, i32 4
  store i32 6, i32* %31, align 8
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %34 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %33, i32 0, i32 4
  store i32 5, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @_NO_PRIVACY_, align 4
  %37 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %38 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %37, i32 0, i32 13
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %40 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %39, i32 0, i32 5
  store i32 0, i32* %40, align 4
  %41 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %42 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %41, i32 0, i32 6
  store i32 0, i32* %42, align 8
  %43 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %44 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %43, i32 0, i32 7
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %46 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %47 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  %49 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %50 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %49, i32 0, i32 11
  store i32 %48, i32* %50, align 4
  %51 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %52 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %51, i32 0, i32 8
  store i32 0, i32* %52, align 8
  %53 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %54 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %57 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 8
  %58 = load %struct.pkt_attrib*, %struct.pkt_attrib** %4, align 8
  %59 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %58, i32 0, i32 9
  store i32 1, i32* %59, align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
