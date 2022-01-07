; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-base.c_dell_smbios_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-base.c_dell_smbios_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.smbios_device = type { i32, i8*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smbios_mutex = common dso_local global i32 0, align 4
@smbios_device_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Added device: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dell_smbios_register_device(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.smbios_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.smbios_device* @devm_kzalloc(%struct.device* %7, i32 24, i32 %8)
  store %struct.smbios_device* %9, %struct.smbios_device** %6, align 8
  %10 = load %struct.smbios_device*, %struct.smbios_device** %6, align 8
  %11 = icmp ne %struct.smbios_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @get_device(%struct.device* %16)
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.smbios_device*, %struct.smbios_device** %6, align 8
  %20 = getelementptr inbounds %struct.smbios_device, %struct.smbios_device* %19, i32 0, i32 2
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.smbios_device*, %struct.smbios_device** %6, align 8
  %23 = getelementptr inbounds %struct.smbios_device, %struct.smbios_device* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = call i32 @mutex_lock(i32* @smbios_mutex)
  %25 = load %struct.smbios_device*, %struct.smbios_device** %6, align 8
  %26 = getelementptr inbounds %struct.smbios_device, %struct.smbios_device* %25, i32 0, i32 0
  %27 = call i32 @list_add_tail(i32* %26, i32* @smbios_device_list)
  %28 = call i32 @mutex_unlock(i32* @smbios_mutex)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %15, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.smbios_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
