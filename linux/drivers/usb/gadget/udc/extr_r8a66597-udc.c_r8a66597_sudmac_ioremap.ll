; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_r8a66597-udc.c_r8a66597_sudmac_ioremap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_r8a66597-udc.c_r8a66597_sudmac_ioremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sudmac\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8a66597*, %struct.platform_device*)* @r8a66597_sudmac_ioremap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8a66597_sudmac_ioremap(%struct.r8a66597* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %7 = load i32, i32* @IORESOURCE_MEM, align 4
  %8 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %6, i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %8, %struct.resource** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load %struct.resource*, %struct.resource** %5, align 8
  %12 = call i32 @devm_ioremap_resource(i32* %10, %struct.resource* %11)
  %13 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %14 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %16 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PTR_ERR_OR_ZERO(i32 %17)
  ret i32 %18
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
