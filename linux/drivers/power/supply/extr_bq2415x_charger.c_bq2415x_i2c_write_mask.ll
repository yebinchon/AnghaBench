; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_i2c_write_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_i2c_write_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq2415x_device*, i32, i32, i32, i32)* @bq2415x_i2c_write_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_i2c_write_mask(%struct.bq2415x_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bq2415x_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp sgt i32 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %40

18:                                               ; preds = %5
  %19 = load %struct.bq2415x_device*, %struct.bq2415x_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @bq2415x_i2c_read(%struct.bq2415x_device* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %40

26:                                               ; preds = %18
  %27 = load i32, i32* %10, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %12, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %11, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  %36 = load %struct.bq2415x_device*, %struct.bq2415x_device** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @bq2415x_i2c_write(%struct.bq2415x_device* %36, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %26, %24, %15
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @bq2415x_i2c_read(%struct.bq2415x_device*, i32) #1

declare dso_local i32 @bq2415x_i2c_write(%struct.bq2415x_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
