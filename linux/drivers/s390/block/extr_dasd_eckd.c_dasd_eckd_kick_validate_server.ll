; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_kick_validate_server.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_kick_validate_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64, i32, i32 }

@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@DASD_STATE_ONLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*)* @dasd_eckd_kick_validate_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_kick_validate_server(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %3 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %4 = call i32 @dasd_get_device(%struct.dasd_device* %3)
  %5 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %6 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 2
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %12 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DASD_STATE_ONLINE, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %1
  %17 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %18 = call i32 @dasd_put_device(%struct.dasd_device* %17)
  br label %27

19:                                               ; preds = %10
  %20 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 1
  %22 = call i32 @schedule_work(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %26 = call i32 @dasd_put_device(%struct.dasd_device* %25)
  br label %27

27:                                               ; preds = %16, %24, %19
  ret void
}

declare dso_local i32 @dasd_get_device(%struct.dasd_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
