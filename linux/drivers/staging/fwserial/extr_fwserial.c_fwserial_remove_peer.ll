; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_remove_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_remove_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_peer = type { i32, i64, i32, i32, %struct.fwtty_port*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.fwtty_port = type { i32 }
%struct.TYPE_2__ = type { %struct.fwtty_peer* }

@FWPS_GONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"peer removed (guid:%016llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwtty_peer*)* @fwserial_remove_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwserial_remove_peer(%struct.fwtty_peer* %0) #0 {
  %2 = alloca %struct.fwtty_peer*, align 8
  %3 = alloca %struct.fwtty_port*, align 8
  store %struct.fwtty_peer* %0, %struct.fwtty_peer** %2, align 8
  %4 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %5 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %8 = load i32, i32* @FWPS_GONE, align 4
  %9 = call i32 @peer_set_state(%struct.fwtty_peer* %7, i32 %8)
  %10 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %11 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %10, i32 0, i32 0
  %12 = call i32 @spin_unlock_bh(i32* %11)
  %13 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %14 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %13, i32 0, i32 8
  %15 = call i32 @cancel_delayed_work_sync(i32* %14)
  %16 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %17 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %16, i32 0, i32 7
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %20 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %23 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %24 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %23, i32 0, i32 6
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.fwtty_peer*, %struct.fwtty_peer** %26, align 8
  %28 = icmp eq %struct.fwtty_peer* %22, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %31 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %30, i32 0, i32 6
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.fwtty_peer* null, %struct.fwtty_peer** %33, align 8
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %36 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %35, i32 0, i32 5
  %37 = call i32 @del_timer(i32* %36)
  %38 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %39 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %38, i32 0, i32 4
  %40 = load %struct.fwtty_port*, %struct.fwtty_port** %39, align 8
  store %struct.fwtty_port* %40, %struct.fwtty_port** %3, align 8
  %41 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %42 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %41, i32 0, i32 4
  store %struct.fwtty_port* null, %struct.fwtty_port** %42, align 8
  %43 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %44 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %43, i32 0, i32 3
  %45 = call i32 @list_del_rcu(i32* %44)
  %46 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %47 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %46, i32 0, i32 2
  %48 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %49 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @fwtty_info(i32* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %53 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_bh(i32* %53)
  %55 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %56 = icmp ne %struct.fwtty_port* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %34
  %58 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %59 = call i32 @fwserial_release_port(%struct.fwtty_port* %58, i32 1)
  br label %60

60:                                               ; preds = %57, %34
  %61 = call i32 (...) @synchronize_rcu()
  %62 = load %struct.fwtty_peer*, %struct.fwtty_peer** %2, align 8
  %63 = call i32 @kfree(%struct.fwtty_peer* %62)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @peer_set_state(%struct.fwtty_peer*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @fwtty_info(i32*, i8*, i64) #1

declare dso_local i32 @fwserial_release_port(%struct.fwtty_port*, i32) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(%struct.fwtty_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
