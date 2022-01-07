; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s1d13xxxfb.c_s1d13xxxfb_bitblt_solidfill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s1d13xxxfb.c_s1d13xxxfb_bitblt_solidfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i64 }

@s1d13xxxfb_bitblt_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"(solidfill) dx=%d, dy=%d, stride=%d, dest=%d\0A(solidfill) : rect_width=%d, rect_height=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"(solidfill) : xres=%d, yres=%d, bpp=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"(solidfill) : rop=%d\0A\00", align 1
@S1DREG_BBLT_DST_START0 = common dso_local global i32 0, align 4
@S1DREG_BBLT_DST_START1 = common dso_local global i32 0, align 4
@S1DREG_BBLT_DST_START2 = common dso_local global i32 0, align 4
@S1DREG_BBLT_WIDTH0 = common dso_local global i32 0, align 4
@S1DREG_BBLT_WIDTH1 = common dso_local global i32 0, align 4
@S1DREG_BBLT_HEIGHT0 = common dso_local global i32 0, align 4
@S1DREG_BBLT_HEIGHT1 = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"(solidfill) truecolor/directcolor\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"(solidfill) pseudo_palette[%d] = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"(solidfill) color = %d\0A\00", align 1
@S1DREG_BBLT_FGC0 = common dso_local global i32 0, align 4
@S1DREG_BBLT_FGC1 = common dso_local global i32 0, align 4
@S1DREG_BBLT_CTL0 = common dso_local global i32 0, align 4
@S1DREG_BBLT_OP = common dso_local global i32 0, align 4
@BBLT_SOLID_FILL = common dso_local global i32 0, align 4
@S1DREG_BBLT_CTL1 = common dso_local global i32 0, align 4
@S1DREG_BBLT_MEM_OFF0 = common dso_local global i32 0, align 4
@S1DREG_BBLT_MEM_OFF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @s1d13xxxfb_bitblt_solidfill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s1d13xxxfb_bitblt_solidfill(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 3
  store i32 %13, i32* %8, align 4
  %14 = call i32 @spin_lock(i32* @s1d13xxxfb_bitblt_lock)
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %15, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %22 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %28 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = add nsw i32 %25, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %33 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %36 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %41 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %45 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %38, i32 %39, i32 %43, i32 %47)
  %49 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %56, i32 %60)
  %62 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %63 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @S1DREG_BBLT_DST_START0, align 4
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 255
  %72 = call i32 @s1d13xxxfb_writereg(i32 %68, i32 %69, i32 %71)
  %73 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @S1DREG_BBLT_DST_START1, align 4
  %77 = load i32, i32* %6, align 4
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 255
  %80 = call i32 @s1d13xxxfb_writereg(i32 %75, i32 %76, i32 %79)
  %81 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @S1DREG_BBLT_DST_START2, align 4
  %85 = load i32, i32* %6, align 4
  %86 = ashr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = call i32 @s1d13xxxfb_writereg(i32 %83, i32 %84, i32 %87)
  %89 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @S1DREG_BBLT_WIDTH0, align 4
  %93 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %94 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, 255
  %97 = sub nsw i32 %96, 1
  %98 = call i32 @s1d13xxxfb_writereg(i32 %91, i32 %92, i32 %97)
  %99 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @S1DREG_BBLT_WIDTH1, align 4
  %103 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %104 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = ashr i32 %105, 8
  %107 = call i32 @s1d13xxxfb_writereg(i32 %101, i32 %102, i32 %106)
  %108 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @S1DREG_BBLT_HEIGHT0, align 4
  %112 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %113 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 255
  %116 = sub nsw i32 %115, 1
  %117 = call i32 @s1d13xxxfb_writereg(i32 %110, i32 %111, i32 %116)
  %118 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %119 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @S1DREG_BBLT_HEIGHT1, align 4
  %122 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %123 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 8
  %126 = call i32 @s1d13xxxfb_writereg(i32 %120, i32 %121, i32 %125)
  %127 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %128 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %2
  %134 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %133, %2
  %141 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %142 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i32*
  %145 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %146 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %7, align 4
  %150 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %151 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %152 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %153, i32 %154)
  br label %165

156:                                              ; preds = %133
  %157 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %158 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %7, align 4
  %161 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %162 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %163)
  br label %165

165:                                              ; preds = %156, %140
  %166 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %167 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @S1DREG_BBLT_FGC0, align 4
  %170 = load i32, i32* %7, align 4
  %171 = and i32 %170, 255
  %172 = call i32 @s1d13xxxfb_writereg(i32 %168, i32 %169, i32 %171)
  %173 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %174 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @S1DREG_BBLT_FGC1, align 4
  %177 = load i32, i32* %7, align 4
  %178 = ashr i32 %177, 8
  %179 = and i32 %178, 255
  %180 = call i32 @s1d13xxxfb_writereg(i32 %175, i32 %176, i32 %179)
  %181 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %182 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @S1DREG_BBLT_CTL0, align 4
  %185 = call i32 @s1d13xxxfb_writereg(i32 %183, i32 %184, i32 0)
  %186 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @S1DREG_BBLT_OP, align 4
  %190 = load i32, i32* @BBLT_SOLID_FILL, align 4
  %191 = call i32 @s1d13xxxfb_writereg(i32 %188, i32 %189, i32 %190)
  %192 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %193 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @S1DREG_BBLT_CTL1, align 4
  %196 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %197 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = ashr i32 %199, 4
  %201 = call i32 @s1d13xxxfb_writereg(i32 %194, i32 %195, i32 %200)
  %202 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %203 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @S1DREG_BBLT_MEM_OFF0, align 4
  %206 = load i32, i32* %5, align 4
  %207 = ashr i32 %206, 1
  %208 = and i32 %207, 255
  %209 = call i32 @s1d13xxxfb_writereg(i32 %204, i32 %205, i32 %208)
  %210 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %211 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @S1DREG_BBLT_MEM_OFF1, align 4
  %214 = load i32, i32* %5, align 4
  %215 = ashr i32 %214, 9
  %216 = call i32 @s1d13xxxfb_writereg(i32 %212, i32 %213, i32 %215)
  %217 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %218 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @S1DREG_BBLT_CTL0, align 4
  %221 = call i32 @s1d13xxxfb_writereg(i32 %219, i32 %220, i32 128)
  %222 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %223 = call i32 @bltbit_wait_bitclear(%struct.fb_info* %222, i32 128, i32 8000)
  %224 = call i32 @spin_unlock(i32* @s1d13xxxfb_bitblt_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dbg_blit(i8*, ...) #1

declare dso_local i32 @s1d13xxxfb_writereg(i32, i32, i32) #1

declare dso_local i32 @bltbit_wait_bitclear(%struct.fb_info*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
