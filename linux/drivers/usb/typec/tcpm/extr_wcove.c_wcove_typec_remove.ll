; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_typec_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_typec_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wcove_typec = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@USBC_IRQMASK1 = common dso_local global i32 0, align 4
@USBC_IRQMASK1_ALL = common dso_local global i32 0, align 4
@USBC_IRQMASK2 = common dso_local global i32 0, align 4
@USBC_IRQMASK2_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wcove_typec_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcove_typec_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.wcove_typec*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.wcove_typec* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.wcove_typec* %6, %struct.wcove_typec** %3, align 8
  %7 = load %struct.wcove_typec*, %struct.wcove_typec** %3, align 8
  %8 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @USBC_IRQMASK1, align 4
  %11 = call i32 @regmap_read(i32 %9, i32 %10, i32* %4)
  %12 = load %struct.wcove_typec*, %struct.wcove_typec** %3, align 8
  %13 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @USBC_IRQMASK1, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @USBC_IRQMASK1_ALL, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @regmap_write(i32 %14, i32 %15, i32 %18)
  %20 = load %struct.wcove_typec*, %struct.wcove_typec** %3, align 8
  %21 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @USBC_IRQMASK2, align 4
  %24 = call i32 @regmap_read(i32 %22, i32 %23, i32* %4)
  %25 = load %struct.wcove_typec*, %struct.wcove_typec** %3, align 8
  %26 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @USBC_IRQMASK2, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @USBC_IRQMASK2_ALL, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @regmap_write(i32 %27, i32 %28, i32 %31)
  %33 = load %struct.wcove_typec*, %struct.wcove_typec** %3, align 8
  %34 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tcpm_unregister_port(i32 %35)
  %37 = load %struct.wcove_typec*, %struct.wcove_typec** %3, align 8
  %38 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fwnode_remove_software_node(i32 %40)
  ret i32 0
}

declare dso_local %struct.wcove_typec* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @tcpm_unregister_port(i32) #1

declare dso_local i32 @fwnode_remove_software_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
