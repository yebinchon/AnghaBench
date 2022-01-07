; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/actions/extr_owl-sps.c_owl_sps_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/actions/extr_owl-sps.c_owl_sps_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.owl_sps_domain = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s power off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*)* @owl_sps_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_sps_power_off(%struct.generic_pm_domain* %0) #0 {
  %2 = alloca %struct.generic_pm_domain*, align 8
  %3 = alloca %struct.owl_sps_domain*, align 8
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %2, align 8
  %4 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %2, align 8
  %5 = call %struct.owl_sps_domain* @to_owl_pd(%struct.generic_pm_domain* %4)
  store %struct.owl_sps_domain* %5, %struct.owl_sps_domain** %3, align 8
  %6 = load %struct.owl_sps_domain*, %struct.owl_sps_domain** %3, align 8
  %7 = getelementptr inbounds %struct.owl_sps_domain, %struct.owl_sps_domain* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.owl_sps_domain*, %struct.owl_sps_domain** %3, align 8
  %12 = getelementptr inbounds %struct.owl_sps_domain, %struct.owl_sps_domain* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.owl_sps_domain*, %struct.owl_sps_domain** %3, align 8
  %18 = call i32 @owl_sps_set_power(%struct.owl_sps_domain* %17, i32 0)
  ret i32 %18
}

declare dso_local %struct.owl_sps_domain* @to_owl_pd(%struct.generic_pm_domain*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @owl_sps_set_power(%struct.owl_sps_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
