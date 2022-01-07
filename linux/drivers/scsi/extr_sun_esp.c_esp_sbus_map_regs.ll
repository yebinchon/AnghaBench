; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_sbus_map_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_sbus_map_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32 }
%struct.platform_device = type { %struct.resource* }
%struct.resource = type { i32 }

@SBUS_ESP_REG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ESP\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*, i32)* @esp_sbus_map_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_sbus_map_regs(%struct.esp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.esp* %0, %struct.esp** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.esp*, %struct.esp** %4, align 8
  %9 = getelementptr inbounds %struct.esp, %struct.esp* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.platform_device* @to_platform_device(i32 %10)
  store %struct.platform_device* %11, %struct.platform_device** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.resource*, %struct.resource** %16, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i64 1
  store %struct.resource* %18, %struct.resource** %7, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %21, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i64 0
  store %struct.resource* %23, %struct.resource** %7, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.resource*, %struct.resource** %7, align 8
  %26 = load i32, i32* @SBUS_ESP_REG_SIZE, align 4
  %27 = call i32 @of_ioremap(%struct.resource* %25, i32 0, i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.esp*, %struct.esp** %4, align 8
  %29 = getelementptr inbounds %struct.esp, %struct.esp* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.esp*, %struct.esp** %4, align 8
  %31 = getelementptr inbounds %struct.esp, %struct.esp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @of_ioremap(%struct.resource*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
