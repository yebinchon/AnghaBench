; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_watterott.c_write_vmem_8bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_watterott.c_write_vmem_8bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_7__ = type { i32 (%struct.fbtft_par.0*, i64*, i32)* }
%struct.fbtft_par.0 = type opaque

@CMD_LCD_DRAWIMAGE = common dso_local global i64 0, align 8
@COLOR_RGB332 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*, i64, i64)* @write_vmem_8bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vmem_8bit(%struct.fbtft_par* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fbtft_par*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %17 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %20, %21
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %10, align 8
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %25 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  store i64* %28, i64** %11, align 8
  %29 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %30 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 10
  store i64* %33, i64** %12, align 8
  store i32 0, i32* %15, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %36 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = udiv i64 %34, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %47 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = udiv i64 %45, %51
  %53 = add i64 %44, %52
  %54 = sub i64 %53, 1
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load i64, i64* @CMD_LCD_DRAWIMAGE, align 8
  %57 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %58 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  store i64 %56, i64* %61, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %65 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @cpu_to_be16(i32 %69)
  %71 = load i64*, i64** %11, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 2
  store i64 %70, i64* %72, align 8
  %73 = call i64 @cpu_to_be16(i32 1)
  %74 = load i64*, i64** %11, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 3
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* @COLOR_RGB332, align 8
  %77 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %78 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 9
  store i64 %76, i64* %81, align 8
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %139, %3
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ule i32 %84, %85
  br i1 %86, label %87, label %142

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = call i64 @cpu_to_be16(i32 %88)
  %90 = load i64*, i64** %11, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  store i64 %89, i64* %91, align 8
  store i32 0, i32* %14, align 4
  br label %92

92:                                               ; preds = %111, %87
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %95 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %93, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %92
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @rgb565_to_rgb332(i32 %103)
  %105 = load i64*, i64** %12, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64 %104, i64* %108, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %10, align 8
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %92

114:                                              ; preds = %92
  %115 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %116 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32 (%struct.fbtft_par.0*, i64*, i32)*, i32 (%struct.fbtft_par.0*, i64*, i32)** %117, align 8
  %119 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %120 = bitcast %struct.fbtft_par* %119 to %struct.fbtft_par.0*
  %121 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %122 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %126 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 10, %130
  %132 = call i32 %118(%struct.fbtft_par.0* %120, i64* %124, i32 %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %114
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %4, align 4
  br label %143

137:                                              ; preds = %114
  %138 = call i32 @udelay(i32 700)
  br label %139

139:                                              ; preds = %137
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %83

142:                                              ; preds = %83
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %135
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @rgb565_to_rgb332(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
