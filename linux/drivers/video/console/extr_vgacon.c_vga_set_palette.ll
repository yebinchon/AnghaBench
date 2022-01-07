; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vga_set_palette.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_vgacon.c_vga_set_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vc_data = type { i32* }

@vgastate = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@VGA_PEL_MSK = common dso_local global i32 0, align 4
@VGA_PEL_IW = common dso_local global i32 0, align 4
@VGA_PEL_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i8*)* @vga_set_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_set_palette(%struct.vc_data* %0, i8* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgastate, i32 0, i32 0), align 4
  %8 = load i32, i32* @VGA_PEL_MSK, align 4
  %9 = call i32 @vga_w(i32 %7, i32 %8, i8 zeroext -1)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %61, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %64

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgastate, i32 0, i32 0), align 4
  %15 = load i32, i32* @VGA_PEL_IW, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @vga_w(i32 %14, i32 %15, i8 zeroext %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgastate, i32 0, i32 0), align 4
  %23 = load i32, i32* @VGA_PEL_D, align 4
  %24 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 2
  %33 = trunc i32 %32 to i8
  %34 = call i32 @vga_w(i32 %22, i32 %23, i8 zeroext %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgastate, i32 0, i32 0), align 4
  %36 = load i32, i32* @VGA_PEL_D, align 4
  %37 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 2
  %46 = trunc i32 %45 to i8
  %47 = call i32 @vga_w(i32 %35, i32 %36, i8 zeroext %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgastate, i32 0, i32 0), align 4
  %49 = load i32, i32* @VGA_PEL_D, align 4
  %50 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 2
  %59 = trunc i32 %58 to i8
  %60 = call i32 @vga_w(i32 %48, i32 %49, i8 zeroext %59)
  br label %61

61:                                               ; preds = %13
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %10

64:                                               ; preds = %10
  ret void
}

declare dso_local i32 @vga_w(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
