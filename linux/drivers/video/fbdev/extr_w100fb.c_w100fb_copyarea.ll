; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100fb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100fb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%union.dp_gui_master_cntl_u = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@remapped_regs = common dso_local global i64 0, align 8
@mmDP_GUI_MASTER_CNTL = common dso_local global i64 0, align 8
@ROP3_SRCCOPY = common dso_local global i32 0, align 4
@GMC_BRUSH_NONE = common dso_local global i32 0, align 4
@mmSRC_Y_X = common dso_local global i64 0, align 8
@mmDST_Y_X = common dso_local global i64 0, align 8
@mmDST_WIDTH_HEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @w100fb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100fb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.dp_gui_master_cntl_u, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %12 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %13 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %16 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %19 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %22 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %25 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %28 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %94

36:                                               ; preds = %2
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %45 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %46 = call i32 @cfb_copyarea(%struct.fb_info* %44, %struct.fb_copyarea* %45)
  br label %94

47:                                               ; preds = %36
  %48 = load i64, i64* @remapped_regs, align 8
  %49 = load i64, i64* @mmDP_GUI_MASTER_CNTL, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  %52 = bitcast %union.dp_gui_master_cntl_u* %11 to i32*
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @ROP3_SRCCOPY, align 4
  %54 = bitcast %union.dp_gui_master_cntl_u* %11 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @GMC_BRUSH_NONE, align 4
  %57 = bitcast %union.dp_gui_master_cntl_u* %11 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = call i32 @w100_fifo_wait(i32 1)
  %60 = bitcast %union.dp_gui_master_cntl_u* %11 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* @remapped_regs, align 8
  %63 = load i64, i64* @mmDP_GUI_MASTER_CNTL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %61, i64 %64)
  %66 = call i32 @w100_fifo_wait(i32 3)
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 %67, 16
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 65535
  %71 = or i32 %68, %70
  %72 = load i64, i64* @remapped_regs, align 8
  %73 = load i64, i64* @mmSRC_Y_X, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %71, i64 %74)
  %76 = load i32, i32* %6, align 4
  %77 = shl i32 %76, 16
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, 65535
  %80 = or i32 %77, %79
  %81 = load i64, i64* @remapped_regs, align 8
  %82 = load i64, i64* @mmDST_Y_X, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %80, i64 %83)
  %85 = load i32, i32* %10, align 4
  %86 = shl i32 %85, 16
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, 65535
  %89 = or i32 %86, %88
  %90 = load i64, i64* @remapped_regs, align 8
  %91 = load i64, i64* @mmDST_WIDTH_HEIGHT, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %89, i64 %92)
  br label %94

94:                                               ; preds = %47, %43, %35
  ret void
}

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @w100_fifo_wait(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
