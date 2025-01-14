; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_interrupt_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_interrupt_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i32* }

@INT_ALL_Rx = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@EXT_INT_ENAB = common dso_local global i32 0, align 4
@RxINT_MASK = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pmac_port*, i32)* @pmz_interrupt_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_interrupt_control(%struct.uart_pmac_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = load i32, i32* @INT_ALL_Rx, align 4
  %9 = load i32, i32* @TxINT_ENAB, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %10
  store i32 %16, i32* %14, align 4
  %17 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %18 = call i32 @ZS_IS_EXTCLK(%struct.uart_pmac_port* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* @EXT_INT_ENAB, align 4
  %22 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %21
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %20, %7
  br label %42

29:                                               ; preds = %2
  %30 = load i32, i32* @EXT_INT_ENAB, align 4
  %31 = load i32, i32* @TxINT_ENAB, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @RxINT_MASK, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %35
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %29, %28
  %43 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %44 = load i32, i32* @R1, align 4
  %45 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %46 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @write_zsreg(%struct.uart_pmac_port* %43, i32 %44, i32 %49)
  ret void
}

declare dso_local i32 @ZS_IS_EXTCLK(%struct.uart_pmac_port*) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
