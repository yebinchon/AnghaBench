; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1wm_data = type { i32, i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@DS1WM_INTEN_ERBF = common dso_local global i32 0, align 4
@read_done = common dso_local global i32 0, align 4
@DS1WM_DATA = common dso_local global i32 0, align 4
@DS1WM_INT_EN = common dso_local global i32 0, align 4
@DS1WM_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"read failed, timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds1wm_data*, i8)* @ds1wm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1wm_read(%struct.ds1wm_data* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds1wm_data*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ds1wm_data* %0, %struct.ds1wm_data** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load i32, i32* @DS1WM_INTEN_ERBF, align 4
  %9 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %10 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %8, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @read_done, align 4
  %14 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %13)
  %15 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %16 = load i32, i32* @DS1WM_DATA, align 4
  %17 = call i32 @ds1wm_read_register(%struct.ds1wm_data* %15, i32 %16)
  %18 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %19 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %18, i32 0, i32 4
  store i32* @read_done, i32** %19, align 8
  %20 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %21 = load i32, i32* @DS1WM_INT_EN, align 4
  %22 = load i32, i32* %7, align 4
  %23 = trunc i32 %22 to i8
  %24 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %20, i32 %21, i8 zeroext %23)
  %25 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %26 = load i32, i32* @DS1WM_DATA, align 4
  %27 = load i8, i8* %5, align 1
  %28 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %25, i32 %26, i8 zeroext %27)
  %29 = load i32, i32* @DS1WM_TIMEOUT, align 4
  %30 = call i64 @wait_for_completion_timeout(i32* @read_done, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %32 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %2
  %36 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %37 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  %43 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %44 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  store i32 255, i32* %3, align 4
  br label %51

45:                                               ; preds = %2
  %46 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %47 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %49 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %35
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @ds1wm_read_register(%struct.ds1wm_data*, i32) #1

declare dso_local i32 @ds1wm_write_register(%struct.ds1wm_data*, i32, i8 zeroext) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
