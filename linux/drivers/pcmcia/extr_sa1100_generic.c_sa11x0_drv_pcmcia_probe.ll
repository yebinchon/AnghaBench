; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1100_generic.c_sa11x0_drv_pcmcia_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1100_generic.c_sa11x0_drv_pcmcia_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.soc_pcmcia_socket = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sa11x0_cf_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sa11x0_drv_pcmcia_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa11x0_drv_pcmcia_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.soc_pcmcia_socket*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call i32 @sa11x0_drv_pcmcia_legacy_probe(%struct.platform_device* %13)
  store i32 %14, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.soc_pcmcia_socket* @devm_kzalloc(%struct.device* %16, i32 8, i32 %17)
  store %struct.soc_pcmcia_socket* %18, %struct.soc_pcmcia_socket** %4, align 8
  %19 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %20 = icmp ne %struct.soc_pcmcia_socket* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %15
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.soc_pcmcia_socket* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %32 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 @devm_clk_get(%struct.device* %33, i32* null)
  %35 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %36 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %38 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %24
  %43 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %44 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %54

47:                                               ; preds = %24
  %48 = call i32 @sa11xx_drv_pcmcia_ops(i32* @sa11x0_cf_ops)
  %49 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i32 @soc_pcmcia_init_one(%struct.soc_pcmcia_socket* %49, i32* @sa11x0_cf_ops, %struct.device* %50)
  %52 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %53 = call i32 @sa11xx_drv_pcmcia_add_one(%struct.soc_pcmcia_socket* %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %47, %42, %21, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @sa11x0_drv_pcmcia_legacy_probe(%struct.platform_device*) #1

declare dso_local %struct.soc_pcmcia_socket* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.soc_pcmcia_socket*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sa11xx_drv_pcmcia_ops(i32*) #1

declare dso_local i32 @soc_pcmcia_init_one(%struct.soc_pcmcia_socket*, i32*, %struct.device*) #1

declare dso_local i32 @sa11xx_drv_pcmcia_add_one(%struct.soc_pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
