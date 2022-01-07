; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_grvga.c_grvga_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_grvga.c_grvga_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.grvga_par* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8* }
%struct.grvga_par = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@FB_VISUAL_PSEUDOCOLOR = common dso_local global i8* null, align 8
@FB_VISUAL_TRUECOLOR = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @grvga_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grvga_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.grvga_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 2
  %8 = load %struct.grvga_par*, %struct.grvga_par** %7, align 8
  store %struct.grvga_par* %8, %struct.grvga_par** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = shl i32 %13, 16
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = or i32 %14, %19
  %21 = load %struct.grvga_par*, %struct.grvga_par** %5, align 8
  %22 = getelementptr inbounds %struct.grvga_par, %struct.grvga_par* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  %25 = call i32 @__raw_writel(i32 %20, i32* %24)
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 16
  %31 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %30, %34
  %36 = load %struct.grvga_par*, %struct.grvga_par** %5, align 8
  %37 = getelementptr inbounds %struct.grvga_par, %struct.grvga_par* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = call i32 @__raw_writel(i32 %35, i32* %39)
  %41 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 16
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %45, %49
  %51 = load %struct.grvga_par*, %struct.grvga_par** %5, align 8
  %52 = getelementptr inbounds %struct.grvga_par, %struct.grvga_par* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = call i32 @__raw_writel(i32 %50, i32* %54)
  %56 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %59, %63
  %65 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %64, %68
  %70 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %69, %73
  %75 = sub nsw i32 %74, 1
  %76 = shl i32 %75, 16
  %77 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %80, %84
  %86 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %85, %89
  %91 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %90, %94
  %96 = sub nsw i32 %95, 1
  %97 = or i32 %76, %96
  %98 = load %struct.grvga_par*, %struct.grvga_par** %5, align 8
  %99 = getelementptr inbounds %struct.grvga_par, %struct.grvga_par* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = call i32 @__raw_writel(i32 %97, i32* %101)
  %103 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %122 [
    i32 8, label %107
    i32 16, label %112
    i32 24, label %117
    i32 32, label %117
  ]

107:                                              ; preds = %1
  %108 = load i8*, i8** @FB_VISUAL_PSEUDOCOLOR, align 8
  %109 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %110 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i8* %108, i8** %111, align 8
  store i32 1, i32* %4, align 4
  br label %125

112:                                              ; preds = %1
  %113 = load i8*, i8** @FB_VISUAL_TRUECOLOR, align 8
  %114 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %115 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  store i32 2, i32* %4, align 4
  br label %125

117:                                              ; preds = %1, %1
  %118 = load i8*, i8** @FB_VISUAL_TRUECOLOR, align 8
  %119 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %120 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  store i32 3, i32* %4, align 4
  br label %125

122:                                              ; preds = %1
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %152

125:                                              ; preds = %117, %112, %107
  %126 = load %struct.grvga_par*, %struct.grvga_par** %5, align 8
  %127 = getelementptr inbounds %struct.grvga_par, %struct.grvga_par* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = shl i32 %128, 6
  %130 = load i32, i32* %4, align 4
  %131 = shl i32 %130, 4
  %132 = or i32 %129, %131
  %133 = or i32 %132, 1
  %134 = load %struct.grvga_par*, %struct.grvga_par** %5, align 8
  %135 = getelementptr inbounds %struct.grvga_par, %struct.grvga_par* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = call i32 @__raw_writel(i32 %133, i32* %137)
  %139 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %140 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %144 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 %142, %146
  %148 = sdiv i32 %147, 8
  %149 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %150 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %125, %122
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @__raw_writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
