; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_get_energy_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_get_energy_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powercap_zone = type { i32 }
%struct.rapl_domain = type { i32 }

@ENERGY_COUNTER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powercap_zone*, i32*)* @get_energy_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_energy_counter(%struct.powercap_zone* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powercap_zone*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rapl_domain*, align 8
  %7 = alloca i32, align 4
  store %struct.powercap_zone* %0, %struct.powercap_zone** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32 (...) @get_online_cpus()
  %9 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %10 = call %struct.rapl_domain* @power_zone_to_rapl_domain(%struct.powercap_zone* %9)
  store %struct.rapl_domain* %10, %struct.rapl_domain** %6, align 8
  %11 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %12 = load i32, i32* @ENERGY_COUNTER, align 4
  %13 = call i32 @rapl_read_data_raw(%struct.rapl_domain* %11, i32 %12, i32 1, i32* %7)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = call i32 (...) @put_online_cpus()
  store i32 0, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = call i32 (...) @put_online_cpus()
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local %struct.rapl_domain* @power_zone_to_rapl_domain(%struct.powercap_zone*) #1

declare dso_local i32 @rapl_read_data_raw(%struct.rapl_domain*, i32, i32, i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
