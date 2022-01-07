; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ep93xx-fb.c_ep93xxfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ep93xx-fb.c_ep93xxfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.TYPE_12__, %struct.TYPE_7__, %struct.ep93xx_fbi* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ep93xx_fbi = type { i32 }

@EP93XXFB_COLOR_LUT = common dso_local global i32 0, align 4
@EP93XXFB_LUT_SW_CONTROL = common dso_local global i32 0, align 4
@EP93XXFB_LUT_SW_CONTROL_SSTAT = common dso_local global i32 0, align 4
@EP93XXFB_LUT_SW_CONTROL_SWTCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @ep93xxfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xxfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.ep93xx_fbi*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 3
  %23 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %22, align 8
  store %struct.ep93xx_fbi* %23, %struct.ep93xx_fbi** %14, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %15, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %173 [
    i32 129, label %31
    i32 128, label %105
  ]

31:                                               ; preds = %6
  %32 = load i32, i32* %8, align 4
  %33 = icmp ugt i32 %32, 255
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %175

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 65280
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 65280
  %41 = or i32 %38, %40
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 65280
  %44 = lshr i32 %43, 8
  %45 = or i32 %41, %44
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %14, align 8
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @EP93XXFB_COLOR_LUT, align 4
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 %54, 2
  %56 = add i32 %53, %55
  %57 = call i32 @ep93xxfb_writel(%struct.ep93xx_fbi* %51, i32 %52, i32 %56)
  %58 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %14, align 8
  %59 = load i32, i32* @EP93XXFB_LUT_SW_CONTROL, align 4
  %60 = call i32 @ep93xxfb_readl(%struct.ep93xx_fbi* %58, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @EP93XXFB_LUT_SW_CONTROL_SSTAT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @EP93XXFB_LUT_SW_CONTROL_SWTCH, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %35
  store i32 0, i32* %17, align 4
  br label %79

79:                                               ; preds = %94, %78
  %80 = load i32, i32* %17, align 4
  %81 = icmp ult i32 %80, 256
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %14, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %17, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @EP93XXFB_COLOR_LUT, align 4
  %90 = load i32, i32* %17, align 4
  %91 = shl i32 %90, 2
  %92 = add i32 %89, %91
  %93 = call i32 @ep93xxfb_writel(%struct.ep93xx_fbi* %83, i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %17, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %17, align 4
  br label %79

97:                                               ; preds = %79
  %98 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %14, align 8
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @EP93XXFB_LUT_SW_CONTROL_SWTCH, align 4
  %101 = xor i32 %99, %100
  %102 = load i32, i32* @EP93XXFB_LUT_SW_CONTROL, align 4
  %103 = call i32 @ep93xxfb_writel(%struct.ep93xx_fbi* %98, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %97, %35
  br label %174

105:                                              ; preds = %6
  %106 = load i32, i32* %8, align 4
  %107 = icmp ugt i32 %106, 16
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 1, i32* %7, align 4
  br label %175

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ep93xxfb_convert_color(i32 %110, i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %119 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ep93xxfb_convert_color(i32 %117, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %126 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ep93xxfb_convert_color(i32 %124, i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %133 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ep93xxfb_convert_color(i32 %131, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %140 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = shl i32 %138, %143
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %147 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = shl i32 %145, %150
  %152 = or i32 %144, %151
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %155 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = shl i32 %153, %158
  %160 = or i32 %152, %159
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %163 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = shl i32 %161, %166
  %168 = or i32 %160, %167
  %169 = load i32*, i32** %15, align 8
  %170 = load i32, i32* %8, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %168, i32* %172, align 4
  br label %174

173:                                              ; preds = %6
  store i32 1, i32* %7, align 4
  br label %175

174:                                              ; preds = %109, %104
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %174, %173, %108, %34
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local i32 @ep93xxfb_writel(%struct.ep93xx_fbi*, i32, i32) #1

declare dso_local i32 @ep93xxfb_readl(%struct.ep93xx_fbi*, i32) #1

declare dso_local i32 @ep93xxfb_convert_color(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
