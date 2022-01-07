; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00link.c_rt2x00link_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00link.c_rt2x00link_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.link }
%struct.link = type { i64, i32, i32 }

@rt2x00link_tuner = common dso_local global i32 0, align 4
@rt2x00link_watchdog = common dso_local global i32 0, align 4
@WATCHDOG_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00link_register(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.link*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %4, i32 0, i32 0
  store %struct.link* %5, %struct.link** %3, align 8
  %6 = load %struct.link*, %struct.link** %3, align 8
  %7 = getelementptr inbounds %struct.link, %struct.link* %6, i32 0, i32 2
  %8 = load i32, i32* @rt2x00link_tuner, align 4
  %9 = call i32 @INIT_DELAYED_WORK(i32* %7, i32 %8)
  %10 = load %struct.link*, %struct.link** %3, align 8
  %11 = getelementptr inbounds %struct.link, %struct.link* %10, i32 0, i32 1
  %12 = load i32, i32* @rt2x00link_watchdog, align 4
  %13 = call i32 @INIT_DELAYED_WORK(i32* %11, i32 %12)
  %14 = load %struct.link*, %struct.link** %3, align 8
  %15 = getelementptr inbounds %struct.link, %struct.link* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i64, i64* @WATCHDOG_INTERVAL, align 8
  %20 = load %struct.link*, %struct.link** %3, align 8
  %21 = getelementptr inbounds %struct.link, %struct.link* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
