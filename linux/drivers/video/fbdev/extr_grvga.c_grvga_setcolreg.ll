; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_grvga.c_grvga_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_grvga.c_grvga_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_14__, %struct.TYPE_9__, %struct.grvga_par* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.grvga_par = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @grvga_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grvga_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.grvga_par*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 3
  %18 = load %struct.grvga_par*, %struct.grvga_par** %17, align 8
  store %struct.grvga_par* %18, %struct.grvga_par** %14, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp uge i32 %19, 256
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %162

24:                                               ; preds = %6
  %25 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 4
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
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %41, %46
  %48 = add i32 %47, 32767
  %49 = load i32, i32* %9, align 4
  %50 = sub i32 %48, %49
  %51 = lshr i32 %50, 16
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %52, %57
  %59 = add i32 %58, 32767
  %60 = load i32, i32* %10, align 4
  %61 = sub i32 %59, %60
  %62 = lshr i32 %61, 16
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %63, %68
  %70 = add i32 %69, 32767
  %71 = load i32, i32* %11, align 4
  %72 = sub i32 %70, %71
  %73 = lshr i32 %72, 16
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %74, %79
  %81 = add i32 %80, 32767
  %82 = load i32, i32* %12, align 4
  %83 = sub i32 %81, %82
  %84 = lshr i32 %83, 16
  store i32 %84, i32* %12, align 4
  %85 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FB_VISUAL_PSEUDOCOLOR, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %40
  %92 = load i32, i32* %8, align 4
  %93 = shl i32 %92, 24
  %94 = load i32, i32* %9, align 4
  %95 = shl i32 %94, 16
  %96 = or i32 %93, %95
  %97 = load i32, i32* %10, align 4
  %98 = shl i32 %97, 8
  %99 = or i32 %96, %98
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.grvga_par*, %struct.grvga_par** %14, align 8
  %103 = getelementptr inbounds %struct.grvga_par, %struct.grvga_par* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = call i32 @__raw_writel(i32 %101, i32* %105)
  br label %161

107:                                              ; preds = %40
  %108 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %160

114:                                              ; preds = %107
  %115 = load i32, i32* %8, align 4
  %116 = icmp uge i32 %115, 16
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %7, align 4
  br label %162

120:                                              ; preds = %114
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %123 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = shl i32 %121, %126
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %130 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = shl i32 %128, %133
  %135 = or i32 %127, %134
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %138 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = shl i32 %136, %141
  %143 = or i32 %135, %142
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %146 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = shl i32 %144, %149
  %151 = or i32 %143, %150
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %154 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i32*
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %152, i32* %159, align 4
  br label %160

160:                                              ; preds = %120, %107
  br label %161

161:                                              ; preds = %160, %91
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %161, %117, %21
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @__raw_writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
