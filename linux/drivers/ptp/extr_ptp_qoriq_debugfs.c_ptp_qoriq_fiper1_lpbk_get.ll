; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq_debugfs.c_ptp_qoriq_fiper1_lpbk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq_debugfs.c_ptp_qoriq_fiper1_lpbk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_qoriq = type { i32 (i32*)*, %struct.ptp_qoriq_registers }
%struct.ptp_qoriq_registers = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PP1L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @ptp_qoriq_fiper1_lpbk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptp_qoriq_fiper1_lpbk_get(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ptp_qoriq*, align 8
  %6 = alloca %struct.ptp_qoriq_registers*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ptp_qoriq*
  store %struct.ptp_qoriq* %9, %struct.ptp_qoriq** %5, align 8
  %10 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %5, align 8
  %11 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %10, i32 0, i32 1
  store %struct.ptp_qoriq_registers* %11, %struct.ptp_qoriq_registers** %6, align 8
  %12 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %5, align 8
  %13 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %12, i32 0, i32 0
  %14 = load i32 (i32*)*, i32 (i32*)** %13, align 8
  %15 = load %struct.ptp_qoriq_registers*, %struct.ptp_qoriq_registers** %6, align 8
  %16 = getelementptr inbounds %struct.ptp_qoriq_registers, %struct.ptp_qoriq_registers* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 %14(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PP1L, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
