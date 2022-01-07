; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { i32, i64, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@reset_done = common dso_local global i32 0, align 4
@DS1WM_INT_EN = common dso_local global i32 0, align 4
@DS1WM_INTEN_EPD = common dso_local global i32 0, align 4
@DS1WM_CMD = common dso_local global i32 0, align 4
@DS1WM_CMD_1W_RESET = common dso_local global i32 0, align 4
@DS1WM_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"reset failed, timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"reset: no devices found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds1wm_data*)* @ds1wm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1wm_reset(%struct.ds1wm_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ds1wm_data*, align 8
  %4 = alloca i64, align 8
  store %struct.ds1wm_data* %0, %struct.ds1wm_data** %3, align 8
  %5 = load i32, i32* @reset_done, align 4
  %6 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %5)
  %7 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %8 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %7, i32 0, i32 4
  store i32* @reset_done, i32** %8, align 8
  %9 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %10 = load i32, i32* @DS1WM_INT_EN, align 4
  %11 = load i32, i32* @DS1WM_INTEN_EPD, align 4
  %12 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %13 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %11, %14
  %16 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %9, i32 %10, i32 %15)
  %17 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %18 = load i32, i32* @DS1WM_CMD, align 4
  %19 = load i32, i32* @DS1WM_CMD_1W_RESET, align 4
  %20 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @DS1WM_TIMEOUT, align 4
  %22 = call i64 @wait_for_completion_timeout(i32* @reset_done, i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %24 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %29 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %55

33:                                               ; preds = %1
  %34 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %35 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %40 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %55

44:                                               ; preds = %33
  %45 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %46 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.ds1wm_data*, %struct.ds1wm_data** %3, align 8
  %51 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @msleep(i64 %52)
  br label %54

54:                                               ; preds = %49, %44
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %38, %27
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @ds1wm_write_register(%struct.ds1wm_data*, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @msleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
