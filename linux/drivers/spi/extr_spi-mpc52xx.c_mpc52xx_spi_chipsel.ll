; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc52xx.c_mpc52xx_spi_chipsel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc52xx.c_mpc52xx_spi_chipsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc52xx_spi = type { i64, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SPI_PORTDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpc52xx_spi*, i32)* @mpc52xx_spi_chipsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc52xx_spi_chipsel(%struct.mpc52xx_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.mpc52xx_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mpc52xx_spi* %0, %struct.mpc52xx_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %3, align 8
  %7 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %3, align 8
  %12 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %3, align 8
  %19 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 1
  %29 = call i32 @gpio_set_value(i32 %24, i32 %28)
  br label %41

30:                                               ; preds = %2
  %31 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %3, align 8
  %32 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SPI_PORTDATA, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 8
  %40 = call i32 @out_8(i64 %35, i32 %39)
  br label %41

41:                                               ; preds = %30, %10
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @out_8(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
