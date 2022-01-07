; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_clps711x-fb.c_clps711x_fb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_clps711x-fb.c_clps711x_fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.clps711x_fb_info* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.clps711x_fb_info = type { i32, i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FB_VISUAL_MONO01 = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@LCDCON_GSMD = common dso_local global i32 0, align 4
@LCDCON_GSEN = common dso_local global i32 0, align 4
@SYSCON_OFFSET = common dso_local global i32 0, align 4
@SYSCON1_LCDEN = common dso_local global i32 0, align 4
@CLPS711X_LCDCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @clps711x_fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps711x_fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.clps711x_fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %9, align 8
  store %struct.clps711x_fb_info* %10, %struct.clps711x_fb_info** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %14, %18
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %19, %23
  %25 = sdiv i32 %24, 8
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %4, align 8
  %28 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %164

34:                                               ; preds = %1
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %49 [
    i32 1, label %39
    i32 2, label %44
    i32 4, label %44
  ]

39:                                               ; preds = %34
  %40 = load i32, i32* @FB_VISUAL_MONO01, align 4
  %41 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  br label %52

44:                                               ; preds = %34, %34
  %45 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  br label %52

49:                                               ; preds = %34
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %164

52:                                               ; preds = %44, %39
  %53 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %56, %60
  %62 = sdiv i32 %61, 8
  %63 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %73, %77
  %79 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %78, %82
  %84 = sdiv i32 %83, 128
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  %86 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sdiv i32 %89, 16
  %91 = sub nsw i32 %90, 1
  %92 = shl i32 %91, 13
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %4, align 8
  %96 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 31
  %99 = shl i32 %98, 25
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %4, align 8
  %103 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @clk_get_rate(i32 %104)
  %106 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @PICOS2KHZ(i32 %109)
  %111 = mul nsw i32 %110, 1000
  %112 = sdiv i32 %105, %111
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %52
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %115, %52
  %119 = load i32, i32* %7, align 4
  %120 = and i32 %119, 63
  %121 = shl i32 %120, 19
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %6, align 4
  %124 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 4
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = load i32, i32* @LCDCON_GSMD, align 4
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %129, %118
  %134 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp sge i32 %137, 2
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* @LCDCON_GSEN, align 4
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %139, %133
  %144 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %4, align 8
  %145 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @SYSCON_OFFSET, align 4
  %148 = load i32, i32* @SYSCON1_LCDEN, align 4
  %149 = call i32 @regmap_update_bits(i32 %146, i32 %147, i32 %148, i32 0)
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %4, align 8
  %152 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @CLPS711X_LCDCON, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writel(i32 %150, i64 %155)
  %157 = load %struct.clps711x_fb_info*, %struct.clps711x_fb_info** %4, align 8
  %158 = getelementptr inbounds %struct.clps711x_fb_info, %struct.clps711x_fb_info* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SYSCON_OFFSET, align 4
  %161 = load i32, i32* @SYSCON1_LCDEN, align 4
  %162 = load i32, i32* @SYSCON1_LCDEN, align 4
  %163 = call i32 @regmap_update_bits(i32 %159, i32 %160, i32 %161, i32 %162)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %143, %49, %31
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @PICOS2KHZ(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
