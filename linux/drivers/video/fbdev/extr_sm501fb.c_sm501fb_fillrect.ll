; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.sm501fb_par* }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.sm501fb_par = type { %struct.TYPE_3__, %struct.sm501fb_info* }
%struct.TYPE_3__ = type { i32 }
%struct.sm501fb_info = type { i64 }
%struct.fb_fillrect = type { i32, i32, i64, i64, i32 }

@SM501_2D_SOURCE_BASE = common dso_local global i64 0, align 8
@SM501_2D_DESTINATION_BASE = common dso_local global i64 0, align 8
@SM501_2D_WINDOW_WIDTH = common dso_local global i64 0, align 8
@SM501_2D_PITCH = common dso_local global i64 0, align 8
@SM501_2D_STRETCH = common dso_local global i64 0, align 8
@SM501_2D_COLOR_COMPARE_MASK = common dso_local global i64 0, align 8
@SM501_2D_MASK = common dso_local global i64 0, align 8
@SM501_2D_FOREGROUND = common dso_local global i64 0, align 8
@SM501_2D_DESTINATION = common dso_local global i64 0, align 8
@SM501_2D_DIMENSION = common dso_local global i64 0, align 8
@SM501_2D_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @sm501fb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm501fb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.sm501fb_par*, align 8
  %6 = alloca %struct.sm501fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = load %struct.sm501fb_par*, %struct.sm501fb_par** %10, align 8
  store %struct.sm501fb_par* %11, %struct.sm501fb_par** %5, align 8
  %12 = load %struct.sm501fb_par*, %struct.sm501fb_par** %5, align 8
  %13 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %12, i32 0, i32 1
  %14 = load %struct.sm501fb_info*, %struct.sm501fb_info** %13, align 8
  store %struct.sm501fb_info* %14, %struct.sm501fb_info** %6, align 8
  %15 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %16 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %19 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %22 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %23, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %2
  %30 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %31 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29, %2
  br label %222

39:                                               ; preds = %29
  %40 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %41 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %45, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %39
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %57 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %55, %58
  %60 = sub nsw i64 %59, 1
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %51, %39
  %63 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %64 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %68, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %62
  %75 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %80 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = sub nsw i64 %82, 1
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %74, %62
  %86 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %87 = call i64 @sm501fb_sync(%struct.fb_info* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %222

90:                                               ; preds = %85
  %91 = load %struct.sm501fb_par*, %struct.sm501fb_par** %5, align 8
  %92 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %96 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SM501_2D_SOURCE_BASE, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @smc501_writel(i32 %94, i64 %99)
  %101 = load %struct.sm501fb_par*, %struct.sm501fb_par** %5, align 8
  %102 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %106 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SM501_2D_DESTINATION_BASE, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @smc501_writel(i32 %104, i64 %109)
  %111 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = shl i32 %114, 16
  %116 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %117 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %115, %119
  %121 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %122 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SM501_2D_WINDOW_WIDTH, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @smc501_writel(i32 %120, i64 %125)
  %127 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %128 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = shl i64 %130, 16
  %132 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %133 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = or i64 %131, %135
  %137 = trunc i64 %136 to i32
  %138 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %139 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SM501_2D_PITCH, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @smc501_writel(i32 %137, i64 %142)
  %144 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %145 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %169 [
    i32 8, label %148
    i32 16, label %155
    i32 32, label %162
  ]

148:                                              ; preds = %90
  %149 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %150 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SM501_2D_STRETCH, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @smc501_writel(i32 0, i64 %153)
  br label %169

155:                                              ; preds = %90
  %156 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %157 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SM501_2D_STRETCH, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @smc501_writel(i32 1048576, i64 %160)
  br label %169

162:                                              ; preds = %90
  %163 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %164 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @SM501_2D_STRETCH, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @smc501_writel(i32 2097152, i64 %167)
  br label %169

169:                                              ; preds = %90, %162, %155, %148
  %170 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %171 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @SM501_2D_COLOR_COMPARE_MASK, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @smc501_writel(i32 -1, i64 %174)
  %176 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %177 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @SM501_2D_MASK, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @smc501_writel(i32 -1, i64 %180)
  %182 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %183 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %186 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @SM501_2D_FOREGROUND, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @smc501_writel(i32 %184, i64 %189)
  %191 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %192 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = shl i64 %193, 16
  %195 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %196 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = or i64 %194, %197
  %199 = trunc i64 %198 to i32
  %200 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %201 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @SM501_2D_DESTINATION, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @smc501_writel(i32 %199, i64 %204)
  %206 = load i32, i32* %7, align 4
  %207 = shl i32 %206, 16
  %208 = load i32, i32* %8, align 4
  %209 = or i32 %207, %208
  %210 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %211 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @SM501_2D_DIMENSION, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @smc501_writel(i32 %209, i64 %214)
  %216 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %217 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @SM501_2D_CONTROL, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @smc501_writel(i32 -2147417908, i64 %220)
  br label %222

222:                                              ; preds = %169, %89, %38
  ret void
}

declare dso_local i64 @sm501fb_sync(%struct.fb_info*) #1

declare dso_local i32 @smc501_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
