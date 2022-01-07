; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_zynqmp_nvmem.c_zynqmp_nvmem_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_zynqmp_nvmem.c_zynqmp_nvmem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.zynqmp_nvmem_data*, i32, %struct.device* }
%struct.zynqmp_nvmem_data = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@eemi_ops = common dso_local global i32 0, align 4
@econfig = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@zynqmp_nvmem_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynqmp_nvmem_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_nvmem_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.zynqmp_nvmem_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.zynqmp_nvmem_data* @devm_kzalloc(%struct.device* %8, i32 16, i32 %9)
  store %struct.zynqmp_nvmem_data* %10, %struct.zynqmp_nvmem_data** %5, align 8
  %11 = load %struct.zynqmp_nvmem_data*, %struct.zynqmp_nvmem_data** %5, align 8
  %12 = icmp ne %struct.zynqmp_nvmem_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = call i32 (...) @zynqmp_pm_get_eemi_ops()
  store i32 %17, i32* @eemi_ops, align 4
  %18 = load i32, i32* @eemi_ops, align 4
  %19 = call i64 @IS_ERR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @eemi_ops, align 4
  %23 = call i32 @PTR_ERR(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %39

24:                                               ; preds = %16
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.zynqmp_nvmem_data*, %struct.zynqmp_nvmem_data** %5, align 8
  %27 = getelementptr inbounds %struct.zynqmp_nvmem_data, %struct.zynqmp_nvmem_data* %26, i32 0, i32 1
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %28, %struct.device** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @econfig, i32 0, i32 2), align 8
  %29 = load i32, i32* @zynqmp_nvmem_read, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @econfig, i32 0, i32 1), align 8
  %30 = load %struct.zynqmp_nvmem_data*, %struct.zynqmp_nvmem_data** %5, align 8
  store %struct.zynqmp_nvmem_data* %30, %struct.zynqmp_nvmem_data** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @econfig, i32 0, i32 0), align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @devm_nvmem_register(%struct.device* %31, %struct.TYPE_3__* @econfig)
  %33 = load %struct.zynqmp_nvmem_data*, %struct.zynqmp_nvmem_data** %5, align 8
  %34 = getelementptr inbounds %struct.zynqmp_nvmem_data, %struct.zynqmp_nvmem_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.zynqmp_nvmem_data*, %struct.zynqmp_nvmem_data** %5, align 8
  %36 = getelementptr inbounds %struct.zynqmp_nvmem_data, %struct.zynqmp_nvmem_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PTR_ERR_OR_ZERO(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %24, %21, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.zynqmp_nvmem_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @zynqmp_pm_get_eemi_ops(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_nvmem_register(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
