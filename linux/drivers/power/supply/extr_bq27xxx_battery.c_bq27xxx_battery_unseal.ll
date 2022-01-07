; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_unseal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_unseal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"unseal failed due to missing key\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BQ27XXX_REG_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"bus error on unseal: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*)* @bq27xxx_battery_unseal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_unseal(%struct.bq27xxx_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bq27xxx_device_info*, align 8
  %4 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %3, align 8
  %5 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %6 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %11 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, i8*, ...) @dev_err(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %18 = load i32, i32* @BQ27XXX_REG_CTRL, align 4
  %19 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %20 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 16
  %23 = call i32 @bq27xxx_write(%struct.bq27xxx_device_info* %17, i32 %18, i32 %22, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %38

27:                                               ; preds = %16
  %28 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %29 = load i32, i32* @BQ27XXX_REG_CTRL, align 4
  %30 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %31 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bq27xxx_write(%struct.bq27xxx_device_info* %28, i32 %29, i32 %32, i32 0)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %45

38:                                               ; preds = %36, %26
  %39 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %3, align 8
  %40 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %37, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @bq27xxx_write(%struct.bq27xxx_device_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
