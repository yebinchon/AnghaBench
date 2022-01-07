; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-tx.c_cvm_oct_kick_tx_poll_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-tx.c_cvm_oct_kick_tx_poll_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_ciu_timx = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@cvm_oct_tx_poll_interval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cvm_oct_kick_tx_poll_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_kick_tx_poll_watchdog() #0 {
  %1 = alloca %union.cvmx_ciu_timx, align 8
  %2 = bitcast %union.cvmx_ciu_timx* %1 to i64*
  store i64 0, i64* %2, align 8
  %3 = bitcast %union.cvmx_ciu_timx* %1 to %struct.TYPE_2__*
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load i32, i32* @cvm_oct_tx_poll_interval, align 4
  %6 = bitcast %union.cvmx_ciu_timx* %1 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = call i32 @CVMX_CIU_TIMX(i32 1)
  %9 = bitcast %union.cvmx_ciu_timx* %1 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @cvmx_write_csr(i32 %8, i64 %10)
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_CIU_TIMX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
