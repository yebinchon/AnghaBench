; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9481.c_set_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9481.c_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@ROW_X_COL = common dso_local global i32 0, align 4
@HFLIP = common dso_local global i32 0, align 4
@VFLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @set_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_var(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %3 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %4 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %43 [
    i32 270, label %9
    i32 180, label %23
    i32 90, label %33
  ]

9:                                                ; preds = %1
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %12 = load i32, i32* @ROW_X_COL, align 4
  %13 = load i32, i32* @HFLIP, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @VFLIP, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %18 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 3
  %21 = or i32 %16, %20
  %22 = call i32 @write_reg(%struct.fbtft_par* %10, i32 %11, i32 %21)
  br label %53

23:                                               ; preds = %1
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %25 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %26 = load i32, i32* @VFLIP, align 4
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %28 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 3
  %31 = or i32 %26, %30
  %32 = call i32 @write_reg(%struct.fbtft_par* %24, i32 %25, i32 %31)
  br label %53

33:                                               ; preds = %1
  %34 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %35 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %36 = load i32, i32* @ROW_X_COL, align 4
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %38 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 %39, 3
  %41 = or i32 %36, %40
  %42 = call i32 @write_reg(%struct.fbtft_par* %34, i32 %35, i32 %41)
  br label %53

43:                                               ; preds = %1
  %44 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %45 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %46 = load i32, i32* @HFLIP, align 4
  %47 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %48 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 %49, 3
  %51 = or i32 %46, %50
  %52 = call i32 @write_reg(%struct.fbtft_par* %44, i32 %45, i32 %51)
  br label %53

53:                                               ; preds = %43, %33, %23, %9
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
