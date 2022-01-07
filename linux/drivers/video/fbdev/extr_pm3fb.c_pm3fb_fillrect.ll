; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__, %struct.pm3_par* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pm3_par = type { i32 }
%struct.fb_fillrect = type { i64, i64, i32, i32, i32, i32 }

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@ROP_COPY = common dso_local global i64 0, align 8
@PM3Config2D_FBDestReadEnable = common dso_local global i32 0, align 4
@PM3Config2D = common dso_local global i32 0, align 4
@PM3Config2D_UseConstantSource = common dso_local global i32 0, align 4
@PM3Config2D_ForegroundROPEnable = common dso_local global i32 0, align 4
@PM3Config2D_FBWriteEnable = common dso_local global i32 0, align 4
@PM3ForegroundColor = common dso_local global i32 0, align 4
@PM3RectanglePosition = common dso_local global i32 0, align 4
@PM3Render2D = common dso_local global i32 0, align 4
@PM3Render2D_XPositive = common dso_local global i32 0, align 4
@PM3Render2D_YPositive = common dso_local global i32 0, align 4
@PM3Render2D_Operation_Normal = common dso_local global i32 0, align 4
@PM3Render2D_SpanOperation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @pm3fb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm3fb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.pm3_par*, align 8
  %6 = alloca %struct.fb_fillrect, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 5
  %13 = load %struct.pm3_par*, %struct.pm3_par** %12, align 8
  store %struct.pm3_par* %13, %struct.pm3_par** %5, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %26 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %33 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  br label %35

35:                                               ; preds = %31, %20
  %36 = phi i64 [ %30, %20 ], [ %34, %31 ]
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %191

44:                                               ; preds = %35
  %45 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %54 = call i32 @cfb_fillrect(%struct.fb_info* %52, %struct.fb_fillrect* %53)
  br label %191

55:                                               ; preds = %44
  %56 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %57 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ROP_COPY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 @PM3Config2D_ForegroundROP(i32 3)
  store i32 %62, i32* %9, align 4
  br label %67

63:                                               ; preds = %55
  %64 = call i32 @PM3Config2D_ForegroundROP(i32 6)
  %65 = load i32, i32* @PM3Config2D_FBDestReadEnable, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %61
  %68 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %8, align 4
  %76 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %77 = call i32 @memcpy(%struct.fb_fillrect* %6, %struct.fb_fillrect* %76, i32 32)
  %78 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %85, %81, %67
  br label %191

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %98, %100
  %102 = load i32, i32* %7, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %105, %107
  %109 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 2
  store i32 %108, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %96
  %111 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %112, %114
  %116 = load i32, i32* %8, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i32, i32* %8, align 4
  %120 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %119, %121
  %123 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 3
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %118, %110
  %125 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %126 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 8
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load i32, i32* %10, align 4
  %132 = shl i32 %131, 8
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %130, %124
  %136 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %137 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp sle i32 %139, 16
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load i32, i32* %10, align 4
  %143 = shl i32 %142, 16
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %141, %135
  %147 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %148 = call i32 @PM3_WAIT(%struct.pm3_par* %147, i32 4)
  %149 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %150 = load i32, i32* @PM3Config2D, align 4
  %151 = load i32, i32* @PM3Config2D_UseConstantSource, align 4
  %152 = load i32, i32* @PM3Config2D_ForegroundROPEnable, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* %9, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @PM3Config2D_FBWriteEnable, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %149, i32 %150, i32 %157)
  %159 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %160 = load i32, i32* @PM3ForegroundColor, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %159, i32 %160, i32 %161)
  %163 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %164 = load i32, i32* @PM3RectanglePosition, align 4
  %165 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @PM3RectanglePosition_XOffset(i32 %166)
  %168 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @PM3RectanglePosition_YOffset(i32 %169)
  %171 = or i32 %167, %170
  %172 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %163, i32 %164, i32 %171)
  %173 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %174 = load i32, i32* @PM3Render2D, align 4
  %175 = load i32, i32* @PM3Render2D_XPositive, align 4
  %176 = load i32, i32* @PM3Render2D_YPositive, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @PM3Render2D_Operation_Normal, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @PM3Render2D_SpanOperation, align 4
  %181 = or i32 %179, %180
  %182 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @PM3Render2D_Width(i32 %183)
  %185 = or i32 %181, %184
  %186 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @PM3Render2D_Height(i32 %187)
  %189 = or i32 %185, %188
  %190 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %173, i32 %174, i32 %189)
  br label %191

191:                                              ; preds = %146, %95, %51, %43
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @PM3Config2D_ForegroundROP(i32) #1

declare dso_local i32 @memcpy(%struct.fb_fillrect*, %struct.fb_fillrect*, i32) #1

declare dso_local i32 @PM3_WAIT(%struct.pm3_par*, i32) #1

declare dso_local i32 @PM3_WRITE_REG(%struct.pm3_par*, i32, i32) #1

declare dso_local i32 @PM3RectanglePosition_XOffset(i32) #1

declare dso_local i32 @PM3RectanglePosition_YOffset(i32) #1

declare dso_local i32 @PM3Render2D_Width(i32) #1

declare dso_local i32 @PM3Render2D_Height(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
