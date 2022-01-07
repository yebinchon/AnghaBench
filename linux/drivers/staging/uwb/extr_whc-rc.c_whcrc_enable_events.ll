; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whc-rc.c_whcrc_enable_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_whc-rc.c_whcrc_enable_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whcrc = type { i32, i64, i32 }

@URCEVTADDR = common dso_local global i64 0, align 8
@URCCMD = common dso_local global i64 0, align 8
@URCCMD_ACTIVE = common dso_local global i32 0, align 4
@URCCMD_EARV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.whcrc*)* @whcrc_enable_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whcrc_enable_events(%struct.whcrc* %0) #0 {
  %2 = alloca %struct.whcrc*, align 8
  %3 = alloca i32, align 4
  store %struct.whcrc* %0, %struct.whcrc** %2, align 8
  %4 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %5 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %8 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @URCEVTADDR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @le_writeq(i32 %6, i64 %11)
  %13 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %14 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %17 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @URCCMD, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @le_readl(i64 %20)
  %22 = load i32, i32* @URCCMD_ACTIVE, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @URCCMD_EARV, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %29 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @URCCMD, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @le_writel(i32 %27, i64 %32)
  %34 = load %struct.whcrc*, %struct.whcrc** %2, align 8
  %35 = getelementptr inbounds %struct.whcrc, %struct.whcrc* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  ret void
}

declare dso_local i32 @le_writeq(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @le_readl(i64) #1

declare dso_local i32 @le_writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
