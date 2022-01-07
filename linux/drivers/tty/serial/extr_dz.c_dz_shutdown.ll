; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_dz.c_dz_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_dz.c_dz_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.dz_port = type { %struct.TYPE_2__, %struct.dz_mux* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dz_mux = type { i32 }

@DZ_CSR = common dso_local global i32 0, align 4
@DZ_RIE = common dso_local global i32 0, align 4
@DZ_TIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @dz_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dz_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.dz_port*, align 8
  %4 = alloca %struct.dz_mux*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = call %struct.dz_port* @to_dport(%struct.uart_port* %8)
  store %struct.dz_port* %9, %struct.dz_port** %3, align 8
  %10 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %11 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %10, i32 0, i32 1
  %12 = load %struct.dz_mux*, %struct.dz_mux** %11, align 8
  store %struct.dz_mux* %12, %struct.dz_mux** %4, align 8
  %13 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %14 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %19 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %18, i32 0, i32 0
  %20 = call i32 @dz_stop_tx(%struct.TYPE_2__* %19)
  %21 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %22 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.dz_mux*, %struct.dz_mux** %4, align 8
  %27 = getelementptr inbounds %struct.dz_mux, %struct.dz_mux* %26, i32 0, i32 0
  %28 = call i32 @atomic_add_return(i32 -1, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %1
  %32 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %33 = load i32, i32* @DZ_CSR, align 4
  %34 = call i32 @dz_in(%struct.dz_port* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @DZ_RIE, align 4
  %36 = load i32, i32* @DZ_TIE, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %42 = load i32, i32* @DZ_CSR, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dz_out(%struct.dz_port* %41, i32 %42, i32 %43)
  %45 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %46 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.dz_mux*, %struct.dz_mux** %4, align 8
  %50 = call i32 @free_irq(i32 %48, %struct.dz_mux* %49)
  br label %51

51:                                               ; preds = %31, %1
  ret void
}

declare dso_local %struct.dz_port* @to_dport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dz_stop_tx(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @dz_in(%struct.dz_port*, i32) #1

declare dso_local i32 @dz_out(%struct.dz_port*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.dz_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
