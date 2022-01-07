; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9163.c_set_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9163.c_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@MIPI_DCS_WRITE_MEMORY_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @set_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_var(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  %3 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %5 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %14 [
    i32 0, label %10
    i32 180, label %11
    i32 270, label %12
    i32 90, label %13
  ]

10:                                               ; preds = %1
  store i32 8, i32* %3, align 4
  br label %14

11:                                               ; preds = %1
  store i32 200, i32* %3, align 4
  br label %14

12:                                               ; preds = %1
  store i32 168, i32* %3, align 4
  br label %14

13:                                               ; preds = %1
  store i32 104, i32* %3, align 4
  br label %14

14:                                               ; preds = %1, %13, %12, %11, %10
  %15 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %16 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = call i32 @BIT(i32 2)
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %25 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %24, i32 %25, i32 %26)
  %28 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %29 = load i32, i32* @MIPI_DCS_WRITE_MEMORY_START, align 4
  %30 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %28, i32 %29)
  ret i32 0
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
