; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_i2c.c_nfcmrvl_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_i2c.c_nfcmrvl_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, %struct.nfcmrvl_platform_data* }
%struct.nfcmrvl_platform_data = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.nfcmrvl_i2c_drv_data = type { %struct.TYPE_8__*, %struct.i2c_client*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Need I2C_FUNC_I2C\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nfcmrvl_i2c_int_irq_thread_fn = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"nfcmrvl_i2c_int\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to register IRQ handler\0A\00", align 1
@NFCMRVL_PHY_I2C = common dso_local global i32 0, align 4
@i2c_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @nfcmrvl_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.nfcmrvl_i2c_drv_data*, align 8
  %7 = alloca %struct.nfcmrvl_platform_data*, align 8
  %8 = alloca %struct.nfcmrvl_platform_data, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @I2C_FUNC_I2C, align 4
  %14 = call i32 @i2c_check_functionality(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = call i32 @nfc_err(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %123

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.nfcmrvl_i2c_drv_data* @devm_kzalloc(%struct.TYPE_9__* %24, i32 24, i32 %25)
  store %struct.nfcmrvl_i2c_drv_data* %26, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %27 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %28 = icmp ne %struct.nfcmrvl_i2c_drv_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %123

32:                                               ; preds = %22
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %35 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %34, i32 0, i32 1
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %39 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %38, i32 0, i32 2
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %39, align 8
  %40 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %41 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %40, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %44 = call i32 @i2c_set_clientdata(%struct.i2c_client* %42, %struct.nfcmrvl_i2c_drv_data* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %47, align 8
  store %struct.nfcmrvl_platform_data* %48, %struct.nfcmrvl_platform_data** %7, align 8
  %49 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %7, align 8
  %50 = icmp ne %struct.nfcmrvl_platform_data* %49, null
  br i1 %50, label %66, label %51

51:                                               ; preds = %32
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @nfcmrvl_i2c_parse_dt(i64 %61, %struct.nfcmrvl_platform_data* %8)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store %struct.nfcmrvl_platform_data* %8, %struct.nfcmrvl_platform_data** %7, align 8
  br label %65

65:                                               ; preds = %64, %57
  br label %66

66:                                               ; preds = %65, %51, %32
  %67 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %7, align 8
  %68 = icmp ne %struct.nfcmrvl_platform_data* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %123

72:                                               ; preds = %66
  %73 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %74 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %73, i32 0, i32 1
  %75 = load %struct.i2c_client*, %struct.i2c_client** %74, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %7, align 8
  %78 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @nfcmrvl_i2c_int_irq_thread_fn, align 4
  %81 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %7, align 8
  %82 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IRQF_ONESHOT, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %87 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %76, i32 %79, i32* null, i32 %80, i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.nfcmrvl_i2c_drv_data* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %72
  %91 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %92 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %91, i32 0, i32 1
  %93 = load %struct.i2c_client*, %struct.i2c_client** %92, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = call i32 @nfc_err(%struct.TYPE_9__* %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %123

97:                                               ; preds = %72
  %98 = load i32, i32* @NFCMRVL_PHY_I2C, align 4
  %99 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %100 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %101 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %100, i32 0, i32 1
  %102 = load %struct.i2c_client*, %struct.i2c_client** %101, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %7, align 8
  %105 = call %struct.TYPE_8__* @nfcmrvl_nci_register_dev(i32 %98, %struct.nfcmrvl_i2c_drv_data* %99, i32* @i2c_ops, %struct.TYPE_9__* %103, %struct.nfcmrvl_platform_data* %104)
  %106 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %107 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %106, i32 0, i32 0
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %107, align 8
  %108 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %109 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = call i64 @IS_ERR(%struct.TYPE_8__* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %97
  %114 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %115 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = call i32 @PTR_ERR(%struct.TYPE_8__* %116)
  store i32 %117, i32* %3, align 4
  br label %123

118:                                              ; preds = %97
  %119 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  %120 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %113, %90, %69, %29, %16
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @nfc_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.nfcmrvl_i2c_drv_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.nfcmrvl_i2c_drv_data*) #1

declare dso_local i64 @nfcmrvl_i2c_parse_dt(i64, %struct.nfcmrvl_platform_data*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i32, i32*, i32, i32, i8*, %struct.nfcmrvl_i2c_drv_data*) #1

declare dso_local %struct.TYPE_8__* @nfcmrvl_nci_register_dev(i32, %struct.nfcmrvl_i2c_drv_data*, i32*, %struct.TYPE_9__*, %struct.nfcmrvl_platform_data*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
