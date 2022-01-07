; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_configure_sscr0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_pxa2xx_configure_sscr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32 }

@QUARK_X1000_SSCR0_Motorola = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@SSCR0_Motorola = common dso_local global i32 0, align 4
@SSCR0_EDSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*, i32, i32)* @pxa2xx_configure_sscr0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_configure_sscr0(%struct.driver_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.driver_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %9 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %26 [
    i32 128, label %11
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @QUARK_X1000_SSCR0_Motorola, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 32
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i32 [ 8, %17 ], [ %19, %18 ]
  %22 = call i32 @QUARK_X1000_SSCR0_DataSize(i32 %21)
  %23 = or i32 %14, %22
  %24 = load i32, i32* @SSCR0_SSE, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %4, align 4
  br label %51

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SSCR0_Motorola, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 16
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 16
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  %39 = call i32 @SSCR0_DataSize(i32 %38)
  %40 = or i32 %29, %39
  %41 = load i32, i32* @SSCR0_SSE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 16
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @SSCR0_EDSS, align 4
  br label %48

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = or i32 %42, %49
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %20
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @QUARK_X1000_SSCR0_DataSize(i32) #1

declare dso_local i32 @SSCR0_DataSize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
