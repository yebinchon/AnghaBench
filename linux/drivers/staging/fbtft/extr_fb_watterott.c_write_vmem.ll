; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_watterott.c_write_vmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_watterott.c_write_vmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_6__, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_7__ = type { i32 (%struct.fbtft_par.0*, i64*, i32)* }
%struct.fbtft_par.0 = type opaque

@CMD_LCD_DRAWIMAGE = common dso_local global i32 0, align 4
@COLOR_RGB565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*, i64, i64)* @write_vmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vmem(%struct.fbtft_par* %0, i64 %1, i64 %2) #0 {
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
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
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
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = udiv i64 %45, %51
  %53 = add i64 %44, %52
  %54 = sub i64 %53, 1
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @CMD_LCD_DRAWIMAGE, align 4
  %57 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %58 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = bitcast i64* %60 to i32*
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %56, i32* %62, align 4
  %63 = load i64*, i64** %11, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %66 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @cpu_to_be16(i32 %70)
  %72 = load i64*, i64** %11, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  store i64 %71, i64* %73, align 8
  %74 = call i64 @cpu_to_be16(i32 1)
  %75 = load i64*, i64** %11, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 3
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @COLOR_RGB565, align 4
  %78 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %79 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = bitcast i64* %81 to i32*
  %83 = getelementptr inbounds i32, i32* %82, i64 9
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %141, %3
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ule i32 %86, %87
  br i1 %88, label %89, label %144

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = call i64 @cpu_to_be16(i32 %90)
  %92 = load i64*, i64** %11, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  store i64 %91, i64* %93, align 8
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %112, %89
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %97 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %95, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %94
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %10, align 8
  %106 = load i32, i32* %104, align 4
  %107 = call i64 @cpu_to_be16(i32 %106)
  %108 = load i64*, i64** %12, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  store i64 %107, i64* %111, align 8
  br label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %94

115:                                              ; preds = %94
  %116 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %117 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32 (%struct.fbtft_par.0*, i64*, i32)*, i32 (%struct.fbtft_par.0*, i64*, i32)** %118, align 8
  %120 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %121 = bitcast %struct.fbtft_par* %120 to %struct.fbtft_par.0*
  %122 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %123 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load %struct.fbtft_par*, %struct.fbtft_par** %5, align 8
  %127 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %126, i32 0, i32 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add i64 10, %131
  %133 = trunc i64 %132 to i32
  %134 = call i32 %119(%struct.fbtft_par.0* %121, i64* %125, i32 %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %115
  %138 = load i32, i32* %15, align 4
  store i32 %138, i32* %4, align 4
  br label %145

139:                                              ; preds = %115
  %140 = call i32 @udelay(i32 300)
  br label %141

141:                                              ; preds = %139
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %85

144:                                              ; preds = %85
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %144, %137
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
