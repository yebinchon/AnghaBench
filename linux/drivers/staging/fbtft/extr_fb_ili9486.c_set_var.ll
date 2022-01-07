; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9486.c_set_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9486.c_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
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
  switch i32 %8, label %45 [
    i32 0, label %9
    i32 90, label %18
    i32 180, label %27
    i32 270, label %36
  ]

9:                                                ; preds = %1
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %12 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %13 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 %14, 3
  %16 = or i32 128, %15
  %17 = call i32 @write_reg(%struct.fbtft_par* %10, i32 %11, i32 %16)
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %20 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %22 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 3
  %25 = or i32 32, %24
  %26 = call i32 @write_reg(%struct.fbtft_par* %19, i32 %20, i32 %25)
  br label %46

27:                                               ; preds = %1
  %28 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %29 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %30 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %31 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 3
  %34 = or i32 64, %33
  %35 = call i32 @write_reg(%struct.fbtft_par* %28, i32 %29, i32 %34)
  br label %46

36:                                               ; preds = %1
  %37 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %38 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %39 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %40 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 %41, 3
  %43 = or i32 224, %42
  %44 = call i32 @write_reg(%struct.fbtft_par* %37, i32 %38, i32 %43)
  br label %46

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %45, %36, %27, %18, %9
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
