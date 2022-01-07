; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_setCCKFilterCoefficient.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c_setCCKFilterCoefficient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CCKSwingTable_Ch1_Ch13_New = common dso_local global i32** null, align 8
@CCKSwingTable_Ch14_New = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @setCCKFilterCoefficient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setCCKFilterCoefficient(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %91, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13_New, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rtw_write8(i32 %13, i32 2594, i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13_New, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rtw_write8(i32 %23, i32 2595, i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13_New, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rtw_write8(i32 %33, i32 2596, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13_New, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rtw_write8(i32 %43, i32 2597, i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13_New, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds i32*, i32** %54, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rtw_write8(i32 %53, i32 2598, i32 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13_New, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rtw_write8(i32 %63, i32 2599, i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13_New, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @rtw_write8(i32 %73, i32 2600, i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32**, i32*** @CCKSwingTable_Ch1_Ch13_New, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds i32*, i32** %84, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 7
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rtw_write8(i32 %83, i32 2601, i32 %89)
  br label %172

91:                                               ; preds = %2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32**, i32*** @CCKSwingTable_Ch14_New, align 8
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rtw_write8(i32 %94, i32 2594, i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32**, i32*** @CCKSwingTable_Ch14_New, align 8
  %106 = load i64, i64* %4, align 8
  %107 = getelementptr inbounds i32*, i32** %105, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @rtw_write8(i32 %104, i32 2595, i32 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32**, i32*** @CCKSwingTable_Ch14_New, align 8
  %116 = load i64, i64* %4, align 8
  %117 = getelementptr inbounds i32*, i32** %115, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @rtw_write8(i32 %114, i32 2596, i32 %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32**, i32*** @CCKSwingTable_Ch14_New, align 8
  %126 = load i64, i64* %4, align 8
  %127 = getelementptr inbounds i32*, i32** %125, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @rtw_write8(i32 %124, i32 2597, i32 %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32**, i32*** @CCKSwingTable_Ch14_New, align 8
  %136 = load i64, i64* %4, align 8
  %137 = getelementptr inbounds i32*, i32** %135, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @rtw_write8(i32 %134, i32 2598, i32 %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32**, i32*** @CCKSwingTable_Ch14_New, align 8
  %146 = load i64, i64* %4, align 8
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 5
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @rtw_write8(i32 %144, i32 2599, i32 %150)
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32**, i32*** @CCKSwingTable_Ch14_New, align 8
  %156 = load i64, i64* %4, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 6
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @rtw_write8(i32 %154, i32 2600, i32 %160)
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32**, i32*** @CCKSwingTable_Ch14_New, align 8
  %166 = load i64, i64* %4, align 8
  %167 = getelementptr inbounds i32*, i32** %165, i64 %166
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 7
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @rtw_write8(i32 %164, i32 2601, i32 %170)
  br label %172

172:                                              ; preds = %91, %10
  ret void
}

declare dso_local i32 @rtw_write8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
