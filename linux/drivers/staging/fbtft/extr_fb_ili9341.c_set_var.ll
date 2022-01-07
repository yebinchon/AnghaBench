; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9341.c_set_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9341.c_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@MEM_X = common dso_local global i32 0, align 4
@MEM_BGR = common dso_local global i32 0, align 4
@MEM_V = common dso_local global i32 0, align 4
@MEM_L = common dso_local global i32 0, align 4
@MEM_Y = common dso_local global i32 0, align 4
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
  switch i32 %8, label %59 [
    i32 0, label %9
    i32 270, label %20
    i32 180, label %33
    i32 90, label %44
  ]

9:                                                ; preds = %1
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %12 = load i32, i32* @MEM_X, align 4
  %13 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %14 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MEM_BGR, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %12, %17
  %19 = call i32 @write_reg(%struct.fbtft_par* %10, i32 %11, i32 %18)
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %22 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %23 = load i32, i32* @MEM_V, align 4
  %24 = load i32, i32* @MEM_L, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %27 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MEM_BGR, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %25, %30
  %32 = call i32 @write_reg(%struct.fbtft_par* %21, i32 %22, i32 %31)
  br label %59

33:                                               ; preds = %1
  %34 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %35 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %36 = load i32, i32* @MEM_Y, align 4
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %38 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MEM_BGR, align 4
  %41 = shl i32 %39, %40
  %42 = or i32 %36, %41
  %43 = call i32 @write_reg(%struct.fbtft_par* %34, i32 %35, i32 %42)
  br label %59

44:                                               ; preds = %1
  %45 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %46 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %47 = load i32, i32* @MEM_Y, align 4
  %48 = load i32, i32* @MEM_X, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @MEM_V, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %53 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MEM_BGR, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %51, %56
  %58 = call i32 @write_reg(%struct.fbtft_par* %45, i32 %46, i32 %57)
  br label %59

59:                                               ; preds = %1, %44, %33, %20, %9
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
