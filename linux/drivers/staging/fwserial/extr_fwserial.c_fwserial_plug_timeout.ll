; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_plug_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_plug_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_peer = type { i64, i32 }
%struct.timer_list = type { i32 }
%struct.fwtty_port = type { i32 }

@timer = common dso_local global i32 0, align 4
@FWPS_PLUG_PENDING = common dso_local global i64 0, align 8
@peer = common dso_local global %struct.fwtty_peer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @fwserial_plug_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwserial_plug_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.fwtty_peer*, align 8
  %4 = alloca %struct.fwtty_port*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %6 = ptrtoint %struct.fwtty_peer* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.fwtty_peer* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.fwtty_peer* %9, %struct.fwtty_peer** %3, align 8
  %10 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %11 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %14 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FWPS_PLUG_PENDING, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %20 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock_bh(i32* %20)
  br label %33

22:                                               ; preds = %1
  %23 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %24 = call %struct.fwtty_port* @peer_revert_state(%struct.fwtty_peer* %23)
  store %struct.fwtty_port* %24, %struct.fwtty_port** %4, align 8
  %25 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %26 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock_bh(i32* %26)
  %28 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %29 = icmp ne %struct.fwtty_port* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.fwtty_port*, %struct.fwtty_port** %4, align 8
  %32 = call i32 @fwserial_release_port(%struct.fwtty_port* %31, i32 0)
  br label %33

33:                                               ; preds = %18, %30, %22
  ret void
}

declare dso_local %struct.fwtty_peer* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.fwtty_port* @peer_revert_state(%struct.fwtty_peer*) #1

declare dso_local i32 @fwserial_release_port(%struct.fwtty_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
