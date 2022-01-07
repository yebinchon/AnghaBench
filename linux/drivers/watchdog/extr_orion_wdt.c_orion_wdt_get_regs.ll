; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_orion_wdt_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_orion_wdt_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.orion_watchdog = type { i8*, i8*, i8* }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"marvell,orion-wdt\00", align 1
@INTERNAL_REGS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"marvell,armada-370-wdt\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"marvell,armada-xp-wdt\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"marvell,armada-375-wdt\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"marvell,armada-380-wdt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.orion_watchdog*)* @orion_wdt_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_wdt_get_regs(%struct.platform_device* %0, %struct.orion_watchdog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.orion_watchdog*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.orion_watchdog* %1, %struct.orion_watchdog** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = call %struct.resource* @platform_get_resource(%struct.platform_device* %12, i32 %13, i32 0)
  store %struct.resource* %14, %struct.resource** %7, align 8
  %15 = load %struct.resource*, %struct.resource** %7, align 8
  %16 = icmp ne %struct.resource* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %141

20:                                               ; preds = %2
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %7, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = call i32 @resource_size(%struct.resource* %26)
  %28 = call i8* @devm_ioremap(%struct.TYPE_2__* %22, i32 %25, i32 %27)
  %29 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %30 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %32 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %20
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %141

38:                                               ; preds = %20
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = call i64 @of_device_is_compatible(%struct.device_node* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = load %struct.resource*, %struct.resource** %7, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @INTERNAL_REGS_MASK, align 4
  %48 = and i32 %46, %47
  %49 = call i8* @orion_wdt_ioremap_rstout(%struct.platform_device* %43, i32 %48)
  %50 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %51 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %53 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %141

59:                                               ; preds = %42
  br label %140

60:                                               ; preds = %38
  %61 = load %struct.device_node*, %struct.device_node** %6, align 8
  %62 = call i64 @of_device_is_compatible(%struct.device_node* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load %struct.device_node*, %struct.device_node** %6, align 8
  %66 = call i64 @of_device_is_compatible(%struct.device_node* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %64, %60
  %69 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %70 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %69, i32 1)
  %71 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %72 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %74 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %80 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %3, align 4
  br label %141

83:                                               ; preds = %68
  br label %139

84:                                               ; preds = %64
  %85 = load %struct.device_node*, %struct.device_node** %6, align 8
  %86 = call i64 @of_device_is_compatible(%struct.device_node* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load %struct.device_node*, %struct.device_node** %6, align 8
  %90 = call i64 @of_device_is_compatible(%struct.device_node* %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %135

92:                                               ; preds = %88, %84
  %93 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %94 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %93, i32 1)
  %95 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %96 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %98 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @IS_ERR(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %104 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @PTR_ERR(i8* %105)
  store i32 %106, i32* %3, align 4
  br label %141

107:                                              ; preds = %92
  %108 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %109 = load i32, i32* @IORESOURCE_MEM, align 4
  %110 = call %struct.resource* @platform_get_resource(%struct.platform_device* %108, i32 %109, i32 2)
  store %struct.resource* %110, %struct.resource** %7, align 8
  %111 = load %struct.resource*, %struct.resource** %7, align 8
  %112 = icmp ne %struct.resource* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %141

116:                                              ; preds = %107
  %117 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.resource*, %struct.resource** %7, align 8
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.resource*, %struct.resource** %7, align 8
  %123 = call i32 @resource_size(%struct.resource* %122)
  %124 = call i8* @devm_ioremap(%struct.TYPE_2__* %118, i32 %121, i32 %123)
  %125 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %126 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %128 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %116
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %141

134:                                              ; preds = %116
  br label %138

135:                                              ; preds = %88
  %136 = load i32, i32* @ENODEV, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %141

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138, %83
  br label %140

140:                                              ; preds = %139, %59
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %135, %131, %113, %102, %78, %56, %35, %17
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i8* @orion_wdt_ioremap_rstout(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
