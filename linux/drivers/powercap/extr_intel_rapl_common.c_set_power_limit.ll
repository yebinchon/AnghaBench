; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_set_power_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_set_power_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powercap_zone = type { i32 }
%struct.rapl_domain = type { i32, %struct.TYPE_2__*, i32, %struct.rapl_package* }
%struct.TYPE_2__ = type { i32 }
%struct.rapl_package = type { i32 }

@DOMAIN_STATE_BIOS_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s locked by BIOS, monitoring only\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@POWER_LIMIT1 = common dso_local global i32 0, align 4
@POWER_LIMIT2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powercap_zone*, i32, i32)* @set_power_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_power_limit(%struct.powercap_zone* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.powercap_zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rapl_domain*, align 8
  %8 = alloca %struct.rapl_package*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.powercap_zone* %0, %struct.powercap_zone** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = call i32 (...) @get_online_cpus()
  %12 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %13 = call %struct.rapl_domain* @power_zone_to_rapl_domain(%struct.powercap_zone* %12)
  store %struct.rapl_domain* %13, %struct.rapl_domain** %7, align 8
  %14 = load %struct.rapl_domain*, %struct.rapl_domain** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @contraint_to_pl(%struct.rapl_domain* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %9, align 4
  br label %69

21:                                               ; preds = %3
  %22 = load %struct.rapl_domain*, %struct.rapl_domain** %7, align 8
  %23 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %22, i32 0, i32 3
  %24 = load %struct.rapl_package*, %struct.rapl_package** %23, align 8
  store %struct.rapl_package* %24, %struct.rapl_package** %8, align 8
  %25 = load %struct.rapl_domain*, %struct.rapl_domain** %7, align 8
  %26 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DOMAIN_STATE_BIOS_LOCKED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = load %struct.powercap_zone*, %struct.powercap_zone** %4, align 8
  %33 = getelementptr inbounds %struct.powercap_zone, %struct.powercap_zone* %32, i32 0, i32 0
  %34 = load %struct.rapl_domain*, %struct.rapl_domain** %7, align 8
  %35 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_warn(i32* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EACCES, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %69

40:                                               ; preds = %21
  %41 = load %struct.rapl_domain*, %struct.rapl_domain** %7, align 8
  %42 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %59 [
    i32 129, label %49
    i32 128, label %54
  ]

49:                                               ; preds = %40
  %50 = load %struct.rapl_domain*, %struct.rapl_domain** %7, align 8
  %51 = load i32, i32* @POWER_LIMIT1, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @rapl_write_data_raw(%struct.rapl_domain* %50, i32 %51, i32 %52)
  br label %62

54:                                               ; preds = %40
  %55 = load %struct.rapl_domain*, %struct.rapl_domain** %7, align 8
  %56 = load i32, i32* @POWER_LIMIT2, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @rapl_write_data_raw(%struct.rapl_domain* %55, i32 %56, i32 %57)
  br label %62

59:                                               ; preds = %40
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %54, %49
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load %struct.rapl_package*, %struct.rapl_package** %8, align 8
  %67 = call i32 @package_power_limit_irq_save(%struct.rapl_package* %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %31, %19
  %70 = call i32 (...) @put_online_cpus()
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local %struct.rapl_domain* @power_zone_to_rapl_domain(%struct.powercap_zone*) #1

declare dso_local i32 @contraint_to_pl(%struct.rapl_domain*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @rapl_write_data_raw(%struct.rapl_domain*, i32, i32) #1

declare dso_local i32 @package_power_limit_irq_save(%struct.rapl_package*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
