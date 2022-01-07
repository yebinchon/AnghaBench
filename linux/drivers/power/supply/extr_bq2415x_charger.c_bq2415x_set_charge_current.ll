; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_set_charge_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_set_charge_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BQ2415X_REG_CURRENT = common dso_local global i32 0, align 4
@BQ2415X_MASK_VI_CHRG = common dso_local global i32 0, align 4
@BQ2415X_MASK_RESET = common dso_local global i32 0, align 4
@BQ2415X_SHIFT_VI_CHRG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq2415x_device*, i32)* @bq2415x_set_charge_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_set_charge_current(%struct.bq2415x_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq2415x_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %8 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %18 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %16, %20
  %22 = sub nsw i32 %21, 37400
  %23 = sdiv i32 %22, 6800
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %32

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 7
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 7, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31, %26
  %33 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %34 = load i32, i32* @BQ2415X_REG_CURRENT, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @BQ2415X_MASK_VI_CHRG, align 4
  %37 = load i32, i32* @BQ2415X_MASK_RESET, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @BQ2415X_SHIFT_VI_CHRG, align 4
  %40 = call i32 @bq2415x_i2c_write_mask(%struct.bq2415x_device* %33, i32 %34, i32 %35, i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @bq2415x_i2c_write_mask(%struct.bq2415x_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
