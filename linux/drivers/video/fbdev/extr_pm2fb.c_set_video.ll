; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_set_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_set_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2fb_par = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"video = 0x%x\0A\00", align 1
@PM2F_HSYNC_MASK = common dso_local global i32 0, align 4
@PM2F_VSYNC_MASK = common dso_local global i32 0, align 4
@PM2F_HSYNC_ACT_HIGH = common dso_local global i32 0, align 4
@PM2F_VSYNC_ACT_HIGH = common dso_local global i32 0, align 4
@PM2R_VIDEO_CONTROL = common dso_local global i32 0, align 4
@PM2F_RD_PALETTE_WIDTH_8 = common dso_local global i32 0, align 4
@PM2F_HSYNC_ACT_LOW = common dso_local global i32 0, align 4
@PM2F_VSYNC_ACT_LOW = common dso_local global i32 0, align 4
@PM2I_RD_MISC_CONTROL = common dso_local global i32 0, align 4
@PM2VI_RD_SYNC_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm2fb_par*, i32)* @set_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_video(%struct.pm2fb_par* %0, i32 %1) #0 {
  %3 = alloca %struct.pm2fb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm2fb_par* %0, %struct.pm2fb_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @DPRINTK(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @PM2F_HSYNC_MASK, align 4
  %11 = load i32, i32* @PM2F_VSYNC_MASK, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @PM2F_HSYNC_ACT_HIGH, align 4
  %17 = load i32, i32* @PM2F_VSYNC_ACT_HIGH, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %22 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %21, i32 3)
  %23 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %24 = load i32, i32* @PM2R_VIDEO_CONTROL, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pm2_WR(%struct.pm2fb_par* %23, i32 %24, i32 %25)
  %27 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %28 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %77 [
    i32 129, label %30
    i32 128, label %54
  ]

30:                                               ; preds = %2
  %31 = load i32, i32* @PM2F_RD_PALETTE_WIDTH_8, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PM2F_HSYNC_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @PM2F_HSYNC_ACT_LOW, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @PM2F_VSYNC_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @PM2F_VSYNC_ACT_LOW, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, 8
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %51 = load i32, i32* @PM2I_RD_MISC_CONTROL, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @pm2_RDAC_WR(%struct.pm2fb_par* %50, i32 %51, i32 %52)
  br label %77

54:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @PM2F_HSYNC_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @PM2F_HSYNC_ACT_LOW, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @PM2F_VSYNC_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @PM2F_VSYNC_ACT_LOW, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %74 = load i32, i32* @PM2VI_RD_SYNC_CONTROL, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @pm2v_RDAC_WR(%struct.pm2fb_par* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %2, %72, %49
  ret void
}

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @WAIT_FIFO(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @pm2_RDAC_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @pm2v_RDAC_WR(%struct.pm2fb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
