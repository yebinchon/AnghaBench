; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { i32, i32 }

@abx500_chargalg_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"abx500_chargalg\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to create sysfs entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abx500_chargalg*)* @abx500_chargalg_sysfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_chargalg_sysfs_init(%struct.abx500_chargalg* %0) #0 {
  %2 = alloca %struct.abx500_chargalg*, align 8
  %3 = alloca i32, align 4
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %5 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %4, i32 0, i32 1
  %6 = call i32 @kobject_init_and_add(i32* %5, i32* @abx500_chargalg_ktype, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %11 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
