; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sifive.c_sifive_spi_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sifive.c_sifive_spi_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sifive_spi = type { i32 }

@SIFIVE_SPI_REG_IP = common dso_local global i32 0, align 4
@SIFIVE_SPI_REG_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sifive_spi*, i32, i32)* @sifive_spi_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sifive_spi_wait(%struct.sifive_spi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sifive_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sifive_spi* %0, %struct.sifive_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %15, %10
  %12 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %13 = load i32, i32* @SIFIVE_SPI_REG_IP, align 4
  %14 = call i32 @sifive_spi_read(%struct.sifive_spi* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %11, label %21

21:                                               ; preds = %15
  br label %33

22:                                               ; preds = %3
  %23 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %24 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %23, i32 0, i32 0
  %25 = call i32 @reinit_completion(i32* %24)
  %26 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %27 = load i32, i32* @SIFIVE_SPI_REG_IE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @sifive_spi_write(%struct.sifive_spi* %26, i32 %27, i32 %28)
  %30 = load %struct.sifive_spi*, %struct.sifive_spi** %4, align 8
  %31 = getelementptr inbounds %struct.sifive_spi, %struct.sifive_spi* %30, i32 0, i32 0
  %32 = call i32 @wait_for_completion(i32* %31)
  br label %33

33:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @sifive_spi_read(%struct.sifive_spi*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @sifive_spi_write(%struct.sifive_spi*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
