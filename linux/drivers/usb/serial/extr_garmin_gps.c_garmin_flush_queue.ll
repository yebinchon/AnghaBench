; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_garmin_gps.c_garmin_flush_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_garmin_gps.c_garmin_flush_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.garmin_data = type { i32, i32, i32, i32 }
%struct.garmin_packet = type { i32, i32 }

@FLAGS_THROTTLED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FLAGS_QUEUING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.garmin_data*)* @garmin_flush_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @garmin_flush_queue(%struct.garmin_data* %0) #0 {
  %2 = alloca %struct.garmin_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.garmin_packet*, align 8
  store %struct.garmin_data* %0, %struct.garmin_data** %2, align 8
  %5 = load %struct.garmin_data*, %struct.garmin_data** %2, align 8
  %6 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FLAGS_THROTTLED, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %1
  %12 = load %struct.garmin_data*, %struct.garmin_data** %2, align 8
  %13 = call %struct.garmin_packet* @pkt_pop(%struct.garmin_data* %12)
  store %struct.garmin_packet* %13, %struct.garmin_packet** %4, align 8
  %14 = load %struct.garmin_packet*, %struct.garmin_packet** %4, align 8
  %15 = icmp ne %struct.garmin_packet* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load %struct.garmin_data*, %struct.garmin_data** %2, align 8
  %18 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.garmin_packet*, %struct.garmin_packet** %4, align 8
  %21 = getelementptr inbounds %struct.garmin_packet, %struct.garmin_packet* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.garmin_packet*, %struct.garmin_packet** %4, align 8
  %24 = getelementptr inbounds %struct.garmin_packet, %struct.garmin_packet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @send_to_tty(i32 %19, i32 %22, i32 %25)
  %27 = load %struct.garmin_packet*, %struct.garmin_packet** %4, align 8
  %28 = call i32 @kfree(%struct.garmin_packet* %27)
  %29 = load %struct.garmin_data*, %struct.garmin_data** %2, align 8
  %30 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %29, i32 0, i32 2
  %31 = load i64, i64* @jiffies, align 8
  %32 = add nsw i64 1, %31
  %33 = call i32 @mod_timer(i32* %30, i64 %32)
  br label %49

34:                                               ; preds = %11
  %35 = load %struct.garmin_data*, %struct.garmin_data** %2, align 8
  %36 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %35, i32 0, i32 1
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load i32, i32* @FLAGS_QUEUING, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.garmin_data*, %struct.garmin_data** %2, align 8
  %42 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.garmin_data*, %struct.garmin_data** %2, align 8
  %46 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %45, i32 0, i32 1
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %34, %16
  br label %50

50:                                               ; preds = %49, %1
  ret i32 0
}

declare dso_local %struct.garmin_packet* @pkt_pop(%struct.garmin_data*) #1

declare dso_local i32 @send_to_tty(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.garmin_packet*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
