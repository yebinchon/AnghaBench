; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_nv10UpdateArbitrationSettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/nvidia/extr_nv_hw.c_nv10UpdateArbitrationSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i8, i32, i32, i32, i8, i32, i8, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, %struct.nvidia_par*)* @nv10UpdateArbitrationSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10UpdateArbitrationSettings(i32 %0, i32 %1, i32* %2, i32* %3, %struct.nvidia_par* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvidia_par*, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.nvidia_par* %4, %struct.nvidia_par** %10, align 8
  %17 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %18 = call i32 @nvGetClocks(%struct.nvidia_par* %17, i32* %13, i32* %14)
  %19 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %20 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @NV_RD32(i32 %21, i32 516)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %7, align 4
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i8 %24, i8* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 11
  store i64 0, i64* %27, align 8
  %28 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %29 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @NV_RD32(i32 %30, i32 512)
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %38 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @NV_RD32(i32 %39, i32 0)
  %41 = and i32 %40, 16
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 128, i32 64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %15, align 4
  %47 = trunc i32 %46 to i8
  %48 = sext i8 %47 to i32
  %49 = and i32 %48, 15
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i8 %50, i8* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* %15, align 4
  %54 = lshr i32 %53, 4
  %55 = and i32 %54, 15
  %56 = load i32, i32* %15, align 4
  %57 = lshr i32 %56, 31
  %58 = and i32 %57, 1
  %59 = add i32 %55, %58
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 6
  store i8 %60, i8* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 10
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 7
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %13, align 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 8
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* %14, align 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 9
  store i32 %67, i32* %68, align 4
  %69 = call i32 @nv10CalcArbitration(%struct.TYPE_6__* %11, %struct.TYPE_5__* %12)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %5
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 4
  store i32 %76, i32* %16, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %82, %73
  %79 = load i32, i32* %16, align 4
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %78

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 3
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %5
  ret void
}

declare dso_local i32 @nvGetClocks(%struct.nvidia_par*, i32*, i32*) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

declare dso_local i32 @nv10CalcArbitration(%struct.TYPE_6__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
