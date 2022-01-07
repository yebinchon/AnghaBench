; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_vf610-ocotp.c_vf610_ocotp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_vf610-ocotp.c_vf610_ocotp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.device*, %struct.vf610_ocotp*, i32 }
%struct.device = type { i32 }
%struct.vf610_ocotp = type { i32, i32, %struct.device*, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed getting clock, err = %ld\0A\00", align 1
@ocotp_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vf610_ocotp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_ocotp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.vf610_ocotp*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.vf610_ocotp* @devm_kzalloc(%struct.device* %9, i32 24, i32 %10)
  store %struct.vf610_ocotp* %11, %struct.vf610_ocotp** %6, align 8
  %12 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %13 = icmp ne %struct.vf610_ocotp* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %77

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @devm_ioremap_resource(%struct.device* %21, %struct.resource* %22)
  %24 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %25 = getelementptr inbounds %struct.vf610_ocotp, %struct.vf610_ocotp* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %27 = getelementptr inbounds %struct.vf610_ocotp, %struct.vf610_ocotp* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %33 = getelementptr inbounds %struct.vf610_ocotp, %struct.vf610_ocotp* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %77

36:                                               ; preds = %17
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @devm_clk_get(%struct.device* %37, i32* null)
  %39 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %40 = getelementptr inbounds %struct.vf610_ocotp, %struct.vf610_ocotp* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %42 = getelementptr inbounds %struct.vf610_ocotp, %struct.vf610_ocotp* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %36
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %49 = getelementptr inbounds %struct.vf610_ocotp, %struct.vf610_ocotp* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  %52 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %54 = getelementptr inbounds %struct.vf610_ocotp, %struct.vf610_ocotp* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %77

57:                                               ; preds = %36
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %60 = getelementptr inbounds %struct.vf610_ocotp, %struct.vf610_ocotp* %59, i32 0, i32 2
  store %struct.device* %58, %struct.device** %60, align 8
  %61 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %62 = call i32 @vf610_ocotp_calculate_timing(%struct.vf610_ocotp* %61)
  %63 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %64 = getelementptr inbounds %struct.vf610_ocotp, %struct.vf610_ocotp* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.resource*, %struct.resource** %5, align 8
  %66 = call i32 @resource_size(%struct.resource* %65)
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ocotp_config, i32 0, i32 2), align 8
  %67 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  store %struct.vf610_ocotp* %67, %struct.vf610_ocotp** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ocotp_config, i32 0, i32 1), align 8
  %68 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %68, %struct.device** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ocotp_config, i32 0, i32 0), align 8
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @devm_nvmem_register(%struct.device* %69, %struct.TYPE_3__* @ocotp_config)
  %71 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %72 = getelementptr inbounds %struct.vf610_ocotp, %struct.vf610_ocotp* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.vf610_ocotp*, %struct.vf610_ocotp** %6, align 8
  %74 = getelementptr inbounds %struct.vf610_ocotp, %struct.vf610_ocotp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PTR_ERR_OR_ZERO(i32 %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %57, %46, %31, %14
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.vf610_ocotp* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @vf610_ocotp_calculate_timing(%struct.vf610_ocotp*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_nvmem_register(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
