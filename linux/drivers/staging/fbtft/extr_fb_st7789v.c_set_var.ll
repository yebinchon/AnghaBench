; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_st7789v.c_set_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_st7789v.c_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MADCTL_BGR = common dso_local global i32 0, align 4
@MADCTL_MV = common dso_local global i32 0, align 4
@MADCTL_MY = common dso_local global i32 0, align 4
@MADCTL_MX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @set_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_var(%struct.fbtft_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fbtft_par*, align 8
  %4 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %6 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @MADCTL_BGR, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %15 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %39 [
    i32 0, label %20
    i32 90, label %21
    i32 180, label %27
    i32 270, label %33
  ]

20:                                               ; preds = %13
  br label %42

21:                                               ; preds = %13
  %22 = load i32, i32* @MADCTL_MV, align 4
  %23 = load i32, i32* @MADCTL_MY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %13
  %28 = load i32, i32* @MADCTL_MX, align 4
  %29 = load i32, i32* @MADCTL_MY, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %42

33:                                               ; preds = %13
  %34 = load i32, i32* @MADCTL_MV, align 4
  %35 = load i32, i32* @MADCTL_MX, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %13
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %47

42:                                               ; preds = %33, %27, %21, %20
  %43 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %44 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @write_reg(%struct.fbtft_par* %43, i32 %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
