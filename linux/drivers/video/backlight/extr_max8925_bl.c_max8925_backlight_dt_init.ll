; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_max8925_bl.c_max8925_backlight_dt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_max8925_bl.c_max8925_backlight_dt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.max8925_backlight_pdata*, %struct.TYPE_4__* }
%struct.max8925_backlight_pdata = type { i32 }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to find backlight node\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"maxim,max8925-dual-string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @max8925_backlight_dt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8925_backlight_dt_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.max8925_backlight_pdata*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %3, align 8
  %13 = load %struct.device_node*, %struct.device_node** %3, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @CONFIG_OF, align 4
  %17 = call i32 @IS_ENABLED(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %1
  br label %52

20:                                               ; preds = %15
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.max8925_backlight_pdata* @devm_kzalloc(%struct.TYPE_5__* %22, i32 4, i32 %23)
  store %struct.max8925_backlight_pdata* %24, %struct.max8925_backlight_pdata** %5, align 8
  %25 = load %struct.max8925_backlight_pdata*, %struct.max8925_backlight_pdata** %5, align 8
  %26 = icmp ne %struct.max8925_backlight_pdata* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %52

28:                                               ; preds = %20
  %29 = load %struct.device_node*, %struct.device_node** %3, align 8
  %30 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %30, %struct.device_node** %4, align 8
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = icmp ne %struct.device_node* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(%struct.TYPE_5__* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %52

37:                                               ; preds = %28
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.max8925_backlight_pdata*, %struct.max8925_backlight_pdata** %5, align 8
  %44 = getelementptr inbounds %struct.max8925_backlight_pdata, %struct.max8925_backlight_pdata* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.device_node*, %struct.device_node** %4, align 8
  %47 = call i32 @of_node_put(%struct.device_node* %46)
  %48 = load %struct.max8925_backlight_pdata*, %struct.max8925_backlight_pdata** %5, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store %struct.max8925_backlight_pdata* %48, %struct.max8925_backlight_pdata** %51, align 8
  br label %52

52:                                               ; preds = %45, %33, %27, %19
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.max8925_backlight_pdata* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
