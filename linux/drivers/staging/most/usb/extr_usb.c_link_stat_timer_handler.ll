; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_link_stat_timer_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_link_stat_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.most_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@link_stat_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@mdev = common dso_local global %struct.most_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @link_stat_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_stat_timer_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.most_dev*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %5 = ptrtoint %struct.most_dev* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @link_stat_timer, align 4
  %8 = call %struct.most_dev* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.most_dev* %8, %struct.most_dev** %3, align 8
  %9 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %10 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %9, i32 0, i32 1
  %11 = call i32 @schedule_work(i32* %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i32, i32* @HZ, align 4
  %14 = mul nsw i32 2, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %18 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load %struct.most_dev*, %struct.most_dev** %3, align 8
  %21 = getelementptr inbounds %struct.most_dev, %struct.most_dev* %20, i32 0, i32 0
  %22 = call i32 @add_timer(%struct.TYPE_2__* %21)
  ret void
}

declare dso_local %struct.most_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
