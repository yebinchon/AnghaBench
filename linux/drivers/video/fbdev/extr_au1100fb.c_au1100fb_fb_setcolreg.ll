; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1100fb.c_au1100fb_fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_au1100fb.c_au1100fb_fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_12__, i64, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.au1100fb_device = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@AU1100_LCD_NBR_PALETTE_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au1100fb_fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.au1100fb_device*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %18 = call %struct.au1100fb_device* @to_au1100fb_device(%struct.fb_info* %17)
  store %struct.au1100fb_device* %18, %struct.au1100fb_device** %14, align 8
  %19 = load %struct.au1100fb_device*, %struct.au1100fb_device** %14, align 8
  %20 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %15, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @AU1100_LCD_NBR_PALETTE_ENTRIES, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp ugt i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %187

31:                                               ; preds = %6
  %32 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = mul i32 19595, %38
  %40 = load i32, i32* %10, align 4
  %41 = mul i32 38470, %40
  %42 = add i32 %39, %41
  %43 = load i32, i32* %11, align 4
  %44 = mul i32 7471, %43
  %45 = add i32 %42, %44
  %46 = lshr i32 %45, 16
  store i32 %46, i32* %11, align 4
  store i32 %46, i32* %10, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %37, %31
  %48 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %114

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = icmp ugt i32 %55, 16
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %187

60:                                               ; preds = %54
  %61 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %15, align 8
  %65 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 16, %69
  %71 = load i32, i32* %9, align 4
  %72 = lshr i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 16, %77
  %79 = load i32, i32* %10, align 4
  %80 = lshr i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 16, %85
  %87 = load i32, i32* %11, align 4
  %88 = lshr i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %89, %94
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %96, %101
  %103 = or i32 %95, %102
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %104, %109
  %111 = or i32 %103, %110
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = and i32 %112, 65535
  store i32 %113, i32* %16, align 4
  br label %181

114:                                              ; preds = %47
  %115 = load %struct.au1100fb_device*, %struct.au1100fb_device** %14, align 8
  %116 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @panel_is_active(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %114
  %121 = load i32, i32* %9, align 4
  %122 = and i32 %121, 63488
  %123 = load i32, i32* %10, align 4
  %124 = lshr i32 %123, 5
  %125 = and i32 %124, 2016
  %126 = or i32 %122, %125
  %127 = load i32, i32* %11, align 4
  %128 = lshr i32 %127, 11
  %129 = and i32 %128, 31
  %130 = or i32 %126, %129
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = and i32 %131, 65535
  store i32 %132, i32* %16, align 4
  br label %180

133:                                              ; preds = %114
  %134 = load %struct.au1100fb_device*, %struct.au1100fb_device** %14, align 8
  %135 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @panel_is_color(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %173

139:                                              ; preds = %133
  %140 = load %struct.au1100fb_device*, %struct.au1100fb_device** %14, align 8
  %141 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @panel_swap_rgb(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* %11, align 4
  br label %149

147:                                              ; preds = %139
  %148 = load i32, i32* %9, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = lshr i32 %150, 12
  %152 = and i32 %151, 15
  %153 = load i32, i32* %10, align 4
  %154 = lshr i32 %153, 8
  %155 = and i32 %154, 240
  %156 = or i32 %152, %155
  %157 = load %struct.au1100fb_device*, %struct.au1100fb_device** %14, align 8
  %158 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @panel_swap_rgb(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %149
  %163 = load i32, i32* %9, align 4
  br label %166

164:                                              ; preds = %149
  %165 = load i32, i32* %11, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  %168 = lshr i32 %167, 4
  %169 = and i32 %168, 3840
  %170 = or i32 %156, %169
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %16, align 4
  %172 = and i32 %171, 4095
  store i32 %172, i32* %16, align 4
  br label %179

173:                                              ; preds = %133
  %174 = load i32, i32* %10, align 4
  %175 = lshr i32 %174, 12
  %176 = and i32 %175, 15
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %16, align 4
  %178 = and i32 %177, 15
  store i32 %178, i32* %16, align 4
  br label %179

179:                                              ; preds = %173, %166
  br label %180

180:                                              ; preds = %179, %120
  br label %181

181:                                              ; preds = %180, %60
  %182 = load i32, i32* %16, align 4
  %183 = load i32*, i32** %15, align 8
  %184 = load i32, i32* %8, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %182, i32* %186, align 4
  store i32 0, i32* %7, align 4
  br label %187

187:                                              ; preds = %181, %57, %28
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local %struct.au1100fb_device* @to_au1100fb_device(%struct.fb_info*) #1

declare dso_local i64 @panel_is_active(i32) #1

declare dso_local i64 @panel_is_color(i32) #1

declare dso_local i64 @panel_swap_rgb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
