; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_register_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_register_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24190_dev_info = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"disable-reset\00", align 1
@BQ24190_REG_POC = common dso_local global i32 0, align 4
@BQ24190_REG_POC_RESET_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_POC_RESET_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24190_dev_info*)* @bq24190_register_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_register_reset(%struct.bq24190_dev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq24190_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bq24190_dev_info* %0, %struct.bq24190_dev_info** %3, align 8
  store i32 100, i32* %5, align 4
  %7 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %8 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @device_property_read_bool(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

13:                                               ; preds = %1
  %14 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %15 = load i32, i32* @BQ24190_REG_POC, align 4
  %16 = load i32, i32* @BQ24190_REG_POC_RESET_MASK, align 4
  %17 = load i32, i32* @BQ24190_REG_POC_RESET_SHIFT, align 4
  %18 = call i32 @bq24190_write_mask(%struct.bq24190_dev_info* %14, i32 %15, i32 %16, i32 %17, i32 1)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %40, %23
  %25 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %26 = load i32, i32* @BQ24190_REG_POC, align 4
  %27 = load i32, i32* @BQ24190_REG_POC_RESET_MASK, align 4
  %28 = load i32, i32* @BQ24190_REG_POC_RESET_SHIFT, align 4
  %29 = call i32 @bq24190_read_mask(%struct.bq24190_dev_info* %25, i32 %26, i32 %27, i32 %28, i64* %6)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %47

34:                                               ; preds = %24
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %47

38:                                               ; preds = %34
  %39 = call i32 @usleep_range(i32 100, i32 200)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %24, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %37, %32, %21, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @device_property_read_bool(i32, i8*) #1

declare dso_local i32 @bq24190_write_mask(%struct.bq24190_dev_info*, i32, i32, i32, i32) #1

declare dso_local i32 @bq24190_read_mask(%struct.bq24190_dev_info*, i32, i32, i32, i64*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
