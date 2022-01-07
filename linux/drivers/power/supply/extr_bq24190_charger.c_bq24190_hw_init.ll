; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24190_dev_info = type { i32, i32 }

@BQ24190_REG_VPRS = common dso_local global i32 0, align 4
@BQ24190_REG_VPRS_PN_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_VPRS_PN_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error unknown model: 0x%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BQ24190_REG_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24190_dev_info*)* @bq24190_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_hw_init(%struct.bq24190_dev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq24190_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bq24190_dev_info* %0, %struct.bq24190_dev_info** %3, align 8
  %6 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %7 = load i32, i32* @BQ24190_REG_VPRS, align 4
  %8 = load i32, i32* @BQ24190_REG_VPRS_PN_MASK, align 4
  %9 = load i32, i32* @BQ24190_REG_VPRS_PN_SHIFT, align 4
  %10 = call i32 @bq24190_read_mask(%struct.bq24190_dev_info* %6, i32 %7, i32 %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %18 [
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %15, %15, %15
  br label %26

18:                                               ; preds = %15
  %19 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %20 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %17
  %27 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %28 = call i32 @bq24190_register_reset(%struct.bq24190_dev_info* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %46

33:                                               ; preds = %26
  %34 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %35 = call i32 @bq24190_set_config(%struct.bq24190_dev_info* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %46

40:                                               ; preds = %33
  %41 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %42 = load i32, i32* @BQ24190_REG_SS, align 4
  %43 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %3, align 8
  %44 = getelementptr inbounds %struct.bq24190_dev_info, %struct.bq24190_dev_info* %43, i32 0, i32 0
  %45 = call i32 @bq24190_read(%struct.bq24190_dev_info* %41, i32 %42, i32* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %38, %31, %18, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @bq24190_read_mask(%struct.bq24190_dev_info*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @bq24190_register_reset(%struct.bq24190_dev_info*) #1

declare dso_local i32 @bq24190_set_config(%struct.bq24190_dev_info*) #1

declare dso_local i32 @bq24190_read(%struct.bq24190_dev_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
