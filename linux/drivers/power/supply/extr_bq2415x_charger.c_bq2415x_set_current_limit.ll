; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i32 }

@BQ2415X_REG_CONTROL = common dso_local global i32 0, align 4
@BQ2415X_MASK_LIMIT = common dso_local global i32 0, align 4
@BQ2415X_SHIFT_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq2415x_device*, i32)* @bq2415x_set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_set_current_limit(%struct.bq2415x_device* %0, i32 %1) #0 {
  %3 = alloca %struct.bq2415x_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %6, 100
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %20

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 500
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, i32* %5, align 4
  br label %19

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 800
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 2, i32* %5, align 4
  br label %18

17:                                               ; preds = %13
  store i32 3, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %16
  br label %19

19:                                               ; preds = %18, %12
  br label %20

20:                                               ; preds = %19, %8
  %21 = load %struct.bq2415x_device*, %struct.bq2415x_device** %3, align 8
  %22 = load i32, i32* @BQ2415X_REG_CONTROL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @BQ2415X_MASK_LIMIT, align 4
  %25 = load i32, i32* @BQ2415X_SHIFT_LIMIT, align 4
  %26 = call i32 @bq2415x_i2c_write_mask(%struct.bq2415x_device* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @bq2415x_i2c_write_mask(%struct.bq2415x_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
