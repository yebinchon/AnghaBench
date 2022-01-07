; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s1d13xxxfb.c_s1d13xxxfb_bitblt_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s1d13xxxfb.c_s1d13xxxfb_bitblt_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@s1d13xxxfb_bitblt_lock = common dso_local global i32 0, align 4
@S1DREG_BBLT_SRC_START0 = common dso_local global i32 0, align 4
@S1DREG_BBLT_SRC_START1 = common dso_local global i32 0, align 4
@S1DREG_BBLT_SRC_START2 = common dso_local global i32 0, align 4
@S1DREG_BBLT_DST_START0 = common dso_local global i32 0, align 4
@S1DREG_BBLT_DST_START1 = common dso_local global i32 0, align 4
@S1DREG_BBLT_DST_START2 = common dso_local global i32 0, align 4
@S1DREG_BBLT_WIDTH0 = common dso_local global i32 0, align 4
@S1DREG_BBLT_WIDTH1 = common dso_local global i32 0, align 4
@S1DREG_BBLT_HEIGHT0 = common dso_local global i32 0, align 4
@S1DREG_BBLT_HEIGHT1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"(copyarea) negative rop\0A\00", align 1
@S1DREG_BBLT_OP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"(copyarea) positive rop\0A\00", align 1
@S1DREG_BBLT_CTL0 = common dso_local global i32 0, align 4
@S1DREG_BBLT_CTL1 = common dso_local global i32 0, align 4
@S1DREG_BBLT_MEM_OFF0 = common dso_local global i32 0, align 4
@S1DREG_BBLT_MEM_OFF1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"(copyarea) dx=%d, dy=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"(copyarea) sx=%d, sy=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"(copyarea) width=%d, height=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"(copyarea) stride=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"(copyarea) bpp=%d=0x0%d, mem_offset1=%d, mem_offset2=%d\0A\00", align 1
@S1DREG_BBLT_CC_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @s1d13xxxfb_bitblt_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s1d13xxxfb_bitblt_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %17 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %20 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %23 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %26 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %29 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %32 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = call i32 @spin_lock(i32* @s1d13xxxfb_bitblt_lock)
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 3
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %40, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %2
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %53, %2
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = mul nsw i32 %64, %68
  %70 = add nsw i32 %63, %69
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = mul nsw i32 %77, %81
  %83 = add nsw i32 %76, %82
  store i32 %83, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %99

84:                                               ; preds = %53, %49
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %11, align 4
  %90 = mul nsw i32 %88, %89
  %91 = add nsw i32 %87, %90
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %9, align 4
  %97 = mul nsw i32 %95, %96
  %98 = add nsw i32 %94, %97
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %84, %57
  %100 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @S1DREG_BBLT_SRC_START0, align 4
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, 255
  %106 = call i32 @s1d13xxxfb_writereg(i32 %102, i32 %103, i32 %105)
  %107 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @S1DREG_BBLT_SRC_START1, align 4
  %111 = load i32, i32* %6, align 4
  %112 = ashr i32 %111, 8
  %113 = and i32 %112, 255
  %114 = call i32 @s1d13xxxfb_writereg(i32 %109, i32 %110, i32 %113)
  %115 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @S1DREG_BBLT_SRC_START2, align 4
  %119 = load i32, i32* %6, align 4
  %120 = ashr i32 %119, 16
  %121 = and i32 %120, 255
  %122 = call i32 @s1d13xxxfb_writereg(i32 %117, i32 %118, i32 %121)
  %123 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %124 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @S1DREG_BBLT_DST_START0, align 4
  %127 = load i32, i32* %5, align 4
  %128 = and i32 %127, 255
  %129 = call i32 @s1d13xxxfb_writereg(i32 %125, i32 %126, i32 %128)
  %130 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %131 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @S1DREG_BBLT_DST_START1, align 4
  %134 = load i32, i32* %5, align 4
  %135 = ashr i32 %134, 8
  %136 = and i32 %135, 255
  %137 = call i32 @s1d13xxxfb_writereg(i32 %132, i32 %133, i32 %136)
  %138 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @S1DREG_BBLT_DST_START2, align 4
  %142 = load i32, i32* %5, align 4
  %143 = ashr i32 %142, 16
  %144 = and i32 %143, 255
  %145 = call i32 @s1d13xxxfb_writereg(i32 %140, i32 %141, i32 %144)
  %146 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %147 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @S1DREG_BBLT_WIDTH0, align 4
  %150 = load i32, i32* %13, align 4
  %151 = and i32 %150, 255
  %152 = sub nsw i32 %151, 1
  %153 = call i32 @s1d13xxxfb_writereg(i32 %148, i32 %149, i32 %152)
  %154 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %155 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @S1DREG_BBLT_WIDTH1, align 4
  %158 = load i32, i32* %13, align 4
  %159 = ashr i32 %158, 8
  %160 = call i32 @s1d13xxxfb_writereg(i32 %156, i32 %157, i32 %159)
  %161 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %162 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @S1DREG_BBLT_HEIGHT0, align 4
  %165 = load i32, i32* %14, align 4
  %166 = and i32 %165, 255
  %167 = sub nsw i32 %166, 1
  %168 = call i32 @s1d13xxxfb_writereg(i32 %163, i32 %164, i32 %167)
  %169 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %170 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @S1DREG_BBLT_HEIGHT1, align 4
  %173 = load i32, i32* %14, align 4
  %174 = ashr i32 %173, 8
  %175 = call i32 @s1d13xxxfb_writereg(i32 %171, i32 %172, i32 %174)
  %176 = load i32, i32* %8, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %185

178:                                              ; preds = %99
  %179 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %180 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %181 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @S1DREG_BBLT_OP, align 4
  %184 = call i32 @s1d13xxxfb_writereg(i32 %182, i32 %183, i32 3)
  br label %192

185:                                              ; preds = %99
  %186 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @S1DREG_BBLT_OP, align 4
  %190 = call i32 @s1d13xxxfb_writereg(i32 %188, i32 %189, i32 2)
  %191 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %192

192:                                              ; preds = %185, %178
  %193 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %194 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @S1DREG_BBLT_CTL0, align 4
  %197 = call i32 @s1d13xxxfb_writereg(i32 %195, i32 %196, i32 0)
  %198 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %199 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @S1DREG_BBLT_CTL1, align 4
  %202 = load i32, i32* %15, align 4
  %203 = ashr i32 %202, 1
  %204 = call i32 @s1d13xxxfb_writereg(i32 %200, i32 %201, i32 %203)
  %205 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %206 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @S1DREG_BBLT_MEM_OFF0, align 4
  %209 = load i32, i32* %7, align 4
  %210 = ashr i32 %209, 1
  %211 = and i32 %210, 255
  %212 = call i32 @s1d13xxxfb_writereg(i32 %207, i32 %208, i32 %211)
  %213 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %214 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @S1DREG_BBLT_MEM_OFF1, align 4
  %217 = load i32, i32* %7, align 4
  %218 = ashr i32 %217, 9
  %219 = call i32 @s1d13xxxfb_writereg(i32 %215, i32 %216, i32 %218)
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %12, align 4
  %222 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %220, i32 %221)
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %10, align 4
  %225 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %223, i32 %224)
  %226 = load i32, i32* %13, align 4
  %227 = sub nsw i32 %226, 1
  %228 = load i32, i32* %14, align 4
  %229 = sub nsw i32 %228, 1
  %230 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %227, i32 %229)
  %231 = load i32, i32* %7, align 4
  %232 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* %15, align 4
  %235 = ashr i32 %234, 1
  %236 = load i32, i32* %7, align 4
  %237 = ashr i32 %236, 1
  %238 = and i32 %237, 255
  %239 = load i32, i32* %7, align 4
  %240 = ashr i32 %239, 9
  %241 = call i32 (i8*, ...) @dbg_blit(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %233, i32 %235, i32 %238, i32 %240)
  %242 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %243 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @S1DREG_BBLT_CC_EXP, align 4
  %246 = call i32 @s1d13xxxfb_writereg(i32 %244, i32 %245, i32 12)
  %247 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %248 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @S1DREG_BBLT_CTL0, align 4
  %251 = call i32 @s1d13xxxfb_writereg(i32 %249, i32 %250, i32 128)
  %252 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %253 = call i32 @bltbit_wait_bitclear(%struct.fb_info* %252, i32 128, i32 8000)
  %254 = call i32 @spin_unlock(i32* @s1d13xxxfb_bitblt_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @s1d13xxxfb_writereg(i32, i32, i32) #1

declare dso_local i32 @dbg_blit(i8*, ...) #1

declare dso_local i32 @bltbit_wait_bitclear(%struct.fb_info*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
