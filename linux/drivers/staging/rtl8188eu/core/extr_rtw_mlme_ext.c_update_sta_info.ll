; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_update_sta_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_update_sta_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { i32, i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }
%struct.mlme_priv = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.sta_info = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@_FW_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_sta_info(%struct.adapter* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  store %struct.mlme_priv* %9, %struct.mlme_priv** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store %struct.mlme_ext_priv* %11, %struct.mlme_ext_priv** %6, align 8
  %12 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %12, i32 0, i32 2
  store %struct.mlme_ext_info* %13, %struct.mlme_ext_info** %7, align 8
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %16 = call i32 @VCS_update(%struct.adapter* %14, %struct.sta_info* %15)
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %2
  %23 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %27 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %35 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %34, i32 0, i32 0
  %36 = call i64 @support_short_GI(%struct.adapter* %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %22
  %39 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %22
  %43 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %57

45:                                               ; preds = %2
  %46 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %47 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %53 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %56 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %45, %42
  %58 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %59 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 6
  store i32 %60, i32* %63, align 4
  %64 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %65 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  store i32 %66, i32* %69, align 4
  %70 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  store i32 0, i32* %72, align 4
  %73 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %74 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  store i32 0, i32* %75, align 4
  %76 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %77 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %57
  %82 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %83 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %57
  %85 = load i32, i32* @_FW_LINKED, align 4
  %86 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %87 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  ret void
}

declare dso_local i32 @VCS_update(%struct.adapter*, %struct.sta_info*) #1

declare dso_local i64 @support_short_GI(%struct.adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
