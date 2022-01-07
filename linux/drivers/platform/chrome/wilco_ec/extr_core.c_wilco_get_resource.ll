; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_core.c_wilco_get_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_core.c_wilco_get_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Couldn't find IO resource %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.platform_device*, i32)* @wilco_get_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @wilco_get_resource(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = load i32, i32* @IORESOURCE_IO, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 %12)
  store %struct.resource* %13, %struct.resource** %7, align 8
  %14 = load %struct.resource*, %struct.resource** %7, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.resource*, %struct.resource** %7, align 8
  store %struct.resource* %20, %struct.resource** %3, align 8
  br label %31

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load %struct.resource*, %struct.resource** %7, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = call i32 @resource_size(%struct.resource* %26)
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @dev_name(%struct.device* %28)
  %30 = call %struct.resource* @devm_request_region(%struct.device* %22, i32 %25, i32 %27, i32 %29)
  store %struct.resource* %30, %struct.resource** %3, align 8
  br label %31

31:                                               ; preds = %21, %16
  %32 = load %struct.resource*, %struct.resource** %3, align 8
  ret %struct.resource* %32
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local %struct.resource* @devm_request_region(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
