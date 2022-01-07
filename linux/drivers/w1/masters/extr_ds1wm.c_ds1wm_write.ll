; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@write_done = common dso_local global i32 0, align 4
@DS1WM_INT_EN = common dso_local global i32 0, align 4
@DS1WM_INTEN_ETMT = common dso_local global i32 0, align 4
@DS1WM_DATA = common dso_local global i32 0, align 4
@DS1WM_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"write failed, timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds1wm_data*, i32)* @ds1wm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1wm_write(%struct.ds1wm_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds1wm_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ds1wm_data* %0, %struct.ds1wm_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @write_done, align 4
  %8 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %7)
  %9 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %10 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %9, i32 0, i32 2
  store i32* @write_done, i32** %10, align 8
  %11 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %12 = load i32, i32* @DS1WM_INT_EN, align 4
  %13 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %14 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DS1WM_INTEN_ETMT, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %11, i32 %12, i32 %17)
  %19 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %20 = load i32, i32* @DS1WM_DATA, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @DS1WM_TIMEOUT, align 4
  %24 = call i64 @wait_for_completion_timeout(i32* @write_done, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %26 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %31 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @ds1wm_write_register(%struct.ds1wm_data*, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
