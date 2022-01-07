; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pmac_zilog.c_pmz_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pmac_port = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"pmz: shutdown()\0A\00", align 1
@RxENABLE = common dso_local global i32 0, align 4
@R3 = common dso_local global i64 0, align 8
@TxENABLE = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@SND_BRK = common dso_local global i32 0, align 4
@PMACZILOG_FLAG_IS_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"pmz: shutdown() done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pmz_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %5)
  store %struct.uart_pmac_port* %6, %struct.uart_pmac_port** %3, align 8
  %7 = call i32 @pmz_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %13 = call i32 @pmz_interrupt_control(%struct.uart_pmac_port* %12, i32 0)
  %14 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %15 = call i32 @ZS_IS_CONS(%struct.uart_pmac_port* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @RxENABLE, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @R3, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %19
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @TxENABLE, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @R5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %28
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @SND_BRK, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @R5, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %37
  store i32 %44, i32* %42, align 4
  %45 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %46 = call i32 @pmz_maybe_update_regs(%struct.uart_pmac_port* %45)
  br label %47

47:                                               ; preds = %17, %1
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 0
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %53 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %57 = call i32 @free_irq(i32 %55, %struct.uart_pmac_port* %56)
  %58 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 0
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load i32, i32* @PMACZILOG_FLAG_IS_OPEN, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %65 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %69 = call i32 @ZS_IS_CONS(%struct.uart_pmac_port* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %47
  %72 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %73 = call i32 @pmz_set_scc_power(%struct.uart_pmac_port* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %47
  %75 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 0
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = call i32 @pmz_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i32 @pmz_debug(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pmz_interrupt_control(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @ZS_IS_CONS(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_maybe_update_regs(%struct.uart_pmac_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_set_scc_power(%struct.uart_pmac_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
