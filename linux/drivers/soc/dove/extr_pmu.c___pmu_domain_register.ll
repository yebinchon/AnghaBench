; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/dove/extr_pmu.c___pmu_domain_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/dove/extr_pmu.c___pmu_domain_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_domain = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.device_node = type { i32 }

@PMU_PWR = common dso_local global i64 0, align 8
@pmu_domain_power_off = common dso_local global i32 0, align 4
@pmu_domain_power_on = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu_domain*, %struct.device_node*)* @__pmu_domain_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pmu_domain_register(%struct.pmu_domain* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.pmu_domain*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.pmu_domain* %0, %struct.pmu_domain** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %6 = load %struct.pmu_domain*, %struct.pmu_domain** %3, align 8
  %7 = getelementptr inbounds %struct.pmu_domain, %struct.pmu_domain* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PMU_PWR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl_relaxed(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @pmu_domain_power_off, align 4
  %15 = load %struct.pmu_domain*, %struct.pmu_domain** %3, align 8
  %16 = getelementptr inbounds %struct.pmu_domain, %struct.pmu_domain* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @pmu_domain_power_on, align 4
  %19 = load %struct.pmu_domain*, %struct.pmu_domain** %3, align 8
  %20 = getelementptr inbounds %struct.pmu_domain, %struct.pmu_domain* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.pmu_domain*, %struct.pmu_domain** %3, align 8
  %23 = getelementptr inbounds %struct.pmu_domain, %struct.pmu_domain* %22, i32 0, i32 1
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.pmu_domain*, %struct.pmu_domain** %3, align 8
  %26 = getelementptr inbounds %struct.pmu_domain, %struct.pmu_domain* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @pm_genpd_init(%struct.TYPE_5__* %23, i32* null, i32 %31)
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = icmp ne %struct.device_node* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  %36 = load %struct.device_node*, %struct.device_node** %4, align 8
  %37 = load %struct.pmu_domain*, %struct.pmu_domain** %3, align 8
  %38 = getelementptr inbounds %struct.pmu_domain, %struct.pmu_domain* %37, i32 0, i32 1
  %39 = call i32 @of_genpd_add_provider_simple(%struct.device_node* %36, %struct.TYPE_5__* %38)
  br label %40

40:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @of_genpd_add_provider_simple(%struct.device_node*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
