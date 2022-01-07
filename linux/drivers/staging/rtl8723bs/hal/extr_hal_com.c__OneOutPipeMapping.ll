; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com.c__OneOutPipeMapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com.c__OneOutPipeMapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.dvobj_priv = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_OneOutPipeMapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_OneOutPipeMapping(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.dvobj_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %4)
  store %struct.dvobj_priv* %5, %struct.dvobj_priv** %3, align 8
  %6 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %7 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %12 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %10, i32* %14, align 4
  %15 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %16 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %21 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %25 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %30 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %28, i32* %32, align 4
  %33 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %34 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %39 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 %37, i32* %41, align 4
  %42 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %43 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %48 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32 %46, i32* %50, align 4
  %51 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %52 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %57 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  store i32 %55, i32* %59, align 4
  %60 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %61 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %66 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  store i32 %64, i32* %68, align 4
  %69 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %70 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dvobj_priv*, %struct.dvobj_priv** %3, align 8
  %75 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 7
  store i32 %73, i32* %77, align 4
  ret void
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
