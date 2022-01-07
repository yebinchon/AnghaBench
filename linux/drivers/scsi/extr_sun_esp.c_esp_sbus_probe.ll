; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_sbus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sun_esp.c_esp_sbus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { %struct.device_node* }

@.str = private unnamed_addr constant [7 x i8] c"espdma\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SUNW,fas\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @esp_sbus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_sbus_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.device_node* null, %struct.device_node** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  store %struct.platform_device* null, %struct.platform_device** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = getelementptr inbounds %struct.device_node, %struct.device_node* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  %16 = call i64 @of_node_name_eq(%struct.device_node* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = getelementptr inbounds %struct.device_node, %struct.device_node* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  %22 = call i64 @of_node_name_eq(%struct.device_node* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %1
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = getelementptr inbounds %struct.device_node, %struct.device_node* %25, i32 0, i32 0
  %27 = load %struct.device_node*, %struct.device_node** %26, align 8
  store %struct.device_node* %27, %struct.device_node** %4, align 8
  br label %38

28:                                               ; preds = %18
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = call i64 @of_node_name_eq(%struct.device_node* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.device_node*, %struct.device_node** %35, align 8
  store %struct.device_node* %36, %struct.device_node** %4, align 8
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %28
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = icmp ne %struct.device_node* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.device_node*, %struct.device_node** %4, align 8
  %43 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %42)
  store %struct.platform_device* %43, %struct.platform_device** %6, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %46 = icmp ne %struct.platform_device* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %63

50:                                               ; preds = %44
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @esp_sbus_probe_one(%struct.platform_device* %51, %struct.platform_device* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @put_device(%struct.TYPE_2__* %59)
  br label %61

61:                                               ; preds = %57, %50
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %47
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @esp_sbus_probe_one(%struct.platform_device*, %struct.platform_device*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
