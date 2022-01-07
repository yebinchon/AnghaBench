; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_vgaHWRestore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_vgaHWRestore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.neofb_par = type { i32*, i32*, i32*, i32*, i32 }

@VGA_MIS_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.neofb_par*)* @vgaHWRestore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgaHWRestore(%struct.fb_info* %0, %struct.neofb_par* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.neofb_par*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.neofb_par* %1, %struct.neofb_par** %4, align 8
  %6 = load i32, i32* @VGA_MIS_W, align 4
  %7 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %8 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @vga_w(i32* null, i32 %6, i32 %9)
  store i32 1, i32* %5, align 4
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %17 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vga_wseq(i32* null, i32 %15, i32 %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %29 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 17
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -129
  %34 = call i32 @vga_wcrt(i32* null, i32 17, i32 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %48, %27
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 25
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %41 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @vga_wcrt(i32* null, i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %35

51:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 9
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %58 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @vga_wgfx(i32* null, i32 %56, i32 %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %52

68:                                               ; preds = %52
  %69 = call i32 (...) @VGAenablePalette()
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %83, %68
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 21
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.neofb_par*, %struct.neofb_par** %4, align 8
  %76 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @VGAwATTR(i32 %74, i32 %81)
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %70

86:                                               ; preds = %70
  %87 = call i32 (...) @VGAdisablePalette()
  ret void
}

declare dso_local i32 @vga_w(i32*, i32, i32) #1

declare dso_local i32 @vga_wseq(i32*, i32, i32) #1

declare dso_local i32 @vga_wcrt(i32*, i32, i32) #1

declare dso_local i32 @vga_wgfx(i32*, i32, i32) #1

declare dso_local i32 @VGAenablePalette(...) #1

declare dso_local i32 @VGAwATTR(i32, i32) #1

declare dso_local i32 @VGAdisablePalette(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
