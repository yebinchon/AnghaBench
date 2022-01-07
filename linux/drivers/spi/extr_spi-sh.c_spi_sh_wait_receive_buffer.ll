; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh.c_spi_sh_wait_receive_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh.c_spi_sh_wait_receive_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_sh_data = type { i32 }

@SPI_SH_CR1 = common dso_local global i32 0, align 4
@SPI_SH_RBE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_sh_data*)* @spi_sh_wait_receive_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_sh_wait_receive_buffer(%struct.spi_sh_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_sh_data*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_sh_data* %0, %struct.spi_sh_data** %3, align 8
  store i32 100000, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load %struct.spi_sh_data*, %struct.spi_sh_data** %3, align 8
  %7 = load i32, i32* @SPI_SH_CR1, align 4
  %8 = call i32 @spi_sh_read(%struct.spi_sh_data* %6, i32 %7)
  %9 = load i32, i32* @SPI_SH_RBE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = call i32 @udelay(i32 10)
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %4, align 4
  %16 = icmp slt i32 %14, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @ETIMEDOUT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %22

20:                                               ; preds = %12
  br label %5

21:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @spi_sh_read(%struct.spi_sh_data*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
