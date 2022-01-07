; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_nv10UpdateArbitrationSettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_nv10UpdateArbitrationSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i8, i32, i32, i8, i32, i8, i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, %struct.TYPE_9__*)* @nv10UpdateArbitrationSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10UpdateArbitrationSettings(i32 %0, i32 %1, i32* %2, i32* %3, %struct.TYPE_9__* %4) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %10, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 321
  %25 = call i32 @NV_RD32(i32* %24, i32 0)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = lshr i32 %26, 0
  %28 = and i32 %27, 255
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %16, align 4
  %30 = lshr i32 %29, 8
  %31 = and i32 %30, 255
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %16, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 15
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul i32 %35, %38
  %40 = load i32, i32* %13, align 4
  %41 = udiv i32 %39, %40
  %42 = load i32, i32* %15, align 4
  %43 = lshr i32 %41, %42
  store i32 %43, i32* %17, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 320
  %48 = call i32 @NV_RD32(i32* %47, i32 0)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = lshr i32 %49, 0
  %51 = and i32 %50, 255
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %16, align 4
  %53 = lshr i32 %52, 8
  %54 = and i32 %53, 255
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %16, align 4
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 15
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul i32 %58, %61
  %63 = load i32, i32* %13, align 4
  %64 = udiv i32 %62, %63
  %65 = load i32, i32* %15, align 4
  %66 = lshr i32 %64, %65
  store i32 %66, i32* %18, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 129
  %71 = call i32 @NV_RD32(i32* %70, i32 0)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %7, align 4
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i8 %73, i8* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 11
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 10
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 128
  %81 = call i32 @NV_RD32(i32* %80, i32 0)
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = call i32 @NV_RD32(i32* %90, i32 0)
  %92 = and i32 %91, 16
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 128, i32 64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i32 %95, i32* %96, align 8
  %97 = load i32, i32* %19, align 4
  %98 = trunc i32 %97 to i8
  %99 = sext i8 %98 to i32
  %100 = and i32 %99, 15
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  store i8 %101, i8* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  store i32 1, i32* %103, align 8
  %104 = load i32, i32* %19, align 4
  %105 = lshr i32 %104, 4
  %106 = and i32 %105, 15
  %107 = load i32, i32* %19, align 4
  %108 = lshr i32 %107, 31
  %109 = and i32 %108, 1
  %110 = add i32 %106, %109
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  store i8 %111, i8* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 9
  store i64 0, i64* %113, align 8
  %114 = load i32, i32* %6, align 4
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  store i32 %114, i32* %115, align 8
  %116 = load i32, i32* %17, align 4
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 7
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %18, align 4
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 8
  store i32 %118, i32* %119, align 8
  %120 = call i32 @nv10CalcArbitration(%struct.TYPE_8__* %11, %struct.TYPE_7__* %12)
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %5
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = ashr i32 %126, 4
  store i32 %127, i32* %20, align 4
  %128 = load i32*, i32** %8, align 8
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %133, %124
  %130 = load i32, i32* %20, align 4
  %131 = ashr i32 %130, 1
  store i32 %131, i32* %20, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %129

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 3
  %141 = load i32*, i32** %9, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %137, %5
  ret void
}

declare dso_local i32 @NV_RD32(i32*, i32) #1

declare dso_local i32 @nv10CalcArbitration(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
