; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_backlight_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { %struct.backlight_device*, %struct.TYPE_3__* }
%struct.backlight_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.backlight_properties = type { i32, i32 }

@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@EEEPC_LAPTOP_FILE = common dso_local global i32 0, align 4
@eeepcbl_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not register eeepc backlight device\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeepc_laptop*)* @eeepc_backlight_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_backlight_init(%struct.eeepc_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeepc_laptop*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  %5 = alloca %struct.backlight_device*, align 8
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %3, align 8
  %6 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 8)
  %7 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %8 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 15, i32* %9, align 4
  %10 = load i32, i32* @EEEPC_LAPTOP_FILE, align 4
  %11 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %12 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %16 = call %struct.backlight_device* @backlight_device_register(i32 %10, i32* %14, %struct.eeepc_laptop* %15, i32* @eeepcbl_ops, %struct.backlight_properties* %4)
  store %struct.backlight_device* %16, %struct.backlight_device** %5, align 8
  %17 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %18 = call i64 @IS_ERR(%struct.backlight_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %23 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %22, i32 0, i32 0
  store %struct.backlight_device* null, %struct.backlight_device** %23, align 8
  %24 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.backlight_device* %24)
  store i32 %25, i32* %2, align 4
  br label %41

26:                                               ; preds = %1
  %27 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %28 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %29 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %28, i32 0, i32 0
  store %struct.backlight_device* %27, %struct.backlight_device** %29, align 8
  %30 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %31 = call i32 @read_brightness(%struct.backlight_device* %30)
  %32 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %33 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %36 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %37 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %40 = call i32 @backlight_update_status(%struct.backlight_device* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %26, %20
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i32, i32*, %struct.eeepc_laptop*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @read_brightness(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
