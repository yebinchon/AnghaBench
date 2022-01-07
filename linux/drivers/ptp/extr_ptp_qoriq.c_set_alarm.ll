; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq.c_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq.c_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_qoriq = type { i32 (i32*, i32)*, i64, %struct.ptp_qoriq_registers }
%struct.ptp_qoriq_registers = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ptp_qoriq*)* @set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_alarm(%struct.ptp_qoriq* %0) #0 {
  %2 = alloca %struct.ptp_qoriq*, align 8
  %3 = alloca %struct.ptp_qoriq_registers*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ptp_qoriq* %0, %struct.ptp_qoriq** %2, align 8
  %7 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %8 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %7, i32 0, i32 2
  store %struct.ptp_qoriq_registers* %8, %struct.ptp_qoriq_registers** %3, align 8
  %9 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %10 = call i32 @tmr_cnt_read(%struct.ptp_qoriq* %9)
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, 1500000000
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @div_u64(i32 %14, i64 1000000000)
  %16 = mul i64 %15, 1000000000
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %19 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %29 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %28, i32 0, i32 0
  %30 = load i32 (i32*, i32)*, i32 (i32*, i32)** %29, align 8
  %31 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %3, align 8
  %32 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %5, align 4
  %36 = call i32 %30(i32* %34, i32 %35)
  %37 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %2, align 8
  %38 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %37, i32 0, i32 0
  %39 = load i32 (i32*, i32)*, i32 (i32*, i32)** %38, align 8
  %40 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %3, align 8
  %41 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 %39(i32* %43, i32 %44)
  ret void
}

declare dso_local i32 @tmr_cnt_read(%struct.ptp_qoriq*) #1

declare dso_local i64 @div_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
