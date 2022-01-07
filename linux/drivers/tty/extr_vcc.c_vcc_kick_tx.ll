; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_kick_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_vcc.c_vcc_kick_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcc_port = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcc_port*)* @vcc_kick_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcc_kick_tx(%struct.vcc_port* %0) #0 {
  %2 = alloca %struct.vcc_port*, align 8
  store %struct.vcc_port* %0, %struct.vcc_port** %2, align 8
  %3 = load %struct.vcc_port*, %struct.vcc_port** %2, align 8
  %4 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %3, i32 0, i32 2
  %5 = call i32 @assert_spin_locked(i32* %4)
  %6 = load %struct.vcc_port*, %struct.vcc_port** %2, align 8
  %7 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %6, i32 0, i32 0
  %8 = call i32 @timer_pending(%struct.TYPE_3__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = load %struct.vcc_port*, %struct.vcc_port** %2, align 8
  %12 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* @jiffies, align 8
  %17 = add nsw i64 %16, 1
  %18 = load %struct.vcc_port*, %struct.vcc_port** %2, align 8
  %19 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.vcc_port*, %struct.vcc_port** %2, align 8
  %22 = getelementptr inbounds %struct.vcc_port, %struct.vcc_port* %21, i32 0, i32 0
  %23 = call i32 @add_timer(%struct.TYPE_3__* %22)
  br label %24

24:                                               ; preds = %15, %10, %1
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
