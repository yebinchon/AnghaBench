; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_init_contrast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atmel_lcdfb.c_init_contrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_lcdfb_info = type { %struct.atmel_lcdfb_pdata }
%struct.atmel_lcdfb_pdata = type { i64, i64 }

@ATMEL_LCDC_POL_POSITIVE = common dso_local global i32 0, align 4
@contrast_ctr = common dso_local global i32 0, align 4
@ATMEL_LCDC_CONTRAST_CTR = common dso_local global i32 0, align 4
@ATMEL_LCDC_CONTRAST_VAL = common dso_local global i32 0, align 4
@ATMEL_LCDC_CVAL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_lcdfb_info*)* @init_contrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_contrast(%struct.atmel_lcdfb_info* %0) #0 {
  %2 = alloca %struct.atmel_lcdfb_info*, align 8
  %3 = alloca %struct.atmel_lcdfb_pdata*, align 8
  store %struct.atmel_lcdfb_info* %0, %struct.atmel_lcdfb_info** %2, align 8
  %4 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %4, i32 0, i32 0
  store %struct.atmel_lcdfb_pdata* %5, %struct.atmel_lcdfb_pdata** %3, align 8
  %6 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %3, align 8
  %7 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @ATMEL_LCDC_POL_POSITIVE, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* @contrast_ctr, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* @contrast_ctr, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %2, align 8
  %17 = load i32, i32* @ATMEL_LCDC_CONTRAST_CTR, align 4
  %18 = load i32, i32* @contrast_ctr, align 4
  %19 = call i32 @lcdc_writel(%struct.atmel_lcdfb_info* %16, i32 %17, i32 %18)
  %20 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %2, align 8
  %21 = load i32, i32* @ATMEL_LCDC_CONTRAST_VAL, align 4
  %22 = load i32, i32* @ATMEL_LCDC_CVAL_DEFAULT, align 4
  %23 = call i32 @lcdc_writel(%struct.atmel_lcdfb_info* %20, i32 %21, i32 %22)
  %24 = load %struct.atmel_lcdfb_pdata*, %struct.atmel_lcdfb_pdata** %3, align 8
  %25 = getelementptr inbounds %struct.atmel_lcdfb_pdata, %struct.atmel_lcdfb_pdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %2, align 8
  %30 = call i32 @init_backlight(%struct.atmel_lcdfb_info* %29)
  br label %31

31:                                               ; preds = %28, %15
  ret void
}

declare dso_local i32 @lcdc_writel(%struct.atmel_lcdfb_info*, i32, i32) #1

declare dso_local i32 @init_backlight(%struct.atmel_lcdfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
