; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq.c_tmr_cnt_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq.c_tmr_cnt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_qoriq = type { i32 (i32*, i32)*, %struct.ptp_qoriq_registers }
%struct.ptp_qoriq_registers = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ptp_qoriq*, i32)* @tmr_cnt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmr_cnt_write(%struct.ptp_qoriq* %0, i32 %1) #0 {
  %3 = alloca %struct.ptp_qoriq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ptp_qoriq_registers*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ptp_qoriq* %0, %struct.ptp_qoriq** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %3, align 8
  %9 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %8, i32 0, i32 1
  store %struct.ptp_qoriq_registers* %9, %struct.ptp_qoriq_registers** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %3, align 8
  %14 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %13, i32 0, i32 0
  %15 = load i32 (i32*, i32)*, i32 (i32*, i32)** %14, align 8
  %16 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %5, align 8
  %17 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %7, align 4
  %21 = call i32 %15(i32* %19, i32 %20)
  %22 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %3, align 8
  %23 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %22, i32 0, i32 0
  %24 = load i32 (i32*, i32)*, i32 (i32*, i32)** %23, align 8
  %25 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %5, align 8
  %26 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 %24(i32* %28, i32 %29)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
