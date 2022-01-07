; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_set_domain_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_set_domain_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.rapl_domain*, i32)* }
%struct.rapl_domain = type { i32 }
%struct.powercap_zone = type { i32 }

@DOMAIN_STATE_BIOS_LOCKED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@PL1_ENABLE = common dso_local global i32 0, align 4
@rapl_defaults = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powercap_zone*, i32)* @set_domain_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_domain_enable(%struct.powercap_zone* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powercap_zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rapl_domain*, align 8
  store %struct.powercap_zone* %0, %struct.powercap_zone** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %8 = call %struct.rapl_domain* @power_zone_to_rapl_domain(%struct.powercap_zone* %7)
  store %struct.rapl_domain* %8, %struct.rapl_domain** %6, align 8
  %9 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %10 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DOMAIN_STATE_BIOS_LOCKED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EACCES, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = call i32 (...) @get_online_cpus()
  %20 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %21 = load i32, i32* @PL1_ENABLE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @rapl_write_data_raw(%struct.rapl_domain* %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rapl_defaults, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.rapl_domain*, i32)*, i32 (%struct.rapl_domain*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.rapl_domain*, i32)* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rapl_defaults, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.rapl_domain*, i32)*, i32 (%struct.rapl_domain*, i32)** %30, align 8
  %32 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 %31(%struct.rapl_domain* %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %18
  %36 = call i32 (...) @put_online_cpus()
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.rapl_domain* @power_zone_to_rapl_domain(%struct.powercap_zone*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @rapl_write_data_raw(%struct.rapl_domain*, i32, i32) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
