; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_state_known_to_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_state_known_to_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64, i32 }

@DASD_STATE_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_state_known_to_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_state_known_to_new(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %3 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %4 = call i32 @dasd_eer_disable(%struct.dasd_device* %3)
  %5 = load i32, i32* @DASD_STATE_NEW, align 4
  %6 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  %8 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %9 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %14 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @dasd_free_queue(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %19 = call i32 @dasd_put_device(%struct.dasd_device* %18)
  ret i32 0
}

declare dso_local i32 @dasd_eer_disable(%struct.dasd_device*) #1

declare dso_local i32 @dasd_free_queue(i64) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
