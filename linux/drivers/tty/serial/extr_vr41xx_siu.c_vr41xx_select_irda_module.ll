; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_vr41xx_select_irda_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vr41xx_siu.c_vr41xx_select_irda_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@siu_uart_ports = common dso_local global %struct.uart_port* null, align 8
@SIUIRSEL = common dso_local global i32 0, align 4
@IRMSEL = common dso_local global i32 0, align 4
@TMICTX = common dso_local global i32 0, align 4
@TMICMODE = common dso_local global i32 0, align 4
@IRMSEL_SHARP = common dso_local global i32 0, align 4
@IRMSEL_TEMIC = common dso_local global i32 0, align 4
@IRDA_TX_4MBPS = common dso_local global i32 0, align 4
@IRMSEL_HP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vr41xx_select_irda_module(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** @siu_uart_ports, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i64 0
  store %struct.uart_port* %9, %struct.uart_port** %5, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %15 = load i32, i32* @SIUIRSEL, align 4
  %16 = call i32 @siu_read(%struct.uart_port* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @IRMSEL, align 4
  %18 = load i32, i32* @TMICTX, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @TMICMODE, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %3, align 4
  switch i32 %25, label %48 [
    i32 129, label %26
    i32 128, label %30
    i32 130, label %44
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* @IRMSEL_SHARP, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %49

30:                                               ; preds = %2
  %31 = load i32, i32* @IRMSEL_TEMIC, align 4
  %32 = load i32, i32* @TMICMODE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IRDA_TX_4MBPS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @TMICTX, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %30
  br label %49

44:                                               ; preds = %2
  %45 = load i32, i32* @IRMSEL_HP, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %49

48:                                               ; preds = %2
  br label %49

49:                                               ; preds = %48, %44, %43, %26
  %50 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %51 = load i32, i32* @SIUIRSEL, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @siu_write(%struct.uart_port* %50, i32 %51, i32 %52)
  %54 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 0
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @siu_read(%struct.uart_port*, i32) #1

declare dso_local i32 @siu_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
