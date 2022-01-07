; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp3972.c_lp3972_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp3972.c_lp3972_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lp3972 = type { i32, i32*, %struct.i2c_client* }
%struct.lp3972_platform_data = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"No platform init data supplied\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LP3972_SYS_CONTROL1_REG = common dso_local global i32 0, align 4
@SYS_CONTROL1_INIT_MASK = common dso_local global i32 0, align 4
@SYS_CONTROL1_INIT_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"chip reported: val = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to detect device. ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lp3972_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3972_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lp3972*, align 8
  %7 = alloca %struct.lp3972_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.lp3972_platform_data* @dev_get_platdata(i32* %11)
  store %struct.lp3972_platform_data* %12, %struct.lp3972_platform_data** %7, align 8
  %13 = load %struct.lp3972_platform_data*, %struct.lp3972_platform_data** %7, align 8
  %14 = icmp ne %struct.lp3972_platform_data* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %81

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.lp3972* @devm_kzalloc(i32* %23, i32 24, i32 %24)
  store %struct.lp3972* %25, %struct.lp3972** %6, align 8
  %26 = load %struct.lp3972*, %struct.lp3972** %6, align 8
  %27 = icmp ne %struct.lp3972* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %81

31:                                               ; preds = %21
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.lp3972*, %struct.lp3972** %6, align 8
  %34 = getelementptr inbounds %struct.lp3972, %struct.lp3972* %33, i32 0, i32 2
  store %struct.i2c_client* %32, %struct.i2c_client** %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load %struct.lp3972*, %struct.lp3972** %6, align 8
  %38 = getelementptr inbounds %struct.lp3972, %struct.lp3972* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.lp3972*, %struct.lp3972** %6, align 8
  %40 = getelementptr inbounds %struct.lp3972, %struct.lp3972* %39, i32 0, i32 0
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load i32, i32* @LP3972_SYS_CONTROL1_REG, align 4
  %44 = call i32 @lp3972_i2c_read(%struct.i2c_client* %42, i32 %43, i32 1, i32* %9)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %31
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @SYS_CONTROL1_INIT_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @SYS_CONTROL1_INIT_VAL, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %53, %47, %31
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %81

69:                                               ; preds = %60
  %70 = load %struct.lp3972*, %struct.lp3972** %6, align 8
  %71 = load %struct.lp3972_platform_data*, %struct.lp3972_platform_data** %7, align 8
  %72 = call i32 @setup_regulators(%struct.lp3972* %70, %struct.lp3972_platform_data* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %81

77:                                               ; preds = %69
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = load %struct.lp3972*, %struct.lp3972** %6, align 8
  %80 = call i32 @i2c_set_clientdata(%struct.i2c_client* %78, %struct.lp3972* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %75, %63, %28, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.lp3972_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.lp3972* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lp3972_i2c_read(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @setup_regulators(%struct.lp3972*, %struct.lp3972_platform_data*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lp3972*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
