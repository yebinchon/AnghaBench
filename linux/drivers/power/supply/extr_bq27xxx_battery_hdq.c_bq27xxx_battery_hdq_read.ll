; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_hdq.c_bq27xxx_battery_hdq_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery_hdq.c_bq27xxx_battery_hdq_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i32 }
%struct.w1_slave = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, i64, i32)* @bq27xxx_battery_hdq_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_hdq_read(%struct.bq27xxx_device_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bq27xxx_device_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.w1_slave*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %5, align 8
  %14 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.w1_slave* @dev_to_w1_slave(i32 %15)
  store %struct.w1_slave* %16, %struct.w1_slave** %8, align 8
  store i32 3, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %3
  %20 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i32 @w1_bq27000_read(%struct.w1_slave* %20, i64 %22)
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %51, %19
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %68

30:                                               ; preds = %24
  %31 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @w1_bq27000_read(%struct.w1_slave* %31, i64 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %68

38:                                               ; preds = %30
  %39 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %40, 1
  %42 = call i32 @w1_bq27000_read(%struct.w1_slave* %39, i64 %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ false, %43 ], [ %50, %47 ]
  br i1 %52, label %24, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %68

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 %60, 8
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %4, align 4
  br label %68

64:                                               ; preds = %3
  %65 = load %struct.w1_slave*, %struct.w1_slave** %8, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @w1_bq27000_read(%struct.w1_slave* %65, i64 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %59, %56, %36, %28
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.w1_slave* @dev_to_w1_slave(i32) #1

declare dso_local i32 @w1_bq27000_read(%struct.w1_slave*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
