; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_find_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_find_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32, i32 }
%struct.fwtty_peer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fwtty_port** }

@num_ttys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fwtty_port* (%struct.fwtty_peer*)* @fwserial_find_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fwtty_port* @fwserial_find_port(%struct.fwtty_peer* %0) #0 {
  %2 = alloca %struct.fwtty_port*, align 8
  %3 = alloca %struct.fwtty_peer*, align 8
  %4 = alloca %struct.fwtty_port**, align 8
  %5 = alloca i32, align 4
  store %struct.fwtty_peer* %0, %struct.fwtty_peer** %3, align 8
  %6 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %7 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.fwtty_port**, %struct.fwtty_port*** %9, align 8
  store %struct.fwtty_port** %10, %struct.fwtty_port*** %4, align 8
  %11 = call i32 (...) @synchronize_rcu()
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %62, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @num_ttys, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = load %struct.fwtty_port**, %struct.fwtty_port*** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %17, i64 %19
  %21 = load %struct.fwtty_port*, %struct.fwtty_port** %20, align 8
  %22 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.fwtty_port**, %struct.fwtty_port*** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %24, i64 %26
  %28 = load %struct.fwtty_port*, %struct.fwtty_port** %27, align 8
  %29 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %16
  %33 = load %struct.fwtty_port**, %struct.fwtty_port*** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %33, i64 %35
  %37 = load %struct.fwtty_port*, %struct.fwtty_port** %36, align 8
  %38 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %41 = call i32 @rcu_assign_pointer(i32 %39, %struct.fwtty_peer* %40)
  %42 = load %struct.fwtty_port**, %struct.fwtty_port*** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %42, i64 %44
  %46 = load %struct.fwtty_port*, %struct.fwtty_port** %45, align 8
  %47 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = load %struct.fwtty_port**, %struct.fwtty_port*** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %49, i64 %51
  %53 = load %struct.fwtty_port*, %struct.fwtty_port** %52, align 8
  store %struct.fwtty_port* %53, %struct.fwtty_port** %2, align 8
  br label %66

54:                                               ; preds = %16
  %55 = load %struct.fwtty_port**, %struct.fwtty_port*** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.fwtty_port*, %struct.fwtty_port** %55, i64 %57
  %59 = load %struct.fwtty_port*, %struct.fwtty_port** %58, align 8
  %60 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock_bh(i32* %60)
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %12

65:                                               ; preds = %12
  store %struct.fwtty_port* null, %struct.fwtty_port** %2, align 8
  br label %66

66:                                               ; preds = %65, %32
  %67 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  ret %struct.fwtty_port* %67
}

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.fwtty_peer*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
