; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@MLB_USIO_REG_FCR = common dso_local global i64 0, align 8
@MLB_USIO_FCR_FTIE = common dso_local global i32 0, align 4
@MLB_USIO_FCR_FDRQ = common dso_local global i32 0, align 4
@MLB_USIO_REG_SCR = common dso_local global i64 0, align 8
@MLB_USIO_SCR_TBIE = common dso_local global i32 0, align 4
@MLB_USIO_REG_SSR = common dso_local global i64 0, align 8
@MLB_USIO_SSR_TBI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @mlb_usio_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlb_usio_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readw(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MLB_USIO_FCR_FTIE, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MLB_USIO_REG_FCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writew(i32 %12, i64 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MLB_USIO_FCR_FDRQ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %51

24:                                               ; preds = %1
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MLB_USIO_REG_SCR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readb(i64 %29)
  %31 = load i32, i32* @MLB_USIO_SCR_TBIE, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MLB_USIO_REG_SCR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writeb(i32 %32, i64 %37)
  %39 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MLB_USIO_REG_SSR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readb(i64 %43)
  %45 = load i32, i32* @MLB_USIO_SSR_TBI, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %24
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = call i32 @mlb_usio_tx_chars(%struct.uart_port* %49)
  br label %51

51:                                               ; preds = %23, %48, %24
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @mlb_usio_tx_chars(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
