; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_alloc_hwxmits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_alloc_hwxmits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.xmit_priv }
%struct.xmit_priv = type { i32, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, i32, %struct.TYPE_2__, %struct.hw_xmit* }
%struct.TYPE_2__ = type { i64 }
%struct.hw_xmit = type { i32*, %struct.TYPE_2__* }

@HWXMIT_ENTRY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*)* @alloc_hwxmits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_hwxmits(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.hw_xmit*, align 8
  %4 = alloca %struct.xmit_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %5 = load %struct._adapter*, %struct._adapter** %2, align 8
  %6 = getelementptr inbounds %struct._adapter, %struct._adapter* %5, i32 0, i32 0
  store %struct.xmit_priv* %6, %struct.xmit_priv** %4, align 8
  %7 = load i32, i32* @HWXMIT_ENTRY, align 4
  %8 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %9 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %11 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.hw_xmit* @kmalloc_array(i32 %12, i32 16, i32 %13)
  %15 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %16 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %15, i32 0, i32 11
  store %struct.hw_xmit* %14, %struct.hw_xmit** %16, align 8
  %17 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %18 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %17, i32 0, i32 11
  %19 = load %struct.hw_xmit*, %struct.hw_xmit** %18, align 8
  %20 = icmp ne %struct.hw_xmit* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %155

22:                                               ; preds = %1
  %23 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %24 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %23, i32 0, i32 11
  %25 = load %struct.hw_xmit*, %struct.hw_xmit** %24, align 8
  store %struct.hw_xmit* %25, %struct.hw_xmit** %3, align 8
  %26 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %27 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %96

30:                                               ; preds = %22
  %31 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %32 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %31, i32 0, i32 10
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %35 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %34, i32 0, i32 10
  %36 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %37 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %36, i64 0
  %38 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %37, i32 0, i32 1
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %38, align 8
  %39 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %40 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %39, i32 0, i32 9
  %41 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %42 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %41, i64 0
  %43 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  %44 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %45 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %48 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %47, i32 0, i32 8
  %49 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %50 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %49, i64 1
  %51 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %50, i32 0, i32 1
  store %struct.TYPE_2__* %48, %struct.TYPE_2__** %51, align 8
  %52 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %53 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %52, i32 0, i32 7
  %54 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %55 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %54, i64 1
  %56 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %55, i32 0, i32 0
  store i32* %53, i32** %56, align 8
  %57 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %58 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %61 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %60, i32 0, i32 6
  %62 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %63 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %62, i64 2
  %64 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %63, i32 0, i32 1
  store %struct.TYPE_2__* %61, %struct.TYPE_2__** %64, align 8
  %65 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %66 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %65, i32 0, i32 5
  %67 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %68 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %67, i64 2
  %69 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %68, i32 0, i32 0
  store i32* %66, i32** %69, align 8
  %70 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %71 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %74 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %73, i32 0, i32 2
  %75 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %76 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %75, i64 3
  %77 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %76, i32 0, i32 1
  store %struct.TYPE_2__* %74, %struct.TYPE_2__** %77, align 8
  %78 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %79 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %78, i32 0, i32 1
  %80 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %81 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %80, i64 3
  %82 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %81, i32 0, i32 0
  store i32* %79, i32** %82, align 8
  %83 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %84 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %87 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %86, i32 0, i32 4
  %88 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %89 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %88, i64 4
  %90 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %89, i32 0, i32 1
  store %struct.TYPE_2__* %87, %struct.TYPE_2__** %90, align 8
  %91 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %92 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %91, i32 0, i32 3
  %93 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %94 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %93, i64 4
  %95 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %94, i32 0, i32 0
  store i32* %92, i32** %95, align 8
  br label %155

96:                                               ; preds = %22
  %97 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %98 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 4
  br i1 %100, label %101, label %154

101:                                              ; preds = %96
  %102 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %103 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %106 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %105, i32 0, i32 8
  %107 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %108 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %107, i64 0
  %109 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %108, i32 0, i32 1
  store %struct.TYPE_2__* %106, %struct.TYPE_2__** %109, align 8
  %110 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %111 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %110, i32 0, i32 7
  %112 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %113 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %112, i64 0
  %114 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %113, i32 0, i32 0
  store i32* %111, i32** %114, align 8
  %115 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %116 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  %118 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %119 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %118, i32 0, i32 6
  %120 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %121 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %120, i64 1
  %122 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %121, i32 0, i32 1
  store %struct.TYPE_2__* %119, %struct.TYPE_2__** %122, align 8
  %123 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %124 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %123, i32 0, i32 5
  %125 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %126 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %125, i64 1
  %127 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %126, i32 0, i32 0
  store i32* %124, i32** %127, align 8
  %128 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %129 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  %131 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %132 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %131, i32 0, i32 4
  %133 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %134 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %133, i64 2
  %135 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %134, i32 0, i32 1
  store %struct.TYPE_2__* %132, %struct.TYPE_2__** %135, align 8
  %136 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %137 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %136, i32 0, i32 3
  %138 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %139 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %138, i64 2
  %140 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %139, i32 0, i32 0
  store i32* %137, i32** %140, align 8
  %141 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %142 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %145 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %144, i32 0, i32 2
  %146 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %147 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %146, i64 3
  %148 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %147, i32 0, i32 1
  store %struct.TYPE_2__* %145, %struct.TYPE_2__** %148, align 8
  %149 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %150 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %149, i32 0, i32 1
  %151 = load %struct.hw_xmit*, %struct.hw_xmit** %3, align 8
  %152 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %151, i64 3
  %153 = getelementptr inbounds %struct.hw_xmit, %struct.hw_xmit* %152, i32 0, i32 0
  store i32* %150, i32** %153, align 8
  br label %154

154:                                              ; preds = %101, %96
  br label %155

155:                                              ; preds = %21, %154, %30
  ret void
}

declare dso_local %struct.hw_xmit* @kmalloc_array(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
