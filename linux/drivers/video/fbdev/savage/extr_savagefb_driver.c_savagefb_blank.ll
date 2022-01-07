; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.savagefb_par* }
%struct.savagefb_par = type { i64 }

@DISP_CRT = common dso_local global i64 0, align 8
@DISP_LCD = common dso_local global i64 0, align 8
@DISP_DFP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @savagefb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savagefb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.savagefb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.savagefb_par*, %struct.savagefb_par** %9, align 8
  store %struct.savagefb_par* %10, %struct.savagefb_par** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %12 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DISP_CRT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %2
  %17 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %18 = call i32 @vga_out8(i32 964, i32 8, %struct.savagefb_par* %17)
  %19 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %20 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, 6
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %25 = call i32 @vga_out8(i32 965, i32 %23, %struct.savagefb_par* %24)
  %26 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %27 = call i32 @vga_out8(i32 964, i32 13, %struct.savagefb_par* %26)
  %28 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %29 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 80
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %3, align 4
  switch i32 %32, label %43 [
    i32 129, label %33
    i32 131, label %33
    i32 128, label %34
    i32 132, label %37
    i32 130, label %40
  ]

33:                                               ; preds = %16, %16
  br label %43

34:                                               ; preds = %16
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, 16
  store i32 %36, i32* %7, align 4
  br label %43

37:                                               ; preds = %16
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, 64
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %16
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, 80
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %16, %40, %37, %34, %33
  %44 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %45 = call i32 @vga_out8(i32 964, i32 13, %struct.savagefb_par* %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %48 = call i32 @vga_out8(i32 965, i32 %46, %struct.savagefb_par* %47)
  br label %49

49:                                               ; preds = %43, %2
  %50 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %51 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DISP_LCD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %57 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DISP_DFP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %55, %49
  %62 = load i32, i32* %3, align 4
  switch i32 %62, label %79 [
    i32 129, label %63
    i32 131, label %63
    i32 128, label %71
    i32 132, label %71
    i32 130, label %71
  ]

63:                                               ; preds = %61, %61
  %64 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %65 = call i32 @vga_out8(i32 964, i32 49, %struct.savagefb_par* %64)
  %66 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %67 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %66)
  %68 = or i32 %67, 16
  %69 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %70 = call i32 @vga_out8(i32 965, i32 %68, %struct.savagefb_par* %69)
  br label %79

71:                                               ; preds = %61, %61, %61
  %72 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %73 = call i32 @vga_out8(i32 964, i32 49, %struct.savagefb_par* %72)
  %74 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %75 = call i32 @vga_in8(i32 965, %struct.savagefb_par* %74)
  %76 = and i32 %75, -17
  %77 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %78 = call i32 @vga_out8(i32 965, i32 %76, %struct.savagefb_par* %77)
  br label %79

79:                                               ; preds = %61, %71, %63
  br label %80

80:                                               ; preds = %79, %55
  %81 = load i32, i32* %3, align 4
  %82 = icmp eq i32 %81, 131
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  ret i32 %84
}

declare dso_local i32 @vga_out8(i32, i32, %struct.savagefb_par*) #1

declare dso_local i32 @vga_in8(i32, %struct.savagefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
