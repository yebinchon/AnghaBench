; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_lpc18xx_otp.c_lpc18xx_otp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_lpc18xx_otp.c_lpc18xx_otp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.lpc18xx_otp*, i32*, i32 }
%struct.lpc18xx_otp = type { i32 }
%struct.platform_device = type { i32 }
%struct.nvmem_device = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@LPC18XX_OTP_SIZE = common dso_local global i32 0, align 4
@lpc18xx_otp_nvmem_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_otp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_otp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.nvmem_device*, align 8
  %5 = alloca %struct.lpc18xx_otp*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.lpc18xx_otp* @devm_kzalloc(i32* %8, i32 4, i32 %9)
  store %struct.lpc18xx_otp* %10, %struct.lpc18xx_otp** %5, align 8
  %11 = load %struct.lpc18xx_otp*, %struct.lpc18xx_otp** %5, align 8
  %12 = icmp ne %struct.lpc18xx_otp* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %6, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %6, align 8
  %23 = call i32 @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.lpc18xx_otp*, %struct.lpc18xx_otp** %5, align 8
  %25 = getelementptr inbounds %struct.lpc18xx_otp, %struct.lpc18xx_otp* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.lpc18xx_otp*, %struct.lpc18xx_otp** %5, align 8
  %27 = getelementptr inbounds %struct.lpc18xx_otp, %struct.lpc18xx_otp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.lpc18xx_otp*, %struct.lpc18xx_otp** %5, align 8
  %33 = getelementptr inbounds %struct.lpc18xx_otp, %struct.lpc18xx_otp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %46

36:                                               ; preds = %16
  %37 = load i32, i32* @LPC18XX_OTP_SIZE, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpc18xx_otp_nvmem_config, i32 0, i32 2), align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  store i32* %39, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpc18xx_otp_nvmem_config, i32 0, i32 1), align 8
  %40 = load %struct.lpc18xx_otp*, %struct.lpc18xx_otp** %5, align 8
  store %struct.lpc18xx_otp* %40, %struct.lpc18xx_otp** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lpc18xx_otp_nvmem_config, i32 0, i32 0), align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call %struct.nvmem_device* @devm_nvmem_register(i32* %42, %struct.TYPE_3__* @lpc18xx_otp_nvmem_config)
  store %struct.nvmem_device* %43, %struct.nvmem_device** %4, align 8
  %44 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %45 = call i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %36, %31, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.lpc18xx_otp* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.nvmem_device* @devm_nvmem_register(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.nvmem_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
