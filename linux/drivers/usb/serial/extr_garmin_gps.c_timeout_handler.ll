; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_garmin_gps.c_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_garmin_gps.c_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.garmin_data = type { i64, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@MODE_NATIVE = common dso_local global i64 0, align 8
@FLAGS_QUEUING = common dso_local global i32 0, align 4
@garmin_data_p = common dso_local global %struct.garmin_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @timeout_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timeout_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.garmin_data*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.garmin_data*, %struct.garmin_data** %3, align 8
  %5 = ptrtoint %struct.garmin_data* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.garmin_data* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.garmin_data* %8, %struct.garmin_data** %3, align 8
  %9 = load %struct.garmin_data*, %struct.garmin_data** %3, align 8
  %10 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MODE_NATIVE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.garmin_data*, %struct.garmin_data** %3, align 8
  %16 = getelementptr inbounds %struct.garmin_data, %struct.garmin_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FLAGS_QUEUING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.garmin_data*, %struct.garmin_data** %3, align 8
  %23 = call i32 @garmin_flush_queue(%struct.garmin_data* %22)
  br label %24

24:                                               ; preds = %21, %14
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

declare dso_local %struct.garmin_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @garmin_flush_queue(%struct.garmin_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
