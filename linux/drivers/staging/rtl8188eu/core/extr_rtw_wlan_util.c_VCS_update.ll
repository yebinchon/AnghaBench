; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_VCS_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_VCS_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.registry_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32 }
%struct.registry_priv = type { i32, i32 }
%struct.sta_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VCS_update(%struct.adapter* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.registry_priv*, align 8
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  store %struct.registry_priv* %9, %struct.registry_priv** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store %struct.mlme_ext_priv* %11, %struct.mlme_ext_priv** %6, align 8
  %12 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %12, i32 0, i32 0
  store %struct.mlme_ext_info* %13, %struct.mlme_ext_info** %7, align 8
  %14 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %15 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %39 [
    i32 0, label %17
    i32 1, label %22
    i32 2, label %38
  ]

17:                                               ; preds = %2
  %18 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %24 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %31 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  br label %37

32:                                               ; preds = %22
  %33 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %27
  br label %73

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %2, %38
  %40 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %41 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %46 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @BIT(i32 1)
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %44
  %52 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %53 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %60 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  br label %66

61:                                               ; preds = %51
  %62 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %65 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %56
  br label %72

67:                                               ; preds = %44, %39
  %68 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %69 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %66
  br label %73

73:                                               ; preds = %72, %37, %17
  ret void
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
