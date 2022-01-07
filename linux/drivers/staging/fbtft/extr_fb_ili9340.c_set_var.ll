; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9340.c_set_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9340.c_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ILI9340_MADCTL_MV = common dso_local global i32 0, align 4
@ILI9340_MADCTL_MY = common dso_local global i32 0, align 4
@ILI9340_MADCTL_MX = common dso_local global i32 0, align 4
@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @set_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_var(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  %3 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %4 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %5 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %20 [
    i32 270, label %10
    i32 180, label %12
    i32 90, label %14
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @ILI9340_MADCTL_MV, align 4
  store i32 %11, i32* %3, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @ILI9340_MADCTL_MY, align 4
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @ILI9340_MADCTL_MV, align 4
  %16 = load i32, i32* @ILI9340_MADCTL_MY, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ILI9340_MADCTL_MX, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @ILI9340_MADCTL_MX, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %14, %12, %10
  %23 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %24 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %27 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 3
  %30 = or i32 %25, %29
  %31 = call i32 @write_reg(%struct.fbtft_par* %23, i32 %24, i32 %30)
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
