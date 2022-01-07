; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_trigger_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_trigger_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_info = type { i64, i32, i64, i32, i32, i64, i32* }

@R3964_IDLE = common dso_local global i64 0, align 8
@R3964_TX_REQUEST = common dso_local global i64 0, align 8
@R3964_ERROR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@R3964_TO_QVZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"trigger_transmit - sent STX\00", align 1
@STX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r3964_info*)* @trigger_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trigger_transmit(%struct.r3964_info* %0) #0 {
  %2 = alloca %struct.r3964_info*, align 8
  %3 = alloca i64, align 8
  store %struct.r3964_info* %0, %struct.r3964_info** %2, align 8
  %4 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %5 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %9 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @R3964_IDLE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %1
  %14 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %15 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %13
  %19 = load i64, i64* @R3964_TX_REQUEST, align 8
  %20 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %21 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %23 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @R3964_ERROR, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %27 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %31 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %30, i32 0, i32 3
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* @R3964_TO_QVZ, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @mod_timer(i32* %31, i64 %34)
  %36 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %37 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %36, i32 0, i32 1
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = call i32 @TRACE_PS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %42 = load i32, i32* @STX, align 4
  %43 = call i32 @put_char(%struct.r3964_info* %41, i32 %42)
  %44 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %45 = call i32 @flush(%struct.r3964_info* %44)
  %46 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %47 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  br label %53

48:                                               ; preds = %13, %1
  %49 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %50 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %49, i32 0, i32 1
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %18
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @TRACE_PS(i8*) #1

declare dso_local i32 @put_char(%struct.r3964_info*, i32) #1

declare dso_local i32 @flush(%struct.r3964_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
