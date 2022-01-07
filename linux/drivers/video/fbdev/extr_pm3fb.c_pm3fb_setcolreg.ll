; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_12__, i64, %struct.TYPE_11__, %struct.pm3_par* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pm3_par = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @pm3fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.pm3_par*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 3
  %18 = load %struct.pm3_par*, %struct.pm3_par** %17, align 8
  store %struct.pm3_par* %18, %struct.pm3_par** %14, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp uge i32 %19, 256
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %167

24:                                               ; preds = %6
  %25 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = mul i32 %31, 77
  %33 = load i32, i32* %10, align 4
  %34 = mul i32 %33, 151
  %35 = add i32 %32, %34
  %36 = load i32, i32* %11, align 4
  %37 = mul i32 %36, 28
  %38 = add i32 %35, %37
  %39 = lshr i32 %38, 8
  store i32 %39, i32* %11, align 4
  store i32 %39, i32* %10, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %30, %24
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %41, %46
  %48 = add i32 %47, 32767
  %49 = load i32, i32* %9, align 4
  %50 = sub i32 %48, %49
  %51 = lshr i32 %50, 16
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %52, %57
  %59 = add i32 %58, 32767
  %60 = load i32, i32* %10, align 4
  %61 = sub i32 %59, %60
  %62 = lshr i32 %61, 16
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %63, %68
  %70 = add i32 %69, 32767
  %71 = load i32, i32* %11, align 4
  %72 = sub i32 %70, %71
  %73 = lshr i32 %72, 16
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %74, %79
  %81 = add i32 %80, 32767
  %82 = load i32, i32* %12, align 4
  %83 = sub i32 %81, %82
  %84 = lshr i32 %83, 16
  store i32 %84, i32* %12, align 4
  %85 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %98, label %91

91:                                               ; preds = %40
  %92 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %93 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %151

98:                                               ; preds = %91, %40
  %99 = load i32, i32* %8, align 4
  %100 = icmp uge i32 %99, 16
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %167

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %105, %110
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %114 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %112, %117
  %119 = or i32 %111, %118
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %120, %125
  %127 = or i32 %119, %126
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %130 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %128, %133
  %135 = or i32 %127, %134
  store i32 %135, i32* %15, align 4
  %136 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %137 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  switch i32 %139, label %150 [
    i32 8, label %140
    i32 16, label %141
    i32 32, label %141
  ]

140:                                              ; preds = %104
  br label %150

141:                                              ; preds = %104, %104
  %142 = load i32, i32* %15, align 4
  %143 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %144 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i32*
  %147 = load i32, i32* %8, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %142, i32* %149, align 4
  br label %150

150:                                              ; preds = %104, %141, %140
  store i32 0, i32* %7, align 4
  br label %167

151:                                              ; preds = %91
  %152 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %153 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @FB_VISUAL_PSEUDOCOLOR, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load %struct.pm3_par*, %struct.pm3_par** %14, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @pm3fb_set_color(%struct.pm3_par* %159, i32 %160, i32 %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %158, %151
  br label %166

166:                                              ; preds = %165
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %166, %150, %101, %21
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i32 @pm3fb_set_color(%struct.pm3_par*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
