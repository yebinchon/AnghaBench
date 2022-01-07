; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_free_mlme_priv_ie_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_free_mlme_priv_ie_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlme_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_free_mlme_priv_ie_data(%struct.mlme_priv* %0) #0 {
  %2 = alloca %struct.mlme_priv*, align 8
  store %struct.mlme_priv* %0, %struct.mlme_priv** %2, align 8
  %3 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %4 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %3, i32 0, i32 21
  %5 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %5, i32 0, i32 20
  %7 = call i32 @rtw_buf_free(i32* %4, i32* %6)
  %8 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %8, i32 0, i32 19
  %10 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %11 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %10, i32 0, i32 18
  %12 = call i32 @rtw_buf_free(i32* %9, i32* %11)
  %13 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %14 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %13, i32 0, i32 17
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %16 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %15, i32 0, i32 16
  %17 = call i32 @rtw_free_mlme_ie_data(i32* %14, i32* %16)
  %18 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %19 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %18, i32 0, i32 15
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %21 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %20, i32 0, i32 14
  %22 = call i32 @rtw_free_mlme_ie_data(i32* %19, i32* %21)
  %23 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %24 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %23, i32 0, i32 13
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %26 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %25, i32 0, i32 12
  %27 = call i32 @rtw_free_mlme_ie_data(i32* %24, i32* %26)
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %29 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %28, i32 0, i32 11
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %31 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %30, i32 0, i32 10
  %32 = call i32 @rtw_free_mlme_ie_data(i32* %29, i32* %31)
  %33 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %34 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %33, i32 0, i32 9
  %35 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %36 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %35, i32 0, i32 8
  %37 = call i32 @rtw_free_mlme_ie_data(i32* %34, i32* %36)
  %38 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %39 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %38, i32 0, i32 7
  %40 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %41 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %40, i32 0, i32 6
  %42 = call i32 @rtw_free_mlme_ie_data(i32* %39, i32* %41)
  %43 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %44 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %43, i32 0, i32 5
  %45 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %46 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %45, i32 0, i32 4
  %47 = call i32 @rtw_free_mlme_ie_data(i32* %44, i32* %46)
  %48 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %49 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %48, i32 0, i32 3
  %50 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %51 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %50, i32 0, i32 2
  %52 = call i32 @rtw_free_mlme_ie_data(i32* %49, i32* %51)
  %53 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %54 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %53, i32 0, i32 1
  %55 = load %struct.mlme_priv*, %struct.mlme_priv** %2, align 8
  %56 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %55, i32 0, i32 0
  %57 = call i32 @rtw_free_mlme_ie_data(i32* %54, i32* %56)
  ret void
}

declare dso_local i32 @rtw_buf_free(i32*, i32*) #1

declare dso_local i32 @rtw_free_mlme_ie_data(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
