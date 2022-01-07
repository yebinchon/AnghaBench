; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-iproc-qspi.c_bcm_iproc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-iproc-qspi.c_bcm_iproc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.bcm_iproc_intc = type { i32, i8*, i8*, i32, %struct.platform_device*, %struct.bcm_qspi_soc_intc }
%struct.bcm_qspi_soc_intc = type { i32, i32 (%struct.bcm_qspi_soc_intc*, i32, i32)*, i32 (%struct.bcm_qspi_soc_intc*, i32)* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"intr_regs\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"intr_status_reg\00", align 1
@MSPI_BSPI_DONE = common dso_local global i32 0, align 4
@bcm_iproc_qspi_get_l2_int_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_iproc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_iproc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.bcm_iproc_intc*, align 8
  %6 = alloca %struct.bcm_qspi_soc_intc*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.bcm_iproc_intc* @devm_kzalloc(%struct.device* %10, i32 64, i32 %11)
  store %struct.bcm_iproc_intc* %12, %struct.bcm_iproc_intc** %5, align 8
  %13 = load %struct.bcm_iproc_intc*, %struct.bcm_iproc_intc** %5, align 8
  %14 = icmp ne %struct.bcm_iproc_intc* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = load %struct.bcm_iproc_intc*, %struct.bcm_iproc_intc** %5, align 8
  %20 = getelementptr inbounds %struct.bcm_iproc_intc, %struct.bcm_iproc_intc* %19, i32 0, i32 5
  store %struct.bcm_qspi_soc_intc* %20, %struct.bcm_qspi_soc_intc** %6, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.bcm_iproc_intc*, %struct.bcm_iproc_intc** %5, align 8
  %23 = getelementptr inbounds %struct.bcm_iproc_intc, %struct.bcm_iproc_intc* %22, i32 0, i32 4
  store %struct.platform_device* %21, %struct.platform_device** %23, align 8
  %24 = load %struct.bcm_iproc_intc*, %struct.bcm_iproc_intc** %5, align 8
  %25 = getelementptr inbounds %struct.bcm_iproc_intc, %struct.bcm_iproc_intc* %24, i32 0, i32 3
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %27, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %29, %struct.resource** %7, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.resource*, %struct.resource** %7, align 8
  %32 = call i8* @devm_ioremap_resource(%struct.device* %30, %struct.resource* %31)
  %33 = load %struct.bcm_iproc_intc*, %struct.bcm_iproc_intc** %5, align 8
  %34 = getelementptr inbounds %struct.bcm_iproc_intc, %struct.bcm_iproc_intc* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.bcm_iproc_intc*, %struct.bcm_iproc_intc** %5, align 8
  %36 = getelementptr inbounds %struct.bcm_iproc_intc, %struct.bcm_iproc_intc* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @IS_ERR(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %18
  %41 = load %struct.bcm_iproc_intc*, %struct.bcm_iproc_intc** %5, align 8
  %42 = getelementptr inbounds %struct.bcm_iproc_intc, %struct.bcm_iproc_intc* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %2, align 4
  br label %87

45:                                               ; preds = %18
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load i32, i32* @IORESOURCE_MEM, align 4
  %48 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %46, i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %48, %struct.resource** %7, align 8
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load %struct.resource*, %struct.resource** %7, align 8
  %51 = call i8* @devm_ioremap_resource(%struct.device* %49, %struct.resource* %50)
  %52 = load %struct.bcm_iproc_intc*, %struct.bcm_iproc_intc** %5, align 8
  %53 = getelementptr inbounds %struct.bcm_iproc_intc, %struct.bcm_iproc_intc* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.bcm_iproc_intc*, %struct.bcm_iproc_intc** %5, align 8
  %55 = getelementptr inbounds %struct.bcm_iproc_intc, %struct.bcm_iproc_intc* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.bcm_iproc_intc*, %struct.bcm_iproc_intc** %5, align 8
  %61 = getelementptr inbounds %struct.bcm_iproc_intc, %struct.bcm_iproc_intc* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @PTR_ERR(i8* %62)
  store i32 %63, i32* %2, align 4
  br label %87

64:                                               ; preds = %45
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @of_device_is_big_endian(i32 %67)
  %69 = load %struct.bcm_iproc_intc*, %struct.bcm_iproc_intc** %5, align 8
  %70 = getelementptr inbounds %struct.bcm_iproc_intc, %struct.bcm_iproc_intc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %6, align 8
  %72 = load i32, i32* @MSPI_BSPI_DONE, align 4
  %73 = call i32 @bcm_iproc_qspi_int_ack(%struct.bcm_qspi_soc_intc* %71, i32 %72)
  %74 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %6, align 8
  %75 = load i32, i32* @MSPI_BSPI_DONE, align 4
  %76 = call i32 @bcm_iproc_qspi_int_set(%struct.bcm_qspi_soc_intc* %74, i32 %75, i32 0)
  %77 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %6, align 8
  %78 = getelementptr inbounds %struct.bcm_qspi_soc_intc, %struct.bcm_qspi_soc_intc* %77, i32 0, i32 2
  store i32 (%struct.bcm_qspi_soc_intc*, i32)* @bcm_iproc_qspi_int_ack, i32 (%struct.bcm_qspi_soc_intc*, i32)** %78, align 8
  %79 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %6, align 8
  %80 = getelementptr inbounds %struct.bcm_qspi_soc_intc, %struct.bcm_qspi_soc_intc* %79, i32 0, i32 1
  store i32 (%struct.bcm_qspi_soc_intc*, i32, i32)* @bcm_iproc_qspi_int_set, i32 (%struct.bcm_qspi_soc_intc*, i32, i32)** %80, align 8
  %81 = load i32, i32* @bcm_iproc_qspi_get_l2_int_status, align 4
  %82 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %6, align 8
  %83 = getelementptr inbounds %struct.bcm_qspi_soc_intc, %struct.bcm_qspi_soc_intc* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = load %struct.bcm_qspi_soc_intc*, %struct.bcm_qspi_soc_intc** %6, align 8
  %86 = call i32 @bcm_qspi_probe(%struct.platform_device* %84, %struct.bcm_qspi_soc_intc* %85)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %64, %59, %40, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.bcm_iproc_intc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @of_device_is_big_endian(i32) #1

declare dso_local i32 @bcm_iproc_qspi_int_ack(%struct.bcm_qspi_soc_intc*, i32) #1

declare dso_local i32 @bcm_iproc_qspi_int_set(%struct.bcm_qspi_soc_intc*, i32, i32) #1

declare dso_local i32 @bcm_qspi_probe(%struct.platform_device*, %struct.bcm_qspi_soc_intc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
