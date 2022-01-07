; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_get_link_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_get_link_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_device = type { i32 }
%struct.knav_link_ram_block = type { i32, i32*, i64 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to alloc linkram\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_device*, i8*, %struct.knav_link_ram_block*)* @knav_get_link_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knav_get_link_ram(%struct.knav_device* %0, i8* %1, %struct.knav_link_ram_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.knav_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.knav_link_ram_block*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca [2 x i8*], align 16
  store %struct.knav_device* %0, %struct.knav_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.knav_link_ram_block* %2, %struct.knav_link_ram_block** %7, align 8
  %11 = load %struct.knav_device*, %struct.knav_device** %5, align 8
  %12 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.platform_device* @to_platform_device(i32 %13)
  store %struct.platform_device* %14, %struct.platform_device** %8, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %9, align 8
  %19 = load %struct.device_node*, %struct.device_node** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %22 = call i32 @of_property_read_u32_array(%struct.device_node* %19, i8* %20, i8** %21, i32 2)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %73, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %26 = load i8*, i8** %25, align 16
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %30 = load i8*, i8** %29, align 16
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.knav_link_ram_block*, %struct.knav_link_ram_block** %7, align 8
  %33 = getelementptr inbounds %struct.knav_link_ram_block, %struct.knav_link_ram_block* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.knav_link_ram_block*, %struct.knav_link_ram_block** %7, align 8
  %35 = getelementptr inbounds %struct.knav_link_ram_block, %struct.knav_link_ram_block* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.knav_link_ram_block*, %struct.knav_link_ram_block** %7, align 8
  %40 = getelementptr inbounds %struct.knav_link_ram_block, %struct.knav_link_ram_block* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %72

41:                                               ; preds = %24
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.knav_link_ram_block*, %struct.knav_link_ram_block** %7, align 8
  %46 = getelementptr inbounds %struct.knav_link_ram_block, %struct.knav_link_ram_block* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.knav_device*, %struct.knav_device** %5, align 8
  %48 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.knav_link_ram_block*, %struct.knav_link_ram_block** %7, align 8
  %51 = getelementptr inbounds %struct.knav_link_ram_block, %struct.knav_link_ram_block* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 8, %52
  %54 = load %struct.knav_link_ram_block*, %struct.knav_link_ram_block** %7, align 8
  %55 = getelementptr inbounds %struct.knav_link_ram_block, %struct.knav_link_ram_block* %54, i32 0, i32 2
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32* @dmam_alloc_coherent(i32 %49, i32 %53, i64* %55, i32 %56)
  %58 = load %struct.knav_link_ram_block*, %struct.knav_link_ram_block** %7, align 8
  %59 = getelementptr inbounds %struct.knav_link_ram_block, %struct.knav_link_ram_block* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.knav_link_ram_block*, %struct.knav_link_ram_block** %7, align 8
  %61 = getelementptr inbounds %struct.knav_link_ram_block, %struct.knav_link_ram_block* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %41
  %65 = load %struct.knav_device*, %struct.knav_device** %5, align 8
  %66 = getelementptr inbounds %struct.knav_device, %struct.knav_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %41
  br label %72

72:                                               ; preds = %71, %28
  br label %76

73:                                               ; preds = %3
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %73, %64
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i8**, i32) #1

declare dso_local i32* @dmam_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
