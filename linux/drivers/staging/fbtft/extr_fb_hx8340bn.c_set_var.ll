; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_hx8340bn.c_set_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_hx8340bn.c_set_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MIPI_DCS_SET_ADDRESS_MODE = common dso_local global i32 0, align 4
@MV = common dso_local global i32 0, align 4
@MX = common dso_local global i32 0, align 4
@MY = common dso_local global i32 0, align 4
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
  switch i32 %8, label %53 [
    i32 0, label %9
    i32 270, label %17
    i32 180, label %29
    i32 90, label %41
  ]

9:                                                ; preds = %1
  %10 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %11 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %12 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %13 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 %14, 3
  %16 = call i32 @write_reg(%struct.fbtft_par* %10, i32 %11, i32 %15)
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %19 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %20 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 6)
  %21 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 5)
  %22 = or i32 %20, %21
  %23 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %24 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 3
  %27 = or i32 %22, %26
  %28 = call i32 @write_reg(%struct.fbtft_par* %18, i32 %19, i32 %27)
  br label %53

29:                                               ; preds = %1
  %30 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %31 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %32 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 6)
  %33 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 7)
  %34 = or i32 %32, %33
  %35 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %36 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 3
  %39 = or i32 %34, %38
  %40 = call i32 @write_reg(%struct.fbtft_par* %30, i32 %31, i32 %39)
  br label %53

41:                                               ; preds = %1
  %42 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %43 = load i32, i32* @MIPI_DCS_SET_ADDRESS_MODE, align 4
  %44 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 7)
  %45 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 5)
  %46 = or i32 %44, %45
  %47 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %48 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 %49, 3
  %51 = or i32 %46, %50
  %52 = call i32 @write_reg(%struct.fbtft_par* %42, i32 %43, i32 %51)
  br label %53

53:                                               ; preds = %1, %41, %29, %17, %9
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i32) #1

declare dso_local i32 @BIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
