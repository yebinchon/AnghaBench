; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_start_charging.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_start_charging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"AC parameters: Vset %d, Ich %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"USB parameters: Vset %d, Ich %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unknown charger to charge from\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abx500_chargalg*, i32, i32)* @abx500_chargalg_start_charging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abx500_chargalg_start_charging(%struct.abx500_chargalg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.abx500_chargalg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %8 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %37 [
    i32 129, label %11
    i32 128, label %24
  ]

11:                                               ; preds = %3
  %12 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %13 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %19 = call i32 @abx500_chargalg_usb_en(%struct.abx500_chargalg* %18, i32 0, i32 0, i32 0)
  %20 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @abx500_chargalg_ac_en(%struct.abx500_chargalg* %20, i32 1, i32 %21, i32 %22)
  br label %42

24:                                               ; preds = %3
  %25 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %26 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %32 = call i32 @abx500_chargalg_ac_en(%struct.abx500_chargalg* %31, i32 0, i32 0, i32 0)
  %33 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @abx500_chargalg_usb_en(%struct.abx500_chargalg* %33, i32 1, i32 %34, i32 %35)
  br label %42

37:                                               ; preds = %3
  %38 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %4, align 8
  %39 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %24, %11
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @abx500_chargalg_usb_en(%struct.abx500_chargalg*, i32, i32, i32) #1

declare dso_local i32 @abx500_chargalg_ac_en(%struct.abx500_chargalg*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
