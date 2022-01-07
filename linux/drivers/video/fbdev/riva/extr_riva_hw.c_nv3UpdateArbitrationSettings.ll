; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_nv3UpdateArbitrationSettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_nv3UpdateArbitrationSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i8, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, %struct.TYPE_9__*)* @nv3UpdateArbitrationSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv3UpdateArbitrationSettings(i32 %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %10, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 321
  %23 = call i32 @NV_RD32(i32* %22, i32 0)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = lshr i32 %24, 0
  %26 = and i32 %25, 255
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %16, align 4
  %28 = lshr i32 %27, 8
  %29 = and i32 %28, 255
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %16, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 15
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul i32 %33, %36
  %38 = load i32, i32* %13, align 4
  %39 = udiv i32 %37, %38
  %40 = load i32, i32* %15, align 4
  %41 = lshr i32 %39, %40
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %7, align 4
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i8 %43, i8* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 10
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 9
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i32 @NV_RD32(i32* %51, i32 0)
  %53 = and i32 %52, 16
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 128, i32 64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 128, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  store i32 9, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  store i32 1, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  store i32 11, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 8
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  store i32 %63, i32* %64, align 8
  %65 = load i32, i32* %17, align 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 7
  store i32 %65, i32* %66, align 4
  %67 = call i32 @nv3CalcArbitration(%struct.TYPE_8__* %11, %struct.TYPE_7__* %12)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %5
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = ashr i32 %73, 4
  store i32 %74, i32* %18, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %80, %71
  %77 = load i32, i32* %18, align 4
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %76

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 3
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %92

89:                                               ; preds = %5
  %90 = load i32*, i32** %9, align 8
  store i32 36, i32* %90, align 4
  %91 = load i32*, i32** %8, align 8
  store i32 2, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %84
  ret void
}

declare dso_local i32 @NV_RD32(i32*, i32) #1

declare dso_local i32 @nv3CalcArbitration(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
