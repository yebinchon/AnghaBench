; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max3100.c_max3100_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max3100.c_max3100_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max3100_port = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@s = common dso_local global %struct.max3100_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @max3100_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max3100_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.max3100_port*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %5 = ptrtoint %struct.max3100_port* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.max3100_port* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.max3100_port* %8, %struct.max3100_port** %3, align 8
  %9 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %10 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %16 = call i32 @max3100_dowork(%struct.max3100_port* %15)
  %17 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %18 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %17, i32 0, i32 1
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.max3100_port*, %struct.max3100_port** %3, align 8
  %21 = getelementptr inbounds %struct.max3100_port, %struct.max3100_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i32 @mod_timer(i32* %18, i64 %23)
  br label %25

25:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.max3100_port* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @max3100_dowork(%struct.max3100_port*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
