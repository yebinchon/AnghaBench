; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tmiofb.c_tmiofb_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tmiofb.c_tmiofb_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_videomode*, %struct.tmiofb_par* }
%struct.fb_videomode = type { i32, i32, i32 }
%struct.tmiofb_par = type { i64 }
%struct.fb_vblank = type { i32, i32 }

@LCR_CDLN = common dso_local global i64 0, align 8
@FB_VBLANK_HAVE_VBLANK = common dso_local global i32 0, align 4
@FB_VBLANK_HAVE_VCOUNT = common dso_local global i32 0, align 4
@FB_VBLANK_HAVE_VSYNC = common dso_local global i32 0, align 4
@FB_VBLANK_VSYNCING = common dso_local global i32 0, align 4
@FB_VBLANK_VBLANKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_vblank*)* @tmiofb_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmiofb_vblank(%struct.fb_info* %0, %struct.fb_vblank* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_vblank*, align 8
  %5 = alloca %struct.tmiofb_par*, align 8
  %6 = alloca %struct.fb_videomode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_vblank* %1, %struct.fb_vblank** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = load %struct.tmiofb_par*, %struct.tmiofb_par** %10, align 8
  store %struct.tmiofb_par* %11, %struct.tmiofb_par** %5, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load %struct.fb_videomode*, %struct.fb_videomode** %13, align 8
  store %struct.fb_videomode* %14, %struct.fb_videomode** %6, align 8
  %15 = load %struct.tmiofb_par*, %struct.tmiofb_par** %5, align 8
  %16 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LCR_CDLN, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @tmio_ioread16(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %22 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %25 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %23, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %30 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @FB_VBLANK_HAVE_VBLANK, align 4
  %32 = load i32, i32* @FB_VBLANK_HAVE_VCOUNT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @FB_VBLANK_HAVE_VSYNC, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %37 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %40 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %2
  %44 = load i32, i32* @FB_VBLANK_VSYNCING, align 4
  %45 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %46 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %2
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %57 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %55, %58
  %60 = icmp ugt i32 %54, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53, %49
  %62 = load i32, i32* @FB_VBLANK_VBLANKING, align 4
  %63 = load %struct.fb_vblank*, %struct.fb_vblank** %4, align 8
  %64 = getelementptr inbounds %struct.fb_vblank, %struct.fb_vblank* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %53
  ret i32 0
}

declare dso_local i32 @tmio_ioread16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
