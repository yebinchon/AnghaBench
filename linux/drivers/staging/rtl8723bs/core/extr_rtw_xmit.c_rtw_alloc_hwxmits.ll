; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_rtw_alloc_hwxmits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_rtw_alloc_hwxmits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.xmit_priv }
%struct.xmit_priv = type { i32, i32, i32, i32, i32, i32, %struct.hw_xmit* }
%struct.hw_xmit = type { i32* }

@HWXMIT_ENTRY = common dso_local global i32 0, align 4
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
  %10 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %12 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %11, i32 0, i32 6
  store %struct.hw_xmit* null, %struct.hw_xmit** %12, align 8
  %13 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %14 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = call %struct.hw_xmit* @rtw_zmalloc(i32 %18)
  %20 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %21 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %20, i32 0, i32 6
  store %struct.hw_xmit* %19, %struct.hw_xmit** %21, align 8
  %22 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %23 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %22, i32 0, i32 6
  %24 = load %struct.hw_xmit*, %struct.hw_xmit** %23, align 8
  %25 = icmp ne %struct.hw_xmit* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @_FAIL, align 4
  store i32 %27, i32* %2, align 4
  br label %92

28:                                               ; preds = %1
  %29 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %30 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %29, i32 0, i32 6
  %31 = load %struct.hw_xmit*, %struct.hw_xmit** %30, align 8
  store %struct.hw_xmit* %31, %struct.hw_xmit** %4, align 8
  %32 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %33 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %36, label %62

36:                                               ; preds = %28
  %37 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %38 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %37, i32 0, i32 5
  %39 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %40 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %39, i64 0
  %41 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %40, i32 0, i32 0
  store i32* %38, i32** %41, align 8
  %42 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %43 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %42, i32 0, i32 4
  %44 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %45 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %44, i64 1
  %46 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %45, i32 0, i32 0
  store i32* %43, i32** %46, align 8
  %47 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %48 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %47, i32 0, i32 3
  %49 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %50 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %49, i64 2
  %51 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %50, i32 0, i32 0
  store i32* %48, i32** %51, align 8
  %52 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %53 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %52, i32 0, i32 1
  %54 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %55 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %54, i64 3
  %56 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %55, i32 0, i32 0
  store i32* %53, i32** %56, align 8
  %57 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %58 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %57, i32 0, i32 2
  %59 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %60 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %59, i64 4
  %61 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %60, i32 0, i32 0
  store i32* %58, i32** %61, align 8
  br label %90

62:                                               ; preds = %28
  %63 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %64 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %88

67:                                               ; preds = %62
  %68 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %69 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %68, i32 0, i32 4
  %70 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %71 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %70, i64 0
  %72 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %71, i32 0, i32 0
  store i32* %69, i32** %72, align 8
  %73 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %74 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %73, i32 0, i32 3
  %75 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %76 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %75, i64 1
  %77 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %76, i32 0, i32 0
  store i32* %74, i32** %77, align 8
  %78 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %79 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %78, i32 0, i32 2
  %80 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %81 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %80, i64 2
  %82 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %81, i32 0, i32 0
  store i32* %79, i32** %82, align 8
  %83 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %84 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %83, i32 0, i32 1
  %85 = load %struct.hw_xmit*, %struct.hw_xmit** %4, align 8
  %86 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %85, i64 3
  %87 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %86, i32 0, i32 0
  store i32* %84, i32** %87, align 8
  br label %89

88:                                               ; preds = %62
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %36
  %91 = load i32, i32* @_SUCCESS, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %26
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.hw_xmit* @rtw_zmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
