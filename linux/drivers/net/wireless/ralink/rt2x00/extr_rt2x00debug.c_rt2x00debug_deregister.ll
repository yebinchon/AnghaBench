; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00debug.c_rt2x00debug_deregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00debug.c_rt2x00debug_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.rt2x00debug_intf* }
%struct.rt2x00debug_intf = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { %struct.rt2x00debug_intf* }
%struct.TYPE_3__ = type { %struct.rt2x00debug_intf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00debug_deregister(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.rt2x00debug_intf*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %4, i32 0, i32 0
  %6 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %5, align 8
  store %struct.rt2x00debug_intf* %6, %struct.rt2x00debug_intf** %3, align 8
  %7 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %8 = icmp ne %struct.rt2x00debug_intf* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %16 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %15, i32 0, i32 3
  %17 = call i32 @skb_queue_purge(i32* %16)
  %18 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %19 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @debugfs_remove_recursive(i32 %20)
  %22 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %23 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %24, align 8
  %26 = call i32 @kfree(%struct.rt2x00debug_intf* %25)
  %27 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %28 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %29, align 8
  %31 = call i32 @kfree(%struct.rt2x00debug_intf* %30)
  %32 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %3, align 8
  %33 = call i32 @kfree(%struct.rt2x00debug_intf* %32)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %35 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %34, i32 0, i32 0
  store %struct.rt2x00debug_intf* null, %struct.rt2x00debug_intf** %35, align 8
  br label %36

36:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @kfree(%struct.rt2x00debug_intf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
