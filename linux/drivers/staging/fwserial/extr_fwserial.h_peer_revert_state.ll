; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.h_peer_revert_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.h_peer_revert_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32 }
%struct.fwtty_peer = type { %struct.fwtty_port* }

@FWPS_NOT_ATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fwtty_port* (%struct.fwtty_peer*)* @peer_revert_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fwtty_port* @peer_revert_state(%struct.fwtty_peer* %0) #0 {
  %2 = alloca %struct.fwtty_peer*, align 8
  %3 = alloca %struct.fwtty_port*, align 8
  store %struct.fwtty_peer* %0, %struct.fwtty_peer** %2, align 8
  %4 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %5 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %4, i32 0, i32 0
  %6 = load %struct.fwtty_port*, %struct.fwtty_port** %5, align 8
  store %struct.fwtty_port* %6, %struct.fwtty_port** %3, align 8
  %7 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %8 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %7, i32 0, i32 0
  store %struct.fwtty_port* null, %struct.fwtty_port** %8, align 8
  %9 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %10 = load i32, i32* @FWPS_NOT_ATTACHED, align 4
  %11 = call i32 @peer_set_state(%struct.fwtty_peer* %9, i32 %10)
  %12 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  ret %struct.fwtty_port* %12
}

declare dso_local i32 @peer_set_state(%struct.fwtty_peer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
