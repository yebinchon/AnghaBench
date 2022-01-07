; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_accel.c_radeonfb_prim_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_accel.c_radeonfb_prim_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@DP_GUI_MASTER_CNTL = common dso_local global i32 0, align 4
@GMC_BRUSH_NONE = common dso_local global i32 0, align 4
@GMC_SRC_DSTCOLOR = common dso_local global i32 0, align 4
@ROP3_S = common dso_local global i32 0, align 4
@DP_SRC_SOURCE_MEMORY = common dso_local global i32 0, align 4
@DP_WRITE_MSK = common dso_local global i32 0, align 4
@DP_CNTL = common dso_local global i32 0, align 4
@DST_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@DST_Y_TOP_TO_BOTTOM = common dso_local global i32 0, align 4
@DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@RB2D_DC_FLUSH_ALL = common dso_local global i32 0, align 4
@WAIT_UNTIL = common dso_local global i32 0, align 4
@WAIT_2D_IDLECLEAN = common dso_local global i32 0, align 4
@WAIT_DMA_GUI_IDLE = common dso_local global i32 0, align 4
@SRC_Y_X = common dso_local global i32 0, align 4
@DST_Y_X = common dso_local global i32 0, align 4
@DST_HEIGHT_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeonfb_info*, %struct.fb_copyarea*)* @radeonfb_prim_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeonfb_prim_copyarea(%struct.radeonfb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.radeonfb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %13 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %14 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %17 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %20 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %23 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %26 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %29 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %2
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %39, %2
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %51, %48
  %61 = call i32 @radeon_fifo_wait(i32 3)
  %62 = load i32, i32* @DP_GUI_MASTER_CNTL, align 4
  %63 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %64 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GMC_BRUSH_NONE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @GMC_SRC_DSTCOLOR, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @ROP3_S, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @DP_SRC_SOURCE_MEMORY, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @OUTREG(i32 %62, i32 %73)
  %75 = load i32, i32* @DP_WRITE_MSK, align 4
  %76 = call i32 @OUTREG(i32 %75, i32 -1)
  %77 = load i32, i32* @DP_CNTL, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %60
  %81 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  br label %83

82:                                               ; preds = %60
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = load i32, i32* %6, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @DST_Y_TOP_TO_BOTTOM, align 4
  br label %90

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ]
  %92 = or i32 %84, %91
  %93 = call i32 @OUTREG(i32 %77, i32 %92)
  %94 = call i32 @radeon_fifo_wait(i32 2)
  %95 = load i32, i32* @DSTCACHE_CTLSTAT, align 4
  %96 = load i32, i32* @RB2D_DC_FLUSH_ALL, align 4
  %97 = call i32 @OUTREG(i32 %95, i32 %96)
  %98 = load i32, i32* @WAIT_UNTIL, align 4
  %99 = load i32, i32* @WAIT_2D_IDLECLEAN, align 4
  %100 = load i32, i32* @WAIT_DMA_GUI_IDLE, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @OUTREG(i32 %98, i32 %101)
  %103 = call i32 @radeon_fifo_wait(i32 3)
  %104 = load i32, i32* @SRC_Y_X, align 4
  %105 = load i32, i32* %8, align 4
  %106 = shl i32 %105, 16
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @OUTREG(i32 %104, i32 %108)
  %110 = load i32, i32* @DST_Y_X, align 4
  %111 = load i32, i32* %10, align 4
  %112 = shl i32 %111, 16
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @OUTREG(i32 %110, i32 %114)
  %116 = load i32, i32* @DST_HEIGHT_WIDTH, align 4
  %117 = load i32, i32* %12, align 4
  %118 = shl i32 %117, 16
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @OUTREG(i32 %116, i32 %120)
  ret void
}

declare dso_local i32 @radeon_fifo_wait(i32) #1

declare dso_local i32 @OUTREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
