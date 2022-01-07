; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcicore_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_pcicore.c_ssb_pcicore_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_pcicore = type { i64, %struct.ssb_device* }
%struct.ssb_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_pcicore_init(%struct.ssb_pcicore* %0) #0 {
  %2 = alloca %struct.ssb_pcicore*, align 8
  %3 = alloca %struct.ssb_device*, align 8
  store %struct.ssb_pcicore* %0, %struct.ssb_pcicore** %2, align 8
  %4 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %5 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %4, i32 0, i32 1
  %6 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  store %struct.ssb_device* %6, %struct.ssb_device** %3, align 8
  %7 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %8 = icmp ne %struct.ssb_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %12 = call i32 @ssb_device_is_enabled(%struct.ssb_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %16 = call i32 @ssb_device_enable(%struct.ssb_device* %15, i32 0)
  br label %17

17:                                               ; preds = %14, %10
  %18 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %19 = getelementptr inbounds %struct.ssb_pcicore, %struct.ssb_pcicore* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.ssb_pcicore*, %struct.ssb_pcicore** %2, align 8
  %24 = call i32 @ssb_pcicore_init_clientmode(%struct.ssb_pcicore* %23)
  br label %25

25:                                               ; preds = %9, %22, %17
  ret void
}

declare dso_local i32 @ssb_device_is_enabled(%struct.ssb_device*) #1

declare dso_local i32 @ssb_device_enable(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_pcicore_init_clientmode(%struct.ssb_pcicore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
