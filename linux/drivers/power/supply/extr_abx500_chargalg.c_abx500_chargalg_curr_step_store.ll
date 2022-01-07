; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_curr_step_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_curr_step_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@CHARGALG_CURR_STEP_LOW = common dso_local global i64 0, align 8
@CHARGALG_CURR_STEP_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [122 x i8] c"Wrong current step\0AEnter 0. Disable AC/USB Charging\0A1--100. Set AC/USB charging current step\0A100. Enable AC/USB Charging\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abx500_chargalg*, i8*, i64)* @abx500_chargalg_curr_step_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_chargalg_curr_step_store(%struct.abx500_chargalg* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.abx500_chargalg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @kstrtol(i8* %10, i32 10, i64* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %52

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %19 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %22 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHARGALG_CURR_STEP_LOW, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %16
  %28 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %29 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CHARGALG_CURR_STEP_HIGH, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %36 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  %38 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %39 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %42 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %41, i32 0, i32 1
  %43 = call i32 @queue_work(i32 %40, i32* %42)
  br label %49

44:                                               ; preds = %27, %16
  %45 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %5, align 8
  %46 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_info(i32 %47, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %34
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strlen(i8* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
