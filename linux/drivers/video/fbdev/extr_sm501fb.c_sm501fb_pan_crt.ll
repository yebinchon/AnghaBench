; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_pan_crt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_pan_crt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i64 }
%struct.fb_info = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.sm501fb_par* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.sm501fb_par = type { %struct.TYPE_5__, %struct.sm501fb_info* }
%struct.TYPE_5__ = type { i64 }
%struct.sm501fb_info = type { i64 }

@SM501_DC_CRT_CONTROL = common dso_local global i64 0, align 8
@SM501_DC_CRT_CONTROL_PIXEL_MASK = common dso_local global i64 0, align 8
@SM501_ADDR_FLIP = common dso_local global i64 0, align 8
@SM501_DC_CRT_FB_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @sm501fb_pan_crt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_pan_crt(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.sm501fb_par*, align 8
  %6 = alloca %struct.sm501fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  %12 = load %struct.sm501fb_par*, %struct.sm501fb_par** %11, align 8
  store %struct.sm501fb_par* %12, %struct.sm501fb_par** %5, align 8
  %13 = load %struct.sm501fb_par*, %struct.sm501fb_par** %5, align 8
  %14 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %13, i32 0, i32 1
  %15 = load %struct.sm501fb_info*, %struct.sm501fb_info** %14, align 8
  store %struct.sm501fb_info* %15, %struct.sm501fb_info** %6, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = mul i32 %23, %24
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %9, align 8
  %27 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %28 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i64 @smc501_readl(i64 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* @SM501_DC_CRT_CONTROL_PIXEL_MASK, align 8
  %34 = xor i64 %33, -1
  %35 = load i64, i64* %8, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = and i64 %37, 15
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = udiv i64 %38, %40
  %42 = shl i64 %41, 4
  %43 = load i64, i64* %8, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %47 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @smc501_writel(i64 %45, i64 %50)
  %52 = load %struct.sm501fb_par*, %struct.sm501fb_par** %5, align 8
  %53 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %55, %56
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = mul i64 %60, %64
  %66 = add i64 %57, %65
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @SM501_ADDR_FLIP, align 8
  %69 = or i64 %67, %68
  %70 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %71 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SM501_DC_CRT_FB_ADDR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @smc501_writel(i64 %69, i64 %74)
  %76 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %77 = call i32 @sm501fb_sync_regs(%struct.sm501fb_info* %76)
  ret i32 0
}

declare dso_local i64 @smc501_readl(i64) #1

declare dso_local i32 @smc501_writel(i64, i64) #1

declare dso_local i32 @sm501fb_sync_regs(%struct.sm501fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
