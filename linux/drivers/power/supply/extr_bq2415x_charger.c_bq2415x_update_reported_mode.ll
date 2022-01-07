; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_update_reported_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_update_reported_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i32 }

@BQ2415X_MODE_OFF = common dso_local global i32 0, align 4
@BQ2415X_MODE_NONE = common dso_local global i32 0, align 4
@BQ2415X_MODE_HOST_CHARGER = common dso_local global i32 0, align 4
@BQ2415X_MODE_DEDICATED_CHARGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq2415x_device*, i32)* @bq2415x_update_reported_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_update_reported_mode(%struct.bq2415x_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq2415x_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @BQ2415X_MODE_OFF, align 4
  store i32 %10, i32* %6, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 500
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @BQ2415X_MODE_NONE, align 4
  store i32 %15, i32* %6, align 4
  br label %24

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 1800
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @BQ2415X_MODE_HOST_CHARGER, align 4
  store i32 %20, i32* %6, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @BQ2415X_MODE_DEDICATED_CHARGER, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %21, %19
  br label %24

24:                                               ; preds = %23, %14
  br label %25

25:                                               ; preds = %24, %9
  %26 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %27 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %36

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %35 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %31
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
