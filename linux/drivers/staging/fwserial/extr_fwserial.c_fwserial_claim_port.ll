; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_claim_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_claim_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, i32 }
%struct.fwtty_peer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fwtty_port** }

@num_ports = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fwtty_port* (%struct.fwtty_peer*, i32)* @fwserial_claim_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fwtty_port* @fwserial_claim_port(%struct.fwtty_peer* %0, i32 %1) #0 {
  %3 = alloca %struct.fwtty_port*, align 8
  %4 = alloca %struct.fwtty_peer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fwtty_port*, align 8
  store %struct.fwtty_peer* %0, %struct.fwtty_peer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @num_ports, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.fwtty_port* @ERR_PTR(i32 %15)
  store %struct.fwtty_port* %16, %struct.fwtty_port** %3, align 8
  br label %51

17:                                               ; preds = %9
  %18 = call i32 (...) @synchronize_rcu()
  %19 = load %struct.fwtty_peer*, %struct.fwtty_peer** %4, align 8
  %20 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.fwtty_port**, %struct.fwtty_port*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %23, i64 %25
  %27 = load %struct.fwtty_port*, %struct.fwtty_port** %26, align 8
  store %struct.fwtty_port* %27, %struct.fwtty_port** %6, align 8
  %28 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %29 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %32 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rcu_access_pointer(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %17
  %37 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %38 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fwtty_peer*, %struct.fwtty_peer** %4, align 8
  %41 = call i32 @rcu_assign_pointer(i32 %39, %struct.fwtty_peer* %40)
  br label %46

42:                                               ; preds = %17
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.fwtty_port* @ERR_PTR(i32 %44)
  store %struct.fwtty_port* %45, %struct.fwtty_port** %6, align 8
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  %48 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load %struct.fwtty_port*, %struct.fwtty_port** %6, align 8
  store %struct.fwtty_port* %50, %struct.fwtty_port** %3, align 8
  br label %51

51:                                               ; preds = %46, %13
  %52 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  ret %struct.fwtty_port* %52
}

declare dso_local %struct.fwtty_port* @ERR_PTR(i32) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.fwtty_peer*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
