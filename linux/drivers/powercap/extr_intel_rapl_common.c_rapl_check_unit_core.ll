; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_check_unit_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_check_unit_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rapl_package = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 (i32, %struct.reg_action*)* }
%struct.reg_action = type { i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Failed to read power unit REG 0x%llx on CPU %d, exit.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENERGY_UNIT_MASK = common dso_local global i32 0, align 4
@ENERGY_UNIT_OFFSET = common dso_local global i32 0, align 4
@ENERGY_UNIT_SCALE = common dso_local global i32 0, align 4
@POWER_UNIT_MASK = common dso_local global i32 0, align 4
@POWER_UNIT_OFFSET = common dso_local global i32 0, align 4
@TIME_UNIT_MASK = common dso_local global i32 0, align 4
@TIME_UNIT_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Core CPU %s energy=%dpJ, time=%dus, power=%duW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rapl_package*, i32)* @rapl_check_unit_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_check_unit_core(%struct.rapl_package* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rapl_package*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reg_action, align 4
  %7 = alloca i32, align 4
  store %struct.rapl_package* %0, %struct.rapl_package** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %9 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %6, i32 0, i32 1
  store i32 -1, i32* %14, align 4
  %15 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %16 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64 (i32, %struct.reg_action*)*, i64 (i32, %struct.reg_action*)** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 %19(i32 %20, %struct.reg_action* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %25 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %82

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ENERGY_UNIT_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @ENERGY_UNIT_OFFSET, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @ENERGY_UNIT_SCALE, align 4
  %41 = mul nsw i32 %40, 1000000
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 1, %42
  %44 = sdiv i32 %41, %43
  %45 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %46 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @POWER_UNIT_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @POWER_UNIT_OFFSET, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 1, %53
  %55 = sdiv i32 1000000, %54
  %56 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %57 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.reg_action, %struct.reg_action* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TIME_UNIT_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @TIME_UNIT_OFFSET, align 4
  %63 = ashr i32 %61, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 1, %64
  %66 = sdiv i32 1000000, %65
  %67 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %68 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %70 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %73 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %76 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %79 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74, i32 %77, i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %33, %23
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
