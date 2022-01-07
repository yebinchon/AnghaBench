; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_g450_pll.c_g450_addcache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_g450_pll.c_g450_addcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_pll_cache = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@G450_MNP_FREQBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_pll_cache*, i32, i32)* @g450_addcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g450_addcache(%struct.matrox_pll_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.matrox_pll_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.matrox_pll_cache* %0, %struct.matrox_pll_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %4, align 8
  %8 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %4, align 8
  %12 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %13)
  %15 = icmp sgt i64 %10, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %4, align 8
  %18 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %19)
  %21 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %4, align 8
  %22 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %16, %3
  %24 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %4, align 8
  %25 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 1
  %28 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %4, align 8
  %29 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %4, align 8
  %32 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memmove(%struct.TYPE_4__* %27, %struct.TYPE_4__* %30, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @G450_MNP_FREQBITS, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %4, align 8
  %42 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.matrox_pll_cache*, %struct.matrox_pll_cache** %4, align 8
  %48 = getelementptr inbounds %struct.matrox_pll_cache, %struct.matrox_pll_cache* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %46, i32* %51, align 4
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @memmove(%struct.TYPE_4__*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
