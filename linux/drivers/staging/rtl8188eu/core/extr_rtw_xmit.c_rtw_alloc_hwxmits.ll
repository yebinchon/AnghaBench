; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_rtw_alloc_hwxmits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_rtw_alloc_hwxmits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.xmit_priv }
%struct.xmit_priv = type { i32, i32, i32, i32, %struct.hw_xmit*, i32 }
%struct.hw_xmit = type { i32* }

@HWXMIT_ENTRY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_alloc_hwxmits(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.hw_xmit*, align 8
  %5 = alloca %struct.xmit_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.xmit_priv* %7, %struct.xmit_priv** %5, align 8
  %8 = load i32, i32* @HWXMIT_ENTRY, align 4
  %9 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %10 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %12 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.hw_xmit* @kcalloc(i32 %13, i32 8, i32 %14)
  %16 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %17 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %16, i32 0, i32 4
  store %struct.hw_xmit* %15, %struct.hw_xmit** %17, align 8
  %18 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %19 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %18, i32 0, i32 4
  %20 = load %struct.hw_xmit*, %struct.hw_xmit** %19, align 8
  %21 = icmp ne %struct.hw_xmit* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @_FAIL, align 4
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %1
  %25 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %26 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %25, i32 0, i32 4
  %27 = load %struct.hw_xmit*, %struct.hw_xmit** %26, align 8
  store %struct.hw_xmit* %27, %struct.hw_xmit** %4, align 8
  %28 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %29 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %28, i32 0, i32 3
  %30 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %31 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %30, i64 0
  %32 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %31, i32 0, i32 0
  store i32* %29, i32** %32, align 8
  %33 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %34 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %33, i32 0, i32 2
  %35 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %36 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %35, i64 1
  %37 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %36, i32 0, i32 0
  store i32* %34, i32** %37, align 8
  %38 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %39 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %38, i32 0, i32 1
  %40 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %41 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %40, i64 2
  %42 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %41, i32 0, i32 0
  store i32* %39, i32** %42, align 8
  %43 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %44 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %43, i32 0, i32 0
  %45 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %46 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %45, i64 3
  %47 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %46, i32 0, i32 0
  store i32* %44, i32** %47, align 8
  %48 = load i32, i32* @_SUCCESS, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %24, %22
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.hw_xmit* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
