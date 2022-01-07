; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_hardware.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i32, i32, i32* }
%struct.ipw_tx_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_hardware*, i32, %struct.ipw_tx_packet*)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_packet(%struct.ipw_hardware* %0, i32 %1, %struct.ipw_tx_packet* %2) #0 {
  %4 = alloca %struct.ipw_hardware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipw_tx_packet*, align 8
  %7 = alloca i64, align 8
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ipw_tx_packet* %2, %struct.ipw_tx_packet** %6, align 8
  %8 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %9 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ipw_tx_packet*, %struct.ipw_tx_packet** %6, align 8
  %13 = getelementptr inbounds %struct.ipw_tx_packet, %struct.ipw_tx_packet* %12, i32 0, i32 0
  %14 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %15 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @list_add_tail(i32* %13, i32* %19)
  %21 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %22 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %26 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.ipw_hardware*, %struct.ipw_hardware** %4, align 8
  %30 = call i32 @flush_packets_to_hw(%struct.ipw_hardware* %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flush_packets_to_hw(%struct.ipw_hardware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
