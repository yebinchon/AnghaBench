; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_ixp46x.c_ixp_systime_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_ixp46x.c_ixp_systime_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixp46x_ts_regs = type { i32, i32 }

@TICKS_NS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixp46x_ts_regs*)* @ixp_systime_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp_systime_read(%struct.ixp46x_ts_regs* %0) #0 {
  %2 = alloca %struct.ixp46x_ts_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixp46x_ts_regs* %0, %struct.ixp46x_ts_regs** %2, align 8
  %6 = load %struct.ixp46x_ts_regs*, %struct.ixp46x_ts_regs** %2, align 8
  %7 = getelementptr inbounds %struct.ixp46x_ts_regs, %struct.ixp46x_ts_regs* %6, i32 0, i32 1
  %8 = call i32 @__raw_readl(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ixp46x_ts_regs*, %struct.ixp46x_ts_regs** %2, align 8
  %10 = getelementptr inbounds %struct.ixp46x_ts_regs, %struct.ixp46x_ts_regs* %9, i32 0, i32 0
  %11 = call i32 @__raw_readl(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, 32
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @TICKS_NS_SHIFT, align 4
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @__raw_readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
