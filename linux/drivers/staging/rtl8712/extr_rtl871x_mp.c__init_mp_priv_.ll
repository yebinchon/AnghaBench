; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c__init_mp_priv_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp.c__init_mp_priv_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_priv = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i32, i32 }

@_LOOPBOOK_MODE_ = common dso_local global i32 0, align 4
@MIXED_PHY = common dso_local global i32 0, align 4
@ANTENNA_A = common dso_local global i32 0, align 4
@ANTENNA_AB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_priv*)* @_init_mp_priv_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_init_mp_priv_(%struct.mp_priv* %0) #0 {
  %2 = alloca %struct.mp_priv*, align 8
  store %struct.mp_priv* %0, %struct.mp_priv** %2, align 8
  %3 = load i32, i32* @_LOOPBOOK_MODE_, align 4
  %4 = load %struct.mp_priv*, %struct.mp_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %4, i32 0, i32 10
  store i32 %3, i32* %5, align 4
  %6 = load %struct.mp_priv*, %struct.mp_priv** %2, align 8
  %7 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load i32, i32* @MIXED_PHY, align 4
  %9 = load %struct.mp_priv*, %struct.mp_priv** %2, align 8
  %10 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %9, i32 0, i32 9
  store i32 %8, i32* %10, align 8
  %11 = load %struct.mp_priv*, %struct.mp_priv** %2, align 8
  %12 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.mp_priv*, %struct.mp_priv** %2, align 8
  %14 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %13, i32 0, i32 1
  store i32 20, i32* %14, align 4
  %15 = load i32, i32* @ANTENNA_A, align 4
  %16 = load %struct.mp_priv*, %struct.mp_priv** %2, align 8
  %17 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @ANTENNA_AB, align 4
  %19 = load %struct.mp_priv*, %struct.mp_priv** %2, align 8
  %20 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mp_priv*, %struct.mp_priv** %2, align 8
  %22 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.mp_priv*, %struct.mp_priv** %2, align 8
  %24 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.mp_priv*, %struct.mp_priv** %2, align 8
  %26 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.mp_priv*, %struct.mp_priv** %2, align 8
  %28 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
