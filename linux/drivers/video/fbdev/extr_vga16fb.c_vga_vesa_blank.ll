; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vga16fb.c_vga_vesa_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_vga16fb.c_vga_vesa_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga16fb_par = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@VGA_SEQ_I = common dso_local global i32 0, align 4
@VGA_CRT_IC = common dso_local global i32 0, align 4
@VGA_MIS_R = common dso_local global i32 0, align 4
@VGA_MIS_W = common dso_local global i32 0, align 4
@FB_BLANK_VSYNC_SUSPEND = common dso_local global i32 0, align 4
@VGA_CRTC_V_SYNC_START = common dso_local global i32 0, align 4
@VGA_CRTC_V_SYNC_END = common dso_local global i32 0, align 4
@VGA_CRTC_OVERFLOW = common dso_local global i32 0, align 4
@FB_BLANK_HSYNC_SUSPEND = common dso_local global i32 0, align 4
@VGA_CRTC_H_SYNC_START = common dso_local global i32 0, align 4
@VGA_CRTC_H_SYNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vga16fb_par*, i32)* @vga_vesa_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_vesa_blank(%struct.vga16fb_par* %0, i32 %1) #0 {
  %3 = alloca %struct.vga16fb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.vga16fb_par* %0, %struct.vga16fb_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @VGA_SEQ_I, align 4
  %8 = call i8* @vga_io_r(i32 %7)
  %9 = ptrtoint i8* %8 to i8
  store i8 %9, i8* %5, align 1
  %10 = load i32, i32* @VGA_CRT_IC, align 4
  %11 = call i8* @vga_io_r(i32 %10)
  %12 = ptrtoint i8* %11 to i8
  store i8 %12, i8* %6, align 1
  %13 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %14 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %61, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @VGA_MIS_R, align 4
  %19 = call i8* @vga_io_r(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %22 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = call i8* @vga_io_rcrt(i32 0)
  %25 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %26 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 9
  store i8* %24, i8** %27, align 8
  %28 = call i8* @vga_io_rcrt(i32 1)
  %29 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %30 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 8
  store i8* %28, i8** %31, align 8
  %32 = call i8* @vga_io_rcrt(i32 4)
  %33 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %34 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 7
  store i8* %32, i8** %35, align 8
  %36 = call i8* @vga_io_rcrt(i32 5)
  %37 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %38 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 6
  store i8* %36, i8** %39, align 8
  %40 = call i8* @vga_io_rcrt(i32 7)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %43 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = call i8* @vga_io_rcrt(i32 16)
  %46 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %47 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  store i8* %45, i8** %48, align 8
  %49 = call i8* @vga_io_rcrt(i32 17)
  %50 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %51 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i8* %49, i8** %52, align 8
  %53 = call i8* @vga_io_rcrt(i32 23)
  %54 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %55 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i8* %53, i8** %56, align 8
  %57 = call i32 @vga_io_rseq(i32 1)
  %58 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %59 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  br label %61

61:                                               ; preds = %17, %2
  %62 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %63 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, 32
  %67 = call i32 @vga_io_wseq(i32 1, i32 %66)
  %68 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %69 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 128
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %82

74:                                               ; preds = %61
  %75 = load i32, i32* @VGA_MIS_W, align 4
  %76 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %77 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 239
  %81 = call i32 @vga_io_w(i32 %75, i32 %80)
  br label %82

82:                                               ; preds = %74, %61
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @FB_BLANK_VSYNC_SUSPEND, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load i32, i32* @VGA_CRTC_V_SYNC_START, align 4
  %89 = call i32 @vga_io_wcrt(i32 %88, i32 255)
  %90 = load i32, i32* @VGA_CRTC_V_SYNC_END, align 4
  %91 = call i32 @vga_io_wcrt(i32 %90, i32 64)
  %92 = load i32, i32* @VGA_CRTC_OVERFLOW, align 4
  %93 = load %struct.vga16fb_par*, %struct.vga16fb_par** %3, align 8
  %94 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, 132
  %98 = call i32 @vga_io_wcrt(i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %87, %82
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @FB_BLANK_HSYNC_SUSPEND, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* @VGA_CRTC_H_SYNC_START, align 4
  %106 = call i32 @vga_io_wcrt(i32 %105, i32 255)
  %107 = load i32, i32* @VGA_CRTC_H_SYNC_END, align 4
  %108 = call i32 @vga_io_wcrt(i32 %107, i32 0)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i8, i8* %5, align 1
  %111 = load i32, i32* @VGA_SEQ_I, align 4
  %112 = call i32 @outb_p(i8 zeroext %110, i32 %111)
  %113 = load i8, i8* %6, align 1
  %114 = load i32, i32* @VGA_CRT_IC, align 4
  %115 = call i32 @outb_p(i8 zeroext %113, i32 %114)
  ret void
}

declare dso_local i8* @vga_io_r(i32) #1

declare dso_local i8* @vga_io_rcrt(i32) #1

declare dso_local i32 @vga_io_rseq(i32) #1

declare dso_local i32 @vga_io_wseq(i32, i32) #1

declare dso_local i32 @vga_io_w(i32, i32) #1

declare dso_local i32 @vga_io_wcrt(i32, i32) #1

declare dso_local i32 @outb_p(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
