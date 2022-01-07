; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_spi.c_nfcmrvl_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_spi.c_nfcmrvl_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.nfcmrvl_platform_data* }
%struct.nfcmrvl_platform_data = type { i32 }
%struct.nfcmrvl_spi_drv_data = type { i32, %struct.TYPE_8__*, %struct.spi_device*, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nfcmrvl_spi_int_irq_thread_fn = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"nfcmrvl_spi_int\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to register IRQ handler\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NFCMRVL_PHY_SPI = common dso_local global i32 0, align 4
@spi_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @nfcmrvl_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.nfcmrvl_platform_data*, align 8
  %5 = alloca %struct.nfcmrvl_platform_data, align 4
  %6 = alloca %struct.nfcmrvl_spi_drv_data*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nfcmrvl_spi_drv_data* @devm_kzalloc(%struct.TYPE_9__* %9, i32 32, i32 %10)
  store %struct.nfcmrvl_spi_drv_data* %11, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %12 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %13 = icmp ne %struct.nfcmrvl_spi_drv_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %117

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %20 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %19, i32 0, i32 2
  store %struct.spi_device* %18, %struct.spi_device** %20, align 8
  %21 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %22 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %21, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %22, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %25 = call i32 @spi_set_drvdata(%struct.spi_device* %23, %struct.nfcmrvl_spi_drv_data* %24)
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %28, align 8
  store %struct.nfcmrvl_platform_data* %29, %struct.nfcmrvl_platform_data** %4, align 8
  %30 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %4, align 8
  %31 = icmp ne %struct.nfcmrvl_platform_data* %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %17
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @nfcmrvl_spi_parse_dt(i64 %42, %struct.nfcmrvl_platform_data* %5)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store %struct.nfcmrvl_platform_data* %5, %struct.nfcmrvl_platform_data** %4, align 8
  br label %46

46:                                               ; preds = %45, %38
  br label %47

47:                                               ; preds = %46, %32, %17
  %48 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %4, align 8
  %49 = icmp ne %struct.nfcmrvl_platform_data* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %117

53:                                               ; preds = %47
  %54 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %55 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %54, i32 0, i32 2
  %56 = load %struct.spi_device*, %struct.spi_device** %55, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %4, align 8
  %59 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @nfcmrvl_spi_int_irq_thread_fn, align 4
  %62 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %63 = load i32, i32* @IRQF_ONESHOT, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %66 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %57, i32 %60, i32* null, i32 %61, i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.nfcmrvl_spi_drv_data* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %53
  %70 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %71 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %70, i32 0, i32 2
  %72 = load %struct.spi_device*, %struct.spi_device** %71, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 0
  %74 = call i32 @nfc_err(%struct.TYPE_9__* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %117

77:                                               ; preds = %53
  %78 = load i32, i32* @NFCMRVL_PHY_SPI, align 4
  %79 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %80 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %81 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %80, i32 0, i32 2
  %82 = load %struct.spi_device*, %struct.spi_device** %81, align 8
  %83 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %82, i32 0, i32 0
  %84 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %4, align 8
  %85 = call %struct.TYPE_8__* @nfcmrvl_nci_register_dev(i32 %78, %struct.nfcmrvl_spi_drv_data* %79, i32* @spi_ops, %struct.TYPE_9__* %83, %struct.nfcmrvl_platform_data* %84)
  %86 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %87 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %86, i32 0, i32 1
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %87, align 8
  %88 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %89 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = call i64 @IS_ERR(%struct.TYPE_8__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %77
  %94 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %95 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = call i32 @PTR_ERR(%struct.TYPE_8__* %96)
  store i32 %97, i32* %2, align 4
  br label %117

98:                                               ; preds = %77
  %99 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %100 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  %103 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %104 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %103, i32 0, i32 2
  %105 = load %struct.spi_device*, %struct.spi_device** %104, align 8
  %106 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %107 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @nci_spi_allocate_spi(%struct.spi_device* %105, i32 0, i32 10, i32 %110)
  %112 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %113 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load %struct.nfcmrvl_spi_drv_data*, %struct.nfcmrvl_spi_drv_data** %6, align 8
  %115 = getelementptr inbounds %struct.nfcmrvl_spi_drv_data, %struct.nfcmrvl_spi_drv_data* %114, i32 0, i32 0
  %116 = call i32 @init_completion(i32* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %98, %93, %69, %50, %14
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.nfcmrvl_spi_drv_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.nfcmrvl_spi_drv_data*) #1

declare dso_local i64 @nfcmrvl_spi_parse_dt(i64, %struct.nfcmrvl_platform_data*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i32, i32*, i32, i32, i8*, %struct.nfcmrvl_spi_drv_data*) #1

declare dso_local i32 @nfc_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.TYPE_8__* @nfcmrvl_nci_register_dev(i32, %struct.nfcmrvl_spi_drv_data*, i32*, %struct.TYPE_9__*, %struct.nfcmrvl_platform_data*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @nci_spi_allocate_spi(%struct.spi_device*, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
