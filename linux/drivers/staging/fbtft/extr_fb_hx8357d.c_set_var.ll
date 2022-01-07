; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_hx8357d.c_set_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_hx8357d.c_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HX8357D_MADCTL_MV = common dso_local global i32 0, align 4
@HX8357D_MADCTL_MX = common dso_local global i32 0, align 4
@HX8357D_MADCTL_MY = common dso_local global i32 0, align 4
@HX8357D_MADCTL_RGB = common dso_local global i32 0, align 4
@HX8357D_MADCTL_BGR = common dso_local global i32 0, align 4
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
  switch i32 %9, label %19 [
    i32 270, label %10
    i32 180, label %14
    i32 90, label %15
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @HX8357D_MADCTL_MV, align 4
  %12 = load i32, i32* @HX8357D_MADCTL_MX, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %23

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @HX8357D_MADCTL_MV, align 4
  %17 = load i32, i32* @HX8357D_MADCTL_MY, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @HX8357D_MADCTL_MX, align 4
  %21 = load i32, i32* @HX8357D_MADCTL_MY, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %15, %14, %10
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %25 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @HX8357D_MADCTL_RGB, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @HX8357D_MADCTL_BGR, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %37 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @write_reg(%struct.fbtft_par* %36, i32 %37, i32 %38)
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
