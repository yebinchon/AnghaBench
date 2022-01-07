; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pfuze100-regulator.c_pfuze_power_off_prepare_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pfuze100-regulator.c_pfuze_power_off_prepare_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfuze_chip = type { i64, i32 }

@PFUZE100 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Requested pm_power_off_prepare handler for not supported chip\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@pm_power_off_prepare = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"pm_power_off_prepare is already registered.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@syspm_pfuze_chip = common dso_local global %struct.pfuze_chip* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"syspm_pfuze_chip is already set.\0A\00", align 1
@pfuze_power_off_prepare = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfuze_chip*)* @pfuze_power_off_prepare_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfuze_power_off_prepare_init(%struct.pfuze_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pfuze_chip*, align 8
  store %struct.pfuze_chip* %0, %struct.pfuze_chip** %3, align 8
  %4 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %5 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PFUZE100, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %11 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_warn(i32 %12, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load i64, i64* @pm_power_off_prepare, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %21 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_warn(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %16
  %27 = load %struct.pfuze_chip*, %struct.pfuze_chip** @syspm_pfuze_chip, align 8
  %28 = icmp ne %struct.pfuze_chip* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %31 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %26
  %37 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  store %struct.pfuze_chip* %37, %struct.pfuze_chip** @syspm_pfuze_chip, align 8
  %38 = load i64, i64* @pfuze_power_off_prepare, align 8
  store i64 %38, i64* @pm_power_off_prepare, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %29, %19, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
