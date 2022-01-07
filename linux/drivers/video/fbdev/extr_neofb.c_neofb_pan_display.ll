; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neofb_pan_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neofb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_2__, %struct.neofb_par* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.neofb_par = type { %struct.vgastate }
%struct.vgastate = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"neofb_update_start\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @neofb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neofb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.neofb_par*, align 8
  %6 = alloca %struct.vgastate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = load %struct.neofb_par*, %struct.neofb_par** %10, align 8
  store %struct.neofb_par* %11, %struct.neofb_par** %5, align 8
  %12 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %13 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %12, i32 0, i32 0
  store %struct.vgastate* %13, %struct.vgastate** %6, align 8
  %14 = call i32 @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %17, %21
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = ashr i32 %26, 2
  store i32 %27, i32* %8, align 4
  %28 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 7
  %33 = sdiv i32 %32, 8
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = call i32 (...) @neoUnlock()
  %37 = load %struct.vgastate*, %struct.vgastate** %6, align 8
  %38 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 65280
  %42 = ashr i32 %41, 8
  %43 = call i32 @vga_wcrt(i32 %39, i32 12, i32 %42)
  %44 = load %struct.vgastate*, %struct.vgastate** %6, align 8
  %45 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 255
  %49 = call i32 @vga_wcrt(i32 %46, i32 13, i32 %48)
  %50 = call i32 @vga_rgfx(i32* null, i32 14)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.vgastate*, %struct.vgastate** %6, align 8
  %52 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 15
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 240
  %59 = or i32 %56, %58
  %60 = call i32 @vga_wgfx(i32 %53, i32 14, i32 %59)
  %61 = load %struct.vgastate*, %struct.vgastate** %6, align 8
  %62 = call i32 @neoLock(%struct.vgastate* %61)
  ret i32 0
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @neoUnlock(...) #1

declare dso_local i32 @vga_wcrt(i32, i32, i32) #1

declare dso_local i32 @vga_rgfx(i32*, i32) #1

declare dso_local i32 @vga_wgfx(i32, i32, i32) #1

declare dso_local i32 @neoLock(%struct.vgastate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
