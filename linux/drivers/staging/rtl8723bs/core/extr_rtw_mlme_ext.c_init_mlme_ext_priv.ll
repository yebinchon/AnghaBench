; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_init_mlme_ext_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_init_mlme_ext_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv, %struct.mlme_ext_priv, %struct.registry_priv }
%struct.mlme_priv = type { i32 }
%struct.mlme_ext_priv = type { i32, i32, i32, i32, i64, i32, i32, i32, %struct.adapter*, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }
%struct.registry_priv = type { i32 }

@SURVEY_TO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_mlme_ext_priv(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.registry_priv*, align 8
  %4 = alloca %struct.mlme_ext_priv*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 2
  store %struct.registry_priv* %8, %struct.registry_priv** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  store %struct.mlme_ext_priv* %10, %struct.mlme_ext_priv** %4, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.mlme_priv* %12, %struct.mlme_priv** %5, align 8
  %13 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %13, i32 0, i32 9
  store %struct.mlme_ext_info* %14, %struct.mlme_ext_info** %6, align 8
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %16, i32 0, i32 8
  store %struct.adapter* %15, %struct.adapter** %17, align 8
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = call i32 @init_mlme_ext_priv_value(%struct.adapter* %18)
  %20 = load %struct.registry_priv*, %struct.registry_priv** %3, align 8
  %21 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %24 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = call i32 @init_mlme_ext_timer(%struct.adapter* %25)
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = call i32 @init_mlme_ap_info(%struct.adapter* %27)
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %31 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %34 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @init_channel_set(%struct.adapter* %29, i32 %32, i32 %35)
  %37 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %38 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %44 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %47 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %46, i32 0, i32 5
  %48 = call i32 @init_channel_list(%struct.adapter* %39, i32 %42, i32 %45, i32* %47)
  %49 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %50 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @SURVEY_TO, align 4
  %52 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %53 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %55 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %57 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  ret void
}

declare dso_local i32 @init_mlme_ext_priv_value(%struct.adapter*) #1

declare dso_local i32 @init_mlme_ext_timer(%struct.adapter*) #1

declare dso_local i32 @init_mlme_ap_info(%struct.adapter*) #1

declare dso_local i32 @init_channel_set(%struct.adapter*, i32, i32) #1

declare dso_local i32 @init_channel_list(%struct.adapter*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
