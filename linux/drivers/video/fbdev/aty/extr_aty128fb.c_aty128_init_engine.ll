; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_aty128fb.c_aty128_init_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_aty128fb.c_aty128_init_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aty128fb_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SCALE_3D_CNTL = common dso_local global i32 0, align 4
@DEFAULT_OFFSET = common dso_local global i32 0, align 4
@DEFAULT_PITCH = common dso_local global i32 0, align 4
@DEFAULT_SC_BOTTOM_RIGHT = common dso_local global i32 0, align 4
@DP_GUI_MASTER_CNTL = common dso_local global i32 0, align 4
@GMC_SRC_PITCH_OFFSET_DEFAULT = common dso_local global i32 0, align 4
@GMC_DST_PITCH_OFFSET_DEFAULT = common dso_local global i32 0, align 4
@GMC_SRC_CLIP_DEFAULT = common dso_local global i32 0, align 4
@GMC_DST_CLIP_DEFAULT = common dso_local global i32 0, align 4
@GMC_BRUSH_SOLIDCOLOR = common dso_local global i32 0, align 4
@GMC_SRC_DSTCOLOR = common dso_local global i32 0, align 4
@GMC_BYTE_ORDER_MSB_TO_LSB = common dso_local global i32 0, align 4
@GMC_DP_CONVERSION_TEMP_6500 = common dso_local global i32 0, align 4
@ROP3_PATCOPY = common dso_local global i32 0, align 4
@GMC_DP_SRC_RECT = common dso_local global i32 0, align 4
@GMC_3D_FCN_EN_CLR = common dso_local global i32 0, align 4
@GMC_DST_CLR_CMP_FCN_CLEAR = common dso_local global i32 0, align 4
@GMC_AUX_CLIP_CLEAR = common dso_local global i32 0, align 4
@GMC_WRITE_MASK_SET = common dso_local global i32 0, align 4
@DST_BRES_ERR = common dso_local global i32 0, align 4
@DST_BRES_INC = common dso_local global i32 0, align 4
@DST_BRES_DEC = common dso_local global i32 0, align 4
@DP_BRUSH_FRGD_CLR = common dso_local global i32 0, align 4
@DP_BRUSH_BKGD_CLR = common dso_local global i32 0, align 4
@DP_SRC_FRGD_CLR = common dso_local global i32 0, align 4
@DP_SRC_BKGD_CLR = common dso_local global i32 0, align 4
@DP_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aty128fb_par*)* @aty128_init_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aty128_init_engine(%struct.aty128fb_par* %0) #0 {
  %2 = alloca %struct.aty128fb_par*, align 8
  %3 = alloca i32, align 4
  store %struct.aty128fb_par* %0, %struct.aty128fb_par** %2, align 8
  %4 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %5 = call i32 @wait_for_idle(%struct.aty128fb_par* %4)
  %6 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %7 = call i32 @wait_for_fifo(i32 1, %struct.aty128fb_par* %6)
  %8 = load i32, i32* @SCALE_3D_CNTL, align 4
  %9 = call i32 @aty_st_le32(i32 %8, i32 0)
  %10 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %11 = call i32 @aty128_reset_engine(%struct.aty128fb_par* %10)
  %12 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %13 = getelementptr inbounds %struct.aty128fb_par, %struct.aty128fb_par* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %17 = getelementptr inbounds %struct.aty128fb_par, %struct.aty128fb_par* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 24
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %22, 3
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %26 = call i32 @wait_for_fifo(i32 4, %struct.aty128fb_par* %25)
  %27 = load i32, i32* @DEFAULT_OFFSET, align 4
  %28 = call i32 @aty_st_le32(i32 %27, i32 0)
  %29 = load i32, i32* @DEFAULT_PITCH, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @aty_st_le32(i32 %29, i32 %30)
  %32 = load i32, i32* @DEFAULT_SC_BOTTOM_RIGHT, align 4
  %33 = call i32 @aty_st_le32(i32 %32, i32 536813567)
  %34 = load i32, i32* @DP_GUI_MASTER_CNTL, align 4
  %35 = load i32, i32* @GMC_SRC_PITCH_OFFSET_DEFAULT, align 4
  %36 = load i32, i32* @GMC_DST_PITCH_OFFSET_DEFAULT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @GMC_SRC_CLIP_DEFAULT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @GMC_DST_CLIP_DEFAULT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @GMC_BRUSH_SOLIDCOLOR, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %45 = getelementptr inbounds %struct.aty128fb_par, %struct.aty128fb_par* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @depth_to_dst(i32 %47)
  %49 = shl i32 %48, 8
  %50 = or i32 %43, %49
  %51 = load i32, i32* @GMC_SRC_DSTCOLOR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @GMC_BYTE_ORDER_MSB_TO_LSB, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @GMC_DP_CONVERSION_TEMP_6500, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ROP3_PATCOPY, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @GMC_DP_SRC_RECT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @GMC_3D_FCN_EN_CLR, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @GMC_DST_CLR_CMP_FCN_CLEAR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @GMC_AUX_CLIP_CLEAR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @GMC_WRITE_MASK_SET, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @aty_st_le32(i32 %34, i32 %68)
  %70 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %71 = call i32 @wait_for_fifo(i32 8, %struct.aty128fb_par* %70)
  %72 = load i32, i32* @DST_BRES_ERR, align 4
  %73 = call i32 @aty_st_le32(i32 %72, i32 0)
  %74 = load i32, i32* @DST_BRES_INC, align 4
  %75 = call i32 @aty_st_le32(i32 %74, i32 0)
  %76 = load i32, i32* @DST_BRES_DEC, align 4
  %77 = call i32 @aty_st_le32(i32 %76, i32 0)
  %78 = load i32, i32* @DP_BRUSH_FRGD_CLR, align 4
  %79 = call i32 @aty_st_le32(i32 %78, i32 -1)
  %80 = load i32, i32* @DP_BRUSH_BKGD_CLR, align 4
  %81 = call i32 @aty_st_le32(i32 %80, i32 0)
  %82 = load i32, i32* @DP_SRC_FRGD_CLR, align 4
  %83 = call i32 @aty_st_le32(i32 %82, i32 -1)
  %84 = load i32, i32* @DP_SRC_BKGD_CLR, align 4
  %85 = call i32 @aty_st_le32(i32 %84, i32 0)
  %86 = load i32, i32* @DP_WRITE_MASK, align 4
  %87 = call i32 @aty_st_le32(i32 %86, i32 -1)
  %88 = load %struct.aty128fb_par*, %struct.aty128fb_par** %2, align 8
  %89 = call i32 @wait_for_idle(%struct.aty128fb_par* %88)
  ret void
}

declare dso_local i32 @wait_for_idle(%struct.aty128fb_par*) #1

declare dso_local i32 @wait_for_fifo(i32, %struct.aty128fb_par*) #1

declare dso_local i32 @aty_st_le32(i32, i32) #1

declare dso_local i32 @aty128_reset_engine(%struct.aty128fb_par*) #1

declare dso_local i32 @depth_to_dst(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
