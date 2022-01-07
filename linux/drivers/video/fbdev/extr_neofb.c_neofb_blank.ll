; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neofb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neofb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.neofb_par* }
%struct.neofb_par = type { i32, i32, i32 }

@VGA_SR01_SCREEN_OFF = common dso_local global i32 0, align 4
@NEO_GR01_SUPPRESS_HSYNC = common dso_local global i32 0, align 4
@NEO_GR01_SUPPRESS_VSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @neofb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neofb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.neofb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load %struct.neofb_par*, %struct.neofb_par** %13, align 8
  store %struct.neofb_par* %14, %struct.neofb_par** %6, align 8
  %15 = call i32 (...) @neoUnlock()
  %16 = call i32 @vga_rgfx(i32* null, i32 32)
  %17 = and i32 %16, 3
  store i32 %17, i32* %11, align 4
  %18 = load %struct.neofb_par*, %struct.neofb_par** %6, align 8
  %19 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %18, i32 0, i32 2
  %20 = call i32 @neoLock(i32* %19)
  %21 = load %struct.neofb_par*, %struct.neofb_par** %6, align 8
  %22 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.neofb_par*, %struct.neofb_par** %6, align 8
  %28 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.neofb_par*, %struct.neofb_par** %6, align 8
  %35 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %63 [
    i32 130, label %37
    i32 132, label %42
    i32 128, label %45
    i32 131, label %48
    i32 129, label %56
  ]

37:                                               ; preds = %29
  %38 = load i32, i32* @VGA_SR01_SCREEN_OFF, align 4
  store i32 %38, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %39 = load i32, i32* @NEO_GR01_SUPPRESS_HSYNC, align 4
  %40 = load i32, i32* @NEO_GR01_SUPPRESS_VSYNC, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %9, align 4
  br label %64

42:                                               ; preds = %29
  %43 = load i32, i32* @VGA_SR01_SCREEN_OFF, align 4
  store i32 %43, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %44 = load i32, i32* @NEO_GR01_SUPPRESS_HSYNC, align 4
  store i32 %44, i32* %9, align 4
  br label %64

45:                                               ; preds = %29
  %46 = load i32, i32* @VGA_SR01_SCREEN_OFF, align 4
  store i32 %46, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %47 = load i32, i32* @NEO_GR01_SUPPRESS_VSYNC, align 4
  store i32 %47, i32* %9, align 4
  br label %64

48:                                               ; preds = %29
  %49 = load i32, i32* @VGA_SR01_SCREEN_OFF, align 4
  store i32 %49, i32* %7, align 4
  %50 = load %struct.neofb_par*, %struct.neofb_par** %6, align 8
  %51 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %54, 2
  store i32 %55, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %64

56:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  %57 = load %struct.neofb_par*, %struct.neofb_par** %6, align 8
  %58 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %61, 2
  store i32 %62, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %64

63:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %88

64:                                               ; preds = %56, %48, %45, %42, %37
  %65 = call i32 (...) @neoUnlock()
  %66 = call i32 @vga_rseq(i32* null, i32 1)
  %67 = and i32 %66, -33
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @vga_wseq(i32* null, i32 1, i32 %70)
  %72 = call i32 @vga_rgfx(i32* null, i32 32)
  %73 = and i32 %72, -3
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @vga_wgfx(i32* null, i32 32, i32 %76)
  %78 = call i32 @vga_rgfx(i32* null, i32 1)
  %79 = and i32 %78, -241
  %80 = or i32 %79, 128
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @vga_wgfx(i32* null, i32 1, i32 %83)
  %85 = load %struct.neofb_par*, %struct.neofb_par** %6, align 8
  %86 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %85, i32 0, i32 2
  %87 = call i32 @neoLock(i32* %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %64, %63
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @neoUnlock(...) #1

declare dso_local i32 @vga_rgfx(i32*, i32) #1

declare dso_local i32 @neoLock(i32*) #1

declare dso_local i32 @vga_rseq(i32*, i32) #1

declare dso_local i32 @vga_wseq(i32*, i32, i32) #1

declare dso_local i32 @vga_wgfx(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
