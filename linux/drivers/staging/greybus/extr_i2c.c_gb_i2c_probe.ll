; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_i2c.c_gb_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_i2c.c_gb_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gbphy_device_id = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_i2c_device = type { %struct.i2c_adapter, %struct.gbphy_device*, %struct.gb_connection* }
%struct.i2c_adapter = type { i32, i32, %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@gb_i2c_algorithm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Greybus i2c adapter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbphy_device*, %struct.gbphy_device_id*)* @gb_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_i2c_probe(%struct.gbphy_device* %0, %struct.gbphy_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbphy_device*, align 8
  %5 = alloca %struct.gbphy_device_id*, align 8
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca %struct.gb_i2c_device*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.gbphy_device* %0, %struct.gbphy_device** %4, align 8
  store %struct.gbphy_device_id* %1, %struct.gbphy_device_id** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gb_i2c_device* @kzalloc(i32 48, i32 %10)
  store %struct.gb_i2c_device* %11, %struct.gb_i2c_device** %7, align 8
  %12 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %7, align 8
  %13 = icmp ne %struct.gb_i2c_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %19 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %22 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = call %struct.gb_connection* @gb_connection_create(i32 %20, i32 %26, i32* null)
  store %struct.gb_connection* %27, %struct.gb_connection** %6, align 8
  %28 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %29 = call i64 @IS_ERR(%struct.gb_connection* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %33 = call i32 @PTR_ERR(%struct.gb_connection* %32)
  store i32 %33, i32* %9, align 4
  br label %97

34:                                               ; preds = %17
  %35 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %36 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %7, align 8
  %37 = getelementptr inbounds %struct.gb_i2c_device, %struct.gb_i2c_device* %36, i32 0, i32 2
  store %struct.gb_connection* %35, %struct.gb_connection** %37, align 8
  %38 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %39 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %7, align 8
  %40 = call i32 @gb_connection_set_data(%struct.gb_connection* %38, %struct.gb_i2c_device* %39)
  %41 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %42 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %7, align 8
  %43 = getelementptr inbounds %struct.gb_i2c_device, %struct.gb_i2c_device* %42, i32 0, i32 1
  store %struct.gbphy_device* %41, %struct.gbphy_device** %43, align 8
  %44 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %45 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %7, align 8
  %46 = call i32 @gb_gbphy_set_data(%struct.gbphy_device* %44, %struct.gb_i2c_device* %45)
  %47 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %48 = call i32 @gb_connection_enable(%struct.gb_connection* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %94

52:                                               ; preds = %34
  %53 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %7, align 8
  %54 = call i32 @gb_i2c_device_setup(%struct.gb_i2c_device* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %91

58:                                               ; preds = %52
  %59 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %7, align 8
  %60 = getelementptr inbounds %struct.gb_i2c_device, %struct.gb_i2c_device* %59, i32 0, i32 0
  store %struct.i2c_adapter* %60, %struct.i2c_adapter** %8, align 8
  %61 = load i32, i32* @THIS_MODULE, align 4
  %62 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %63 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %65 = load i32, i32* @I2C_CLASS_SPD, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %68 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %70 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %69, i32 0, i32 3
  store i32* @gb_i2c_algorithm, i32** %70, align 8
  %71 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %72 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %71, i32 0, i32 0
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %74 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32* %72, i32** %75, align 8
  %76 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %77 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @snprintf(i32 %78, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %81 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %7, align 8
  %82 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %80, %struct.gb_i2c_device* %81)
  %83 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %84 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %58
  br label %91

88:                                               ; preds = %58
  %89 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %90 = call i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device* %89)
  store i32 0, i32* %3, align 4
  br label %101

91:                                               ; preds = %87, %57
  %92 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %93 = call i32 @gb_connection_disable(%struct.gb_connection* %92)
  br label %94

94:                                               ; preds = %91, %51
  %95 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %96 = call i32 @gb_connection_destroy(%struct.gb_connection* %95)
  br label %97

97:                                               ; preds = %94, %31
  %98 = load %struct.gb_i2c_device*, %struct.gb_i2c_device** %7, align 8
  %99 = call i32 @kfree(%struct.gb_i2c_device* %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %88, %14
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.gb_i2c_device* @kzalloc(i32, i32) #1

declare dso_local %struct.gb_connection* @gb_connection_create(i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_i2c_device*) #1

declare dso_local i32 @gb_gbphy_set_data(%struct.gbphy_device*, %struct.gb_i2c_device*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local i32 @gb_i2c_device_setup(%struct.gb_i2c_device*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.gb_i2c_device*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @kfree(%struct.gb_i2c_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
