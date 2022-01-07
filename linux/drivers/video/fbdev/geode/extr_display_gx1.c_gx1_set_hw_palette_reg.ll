; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_display_gx1.c_gx1_set_hw_palette_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_display_gx1.c_gx1_set_hw_palette_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.geodefb_par* }
%struct.geodefb_par = type { i64 }

@DC_PAL_ADDRESS = common dso_local global i64 0, align 8
@DC_PAL_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32, i32, i32, i32)* @gx1_set_hw_palette_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gx1_set_hw_palette_reg(%struct.fb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.geodefb_par*, align 8
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = load %struct.geodefb_par*, %struct.geodefb_par** %14, align 8
  store %struct.geodefb_par* %15, %struct.geodefb_par** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 %16, 2
  %18 = and i32 %17, 258048
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = lshr i32 %19, 4
  %21 = and i32 %20, 4032
  %22 = load i32, i32* %12, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = lshr i32 %24, 10
  %26 = and i32 %25, 63
  %27 = load i32, i32* %12, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.geodefb_par*, %struct.geodefb_par** %11, align 8
  %31 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DC_PAL_ADDRESS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.geodefb_par*, %struct.geodefb_par** %11, align 8
  %38 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DC_PAL_DATA, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
