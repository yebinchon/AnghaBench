; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_sdc_set_window_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_sdc_set_window_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx3fb_data = type { i64, i64 }

@IDMAC_SDC_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SDC_BG_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mx3fb_data*, i32, i32, i32)* @sdc_set_window_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdc_set_window_pos(%struct.mx3fb_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mx3fb_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mx3fb_data* %0, %struct.mx3fb_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @IDMAC_SDC_0, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %38

16:                                               ; preds = %4
  %17 = load %struct.mx3fb_data*, %struct.mx3fb_data** %6, align 8
  %18 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.mx3fb_data*, %struct.mx3fb_data** %6, align 8
  %25 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load %struct.mx3fb_data*, %struct.mx3fb_data** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SDC_BG_POS, align 4
  %37 = call i32 @mx3fb_write_reg(%struct.mx3fb_data* %31, i32 %35, i32 %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %16, %13
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @mx3fb_write_reg(%struct.mx3fb_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
