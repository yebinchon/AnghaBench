; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500.c_ux500_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500.c_ux500_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb_hdrc_platform_data = type { i32 }
%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"No 'dr_mode' property found\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@MUSB_HOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@MUSB_OTG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@MUSB_PERIPHERAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.musb_hdrc_platform_data* (%struct.platform_device*, %struct.device_node*)* @ux500_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.musb_hdrc_platform_data* @ux500_of_probe(%struct.platform_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.musb_hdrc_platform_data*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.musb_hdrc_platform_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.musb_hdrc_platform_data* @devm_kzalloc(i32* %10, i32 4, i32 %11)
  store %struct.musb_hdrc_platform_data* %12, %struct.musb_hdrc_platform_data** %6, align 8
  %13 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %6, align 8
  %14 = icmp ne %struct.musb_hdrc_platform_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.musb_hdrc_platform_data* null, %struct.musb_hdrc_platform_data** %3, align 8
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = call i8* @of_get_property(%struct.device_node* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store %struct.musb_hdrc_platform_data* null, %struct.musb_hdrc_platform_data** %3, align 8
  br label %55

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @MUSB_HOST, align 4
  %34 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %6, align 8
  %35 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @MUSB_OTG, align 4
  %42 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %6, align 8
  %43 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @MUSB_PERIPHERAL, align 4
  %50 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %6, align 8
  %51 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %25
  %54 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %6, align 8
  store %struct.musb_hdrc_platform_data* %54, %struct.musb_hdrc_platform_data** %3, align 8
  br label %55

55:                                               ; preds = %53, %21, %15
  %56 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %3, align 8
  ret %struct.musb_hdrc_platform_data* %56
}

declare dso_local %struct.musb_hdrc_platform_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
