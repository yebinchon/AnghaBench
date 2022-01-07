; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_reset_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_reset_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32 }

@SerialSignal_RTS = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@IRQ_ALL = common dso_local global i32 0, align 4
@IRQ_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @reset_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_port(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %3 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %4 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %10 = call i32 @tx_stop(%struct.slgt_info* %9)
  %11 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %12 = call i32 @rx_stop(%struct.slgt_info* %11)
  %13 = load i32, i32* @SerialSignal_RTS, align 4
  %14 = load i32, i32* @SerialSignal_DTR, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %18 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %22 = call i32 @set_signals(%struct.slgt_info* %21)
  %23 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %24 = load i32, i32* @IRQ_ALL, align 4
  %25 = load i32, i32* @IRQ_MASTER, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @slgt_irq_off(%struct.slgt_info* %23, i32 %26)
  br label %28

28:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @tx_stop(%struct.slgt_info*) #1

declare dso_local i32 @rx_stop(%struct.slgt_info*) #1

declare dso_local i32 @set_signals(%struct.slgt_info*) #1

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
