; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.lp8727_chg = type { %struct.TYPE_5__*, i32, %struct.lp8727_platform_data*, %struct.i2c_client* }
%struct.lp8727_platform_data = type { i32 }

@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"i2c communication err: %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"power supplies register err: %d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"irq handler err: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lp8727_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8727_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lp8727_chg*, align 8
  %7 = alloca %struct.lp8727_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %13 = call i32 @i2c_check_functionality(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %104

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call %struct.lp8727_platform_data* @lp8727_parse_dt(%struct.TYPE_5__* %26)
  store %struct.lp8727_platform_data* %27, %struct.lp8727_platform_data** %7, align 8
  %28 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %7, align 8
  %29 = call i64 @IS_ERR(%struct.lp8727_platform_data* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %7, align 8
  %33 = call i32 @PTR_ERR(%struct.lp8727_platform_data* %32)
  store i32 %33, i32* %3, align 4
  br label %104

34:                                               ; preds = %24
  br label %39

35:                                               ; preds = %18
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call %struct.lp8727_platform_data* @dev_get_platdata(%struct.TYPE_5__* %37)
  store %struct.lp8727_platform_data* %38, %struct.lp8727_platform_data** %7, align 8
  br label %39

39:                                               ; preds = %35, %34
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.lp8727_chg* @devm_kzalloc(%struct.TYPE_5__* %41, i32 32, i32 %42)
  store %struct.lp8727_chg* %43, %struct.lp8727_chg** %6, align 8
  %44 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %45 = icmp ne %struct.lp8727_chg* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %104

49:                                               ; preds = %39
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %52 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %51, i32 0, i32 3
  store %struct.i2c_client* %50, %struct.i2c_client** %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %56 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %55, i32 0, i32 0
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %56, align 8
  %57 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %7, align 8
  %58 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %59 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %58, i32 0, i32 2
  store %struct.lp8727_platform_data* %57, %struct.lp8727_platform_data** %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %62 = call i32 @i2c_set_clientdata(%struct.i2c_client* %60, %struct.lp8727_chg* %61)
  %63 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %64 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %63, i32 0, i32 1
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %67 = call i32 @lp8727_init_device(%struct.lp8727_chg* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %49
  %71 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %72 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @dev_err(%struct.TYPE_5__* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %104

77:                                               ; preds = %49
  %78 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %79 = call i32 @lp8727_register_psy(%struct.lp8727_chg* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %84 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @dev_err(%struct.TYPE_5__* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %104

89:                                               ; preds = %77
  %90 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %91 = call i32 @lp8727_setup_irq(%struct.lp8727_chg* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %96 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @dev_err(%struct.TYPE_5__* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load %struct.lp8727_chg*, %struct.lp8727_chg** %6, align 8
  %101 = call i32 @lp8727_unregister_psy(%struct.lp8727_chg* %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %94, %82, %70, %46, %31, %15
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.lp8727_platform_data* @lp8727_parse_dt(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(%struct.lp8727_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.lp8727_platform_data*) #1

declare dso_local %struct.lp8727_platform_data* @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local %struct.lp8727_chg* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lp8727_chg*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lp8727_init_device(%struct.lp8727_chg*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @lp8727_register_psy(%struct.lp8727_chg*) #1

declare dso_local i32 @lp8727_setup_irq(%struct.lp8727_chg*) #1

declare dso_local i32 @lp8727_unregister_psy(%struct.lp8727_chg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
