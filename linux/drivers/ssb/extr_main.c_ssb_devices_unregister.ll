; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_devices_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_devices_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i64, i32, %struct.ssb_device* }
%struct.ssb_device = type { i64 }

@SSB_BUSTYPE_SSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_bus*)* @ssb_devices_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_devices_unregister(%struct.ssb_bus* %0) #0 {
  %2 = alloca %struct.ssb_bus*, align 8
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %2, align 8
  %5 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %6 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %14 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %13, i32 0, i32 3
  %15 = load %struct.ssb_device*, %struct.ssb_device** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %15, i64 %17
  store %struct.ssb_device* %18, %struct.ssb_device** %3, align 8
  %19 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %20 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %25 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @device_unregister(i64 %26)
  br label %28

28:                                               ; preds = %23, %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  br label %9

32:                                               ; preds = %9
  ret void
}

declare dso_local i32 @device_unregister(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
