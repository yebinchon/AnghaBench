; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_atmel_lcdfb_update_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_atmel_lcdfb_update_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.fb_fix_screeninfo, %struct.atmel_lcdfb_info* }
%struct.TYPE_2__ = type { i32 }
%struct.fb_fix_screeninfo = type { i32, i32 }
%struct.atmel_lcdfb_info = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32 }

@ATMEL_LCDC_DMABADDR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_var_screeninfo*)* @atmel_lcdfb_update_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_lcdfb_update_dma(%struct.fb_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.atmel_lcdfb_info*, align 8
  %6 = alloca %struct.fb_fix_screeninfo*, align 8
  %7 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %9, align 8
  store %struct.atmel_lcdfb_info* %10, %struct.atmel_lcdfb_info** %5, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  store %struct.fb_fix_screeninfo* %12, %struct.fb_fix_screeninfo** %6, align 8
  %13 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %14 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %20 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = add nsw i32 %15, %22
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %26, %30
  %32 = sdiv i32 %31, 8
  %33 = add nsw i32 %23, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = and i64 %35, -4
  store i64 %36, i64* %7, align 8
  %37 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %5, align 8
  %38 = load i32, i32* @ATMEL_LCDC_DMABADDR1, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @lcdc_writel(%struct.atmel_lcdfb_info* %37, i32 %38, i64 %39)
  ret void
}

declare dso_local i32 @lcdc_writel(%struct.atmel_lcdfb_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
