; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_cfgupdate_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_cfgupdate_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27xxx_device_info = type { i64, i32 }

@BQ27XXX_SET_CFGUPDATE = common dso_local global i32 0, align 4
@BQ27XXX_SOFT_RESET = common dso_local global i32 0, align 4
@BQ27XXX_REG_CTRL = common dso_local global i32 0, align 4
@BQ27XXX_REG_FLAGS = common dso_local global i32 0, align 4
@BQ27XXX_FLAG_CFGUP = common dso_local global i32 0, align 4
@BQ27425 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"timed out waiting for cfgupdate flag %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cfgupdate %d, retries %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq27xxx_device_info*, i32)* @bq27xxx_battery_cfgupdate_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_cfgupdate_priv(%struct.bq27xxx_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq27xxx_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bq27xxx_device_info* %0, %struct.bq27xxx_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 100, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @BQ27XXX_SET_CFGUPDATE, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @BQ27XXX_SOFT_RESET, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %7, align 4
  store i32 100, i32* %9, align 4
  %18 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %19 = load i32, i32* @BQ27XXX_REG_CTRL, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @bq27xxx_write(%struct.bq27xxx_device_info* %18, i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %83

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %51, %26
  %28 = call i32 @BQ27XXX_MSLEEP(i32 25)
  %29 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %30 = load i32, i32* @BQ27XXX_REG_FLAGS, align 4
  %31 = call i32 @bq27xxx_read(%struct.bq27xxx_device_info* %29, i32 %30, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %83

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @BQ27XXX_FLAG_CFGUP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %47, %37
  %52 = phi i1 [ false, %37 ], [ %50, %47 ]
  br i1 %52, label %27, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %53
  %57 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %58 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BQ27425, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %64 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %83

70:                                               ; preds = %56, %53
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 100, %71
  %73 = icmp sgt i32 %72, 3
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %4, align 8
  %76 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 100, %79
  %81 = call i32 @dev_warn(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %74, %70
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %62, %34, %24
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @bq27xxx_write(%struct.bq27xxx_device_info*, i32, i32, i32) #1

declare dso_local i32 @BQ27XXX_MSLEEP(i32) #1

declare dso_local i32 @bq27xxx_read(%struct.bq27xxx_device_info*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
