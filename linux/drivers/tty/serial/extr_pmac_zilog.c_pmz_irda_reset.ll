; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_irda_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_irda_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@DTR = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pmac_port*)* @pmz_irda_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_irda_reset(%struct.uart_pmac_port* %0) #0 {
  %2 = alloca %struct.uart_pmac_port*, align 8
  %3 = alloca i64, align 8
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %2, align 8
  %4 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load i32, i32* @DTR, align 4
  %10 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @R5, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %9
  store i32 %16, i32* %14, align 4
  %17 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %18 = load i64, i64* @R5, align 8
  %19 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @R5, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @write_zsreg(%struct.uart_pmac_port* %17, i64 %18, i32 %24)
  %26 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %27 = call i32 @zssync(%struct.uart_pmac_port* %26)
  %28 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = call i32 @msleep(i32 110)
  %34 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load i32, i32* @DTR, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @R5, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %40
  store i32 %47, i32* %45, align 4
  %48 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %49 = load i64, i64* @R5, align 8
  %50 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %51 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @R5, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @write_zsreg(%struct.uart_pmac_port* %48, i64 %49, i32 %55)
  %57 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %58 = call i32 @zssync(%struct.uart_pmac_port* %57)
  %59 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %60 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = call i32 @msleep(i32 10)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i32) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
