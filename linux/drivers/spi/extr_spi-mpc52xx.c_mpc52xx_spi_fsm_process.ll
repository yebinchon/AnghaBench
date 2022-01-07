; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc52xx.c_mpc52xx_spi_fsm_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc52xx.c_mpc52xx_spi_fsm_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc52xx_spi = type { i32 (i32, %struct.mpc52xx_spi*, i32, i32)*, i32, i64 }

@FSM_CONTINUE = common dso_local global i32 0, align 4
@SPI_STATUS = common dso_local global i64 0, align 8
@SPI_DATA = common dso_local global i64 0, align 8
@FSM_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mpc52xx_spi*)* @mpc52xx_spi_fsm_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc52xx_spi_fsm_process(i32 %0, %struct.mpc52xx_spi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpc52xx_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.mpc52xx_spi* %1, %struct.mpc52xx_spi** %4, align 8
  %8 = load i32, i32* @FSM_CONTINUE, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %13, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @FSM_CONTINUE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %15 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SPI_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @in_8(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %21 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SPI_DATA, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @in_8(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %27 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %26, i32 0, i32 0
  %28 = load i32 (i32, %struct.mpc52xx_spi*, i32, i32)*, i32 (i32, %struct.mpc52xx_spi*, i32, i32)** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 %28(i32 %29, %struct.mpc52xx_spi* %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %9

34:                                               ; preds = %9
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @FSM_POLL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.mpc52xx_spi*, %struct.mpc52xx_spi** %4, align 8
  %40 = getelementptr inbounds %struct.mpc52xx_spi, %struct.mpc52xx_spi* %39, i32 0, i32 1
  %41 = call i32 @schedule_work(i32* %40)
  br label %42

42:                                               ; preds = %38, %34
  ret void
}

declare dso_local i32 @in_8(i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
