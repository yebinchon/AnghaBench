; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00debug.c_rt2x00debug_poll_queue_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00debug.c_rt2x00debug_poll_queue_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.rt2x00debug_intf* }
%struct.rt2x00debug_intf = type { i32, i32 }

@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @rt2x00debug_poll_queue_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00debug_poll_queue_dump(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rt2x00debug_intf*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %8, align 8
  store %struct.rt2x00debug_intf* %9, %struct.rt2x00debug_intf** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %6, align 8
  %12 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %11, i32 0, i32 1
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @poll_wait(%struct.file* %10, i32* %12, i32* %13)
  %15 = load %struct.rt2x00debug_intf*, %struct.rt2x00debug_intf** %6, align 8
  %16 = getelementptr inbounds %struct.rt2x00debug_intf, %struct.rt2x00debug_intf* %15, i32 0, i32 0
  %17 = call i32 @skb_queue_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EPOLLOUT, align 4
  %21 = load i32, i32* @EPOLLWRNORM, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
