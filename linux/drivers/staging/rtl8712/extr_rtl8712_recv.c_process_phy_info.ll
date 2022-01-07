; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_process_phy_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_process_phy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%union.recv_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, %union.recv_frame*)* @process_phy_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_phy_info(%struct._adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %5 = load %struct._adapter*, %struct._adapter** %3, align 8
  %6 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %7 = call i32 @query_rx_phy_status(%struct._adapter* %5, %union.recv_frame* %6)
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %10 = call i32 @process_rssi(%struct._adapter* %8, %union.recv_frame* %9)
  %11 = load %struct._adapter*, %struct._adapter** %3, align 8
  %12 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %13 = call i32 @process_link_qual(%struct._adapter* %11, %union.recv_frame* %12)
  ret void
}

declare dso_local i32 @query_rx_phy_status(%struct._adapter*, %union.recv_frame*) #1

declare dso_local i32 @process_rssi(%struct._adapter*, %union.recv_frame*) #1

declare dso_local i32 @process_link_qual(%struct._adapter*, %union.recv_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
