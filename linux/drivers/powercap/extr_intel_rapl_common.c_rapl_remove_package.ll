; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_remove_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_remove_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rapl_package = type { i32, i32, %struct.TYPE_2__*, i32, %struct.rapl_domain* }
%struct.TYPE_2__ = type { i32 }
%struct.rapl_domain = type { i64, i32, i32 }

@PL1_ENABLE = common dso_local global i32 0, align 4
@PL1_CLAMP = common dso_local global i32 0, align 4
@PL2_ENABLE = common dso_local global i32 0, align 4
@PL2_CLAMP = common dso_local global i32 0, align 4
@RAPL_DOMAIN_PACKAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"remove package, undo power limit on %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rapl_remove_package(%struct.rapl_package* %0) #0 {
  %2 = alloca %struct.rapl_package*, align 8
  %3 = alloca %struct.rapl_domain*, align 8
  %4 = alloca %struct.rapl_domain*, align 8
  store %struct.rapl_package* %0, %struct.rapl_package** %2, align 8
  store %struct.rapl_domain* null, %struct.rapl_domain** %4, align 8
  %5 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %6 = call i32 @package_power_limit_irq_restore(%struct.rapl_package* %5)
  %7 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %8 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %7, i32 0, i32 4
  %9 = load %struct.rapl_domain*, %struct.rapl_domain** %8, align 8
  store %struct.rapl_domain* %9, %struct.rapl_domain** %3, align 8
  br label %10

10:                                               ; preds = %62, %1
  %11 = load %struct.rapl_domain*, %struct.rapl_domain** %3, align 8
  %12 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %13 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %12, i32 0, i32 4
  %14 = load %struct.rapl_domain*, %struct.rapl_domain** %13, align 8
  %15 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %16 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %14, i64 %18
  %20 = icmp ult %struct.rapl_domain* %11, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %10
  %22 = load %struct.rapl_domain*, %struct.rapl_domain** %3, align 8
  %23 = load i32, i32* @PL1_ENABLE, align 4
  %24 = call i32 @rapl_write_data_raw(%struct.rapl_domain* %22, i32 %23, i32 0)
  %25 = load %struct.rapl_domain*, %struct.rapl_domain** %3, align 8
  %26 = load i32, i32* @PL1_CLAMP, align 4
  %27 = call i32 @rapl_write_data_raw(%struct.rapl_domain* %25, i32 %26, i32 0)
  %28 = load %struct.rapl_domain*, %struct.rapl_domain** %3, align 8
  %29 = call i32 @find_nr_power_limit(%struct.rapl_domain* %28)
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = load %struct.rapl_domain*, %struct.rapl_domain** %3, align 8
  %33 = load i32, i32* @PL2_ENABLE, align 4
  %34 = call i32 @rapl_write_data_raw(%struct.rapl_domain* %32, i32 %33, i32 0)
  %35 = load %struct.rapl_domain*, %struct.rapl_domain** %3, align 8
  %36 = load i32, i32* @PL2_CLAMP, align 4
  %37 = call i32 @rapl_write_data_raw(%struct.rapl_domain* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %31, %21
  %39 = load %struct.rapl_domain*, %struct.rapl_domain** %3, align 8
  %40 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RAPL_DOMAIN_PACKAGE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load %struct.rapl_domain*, %struct.rapl_domain** %3, align 8
  store %struct.rapl_domain* %45, %struct.rapl_domain** %4, align 8
  br label %62

46:                                               ; preds = %38
  %47 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %48 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rapl_domain*, %struct.rapl_domain** %3, align 8
  %51 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %55 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rapl_domain*, %struct.rapl_domain** %3, align 8
  %60 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %59, i32 0, i32 1
  %61 = call i32 @powercap_unregister_zone(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %46, %44
  %63 = load %struct.rapl_domain*, %struct.rapl_domain** %3, align 8
  %64 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %63, i32 1
  store %struct.rapl_domain* %64, %struct.rapl_domain** %3, align 8
  br label %10

65:                                               ; preds = %10
  %66 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %67 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rapl_domain*, %struct.rapl_domain** %4, align 8
  %72 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %71, i32 0, i32 1
  %73 = call i32 @powercap_unregister_zone(i32 %70, i32* %72)
  %74 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %75 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %74, i32 0, i32 1
  %76 = call i32 @list_del(i32* %75)
  %77 = load %struct.rapl_package*, %struct.rapl_package** %2, align 8
  %78 = call i32 @kfree(%struct.rapl_package* %77)
  ret void
}

declare dso_local i32 @package_power_limit_irq_restore(%struct.rapl_package*) #1

declare dso_local i32 @rapl_write_data_raw(%struct.rapl_domain*, i32, i32) #1

declare dso_local i32 @find_nr_power_limit(%struct.rapl_domain*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @powercap_unregister_zone(i32, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.rapl_package*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
