; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_get_bursts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_get_bursts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { %struct.device_node* }

@.str = private unnamed_addr constant [12 x i8] c"burst-sizes\00", align 1
@DMA_BURST16 = common dso_local global i32 0, align 4
@DMA_BURST32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*, %struct.platform_device*)* @esp_get_bursts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_get_bursts(%struct.esp* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.esp*, %struct.esp** %3, align 8
  %15 = getelementptr inbounds %struct.esp, %struct.esp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.platform_device* @to_platform_device(i32 %16)
  store %struct.platform_device* %17, %struct.platform_device** %6, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %7, align 8
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = call i32 @of_getintprop_default(%struct.device_node* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 255)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i32 @of_getintprop_default(%struct.device_node* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 255)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 255
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 0
  %35 = load %struct.device_node*, %struct.device_node** %34, align 8
  %36 = call i32 @of_getintprop_default(%struct.device_node* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 255)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 255
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 255
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @DMA_BURST16, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @DMA_BURST32, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %46, %43
  %57 = load i32, i32* @DMA_BURST32, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.esp*, %struct.esp** %3, align 8
  %62 = getelementptr inbounds %struct.esp, %struct.esp* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @of_getintprop_default(%struct.device_node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
