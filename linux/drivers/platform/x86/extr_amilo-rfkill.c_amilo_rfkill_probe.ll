; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_amilo-rfkill.c_amilo_rfkill_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_amilo-rfkill.c_amilo_rfkill_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dmi_system_id = type { i32 }

@amilo_rfkill_id_table = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@amilo_rfkill_dev = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @amilo_rfkill_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amilo_rfkill_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmi_system_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @amilo_rfkill_id_table, align 4
  %7 = call %struct.dmi_system_id* @dmi_first_match(i32 %6)
  store %struct.dmi_system_id* %7, %struct.dmi_system_id** %5, align 8
  %8 = load %struct.dmi_system_id*, %struct.dmi_system_id** %5, align 8
  %9 = icmp ne %struct.dmi_system_id* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load i32, i32* @KBUILD_MODNAME, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %18 = load %struct.dmi_system_id*, %struct.dmi_system_id** %5, align 8
  %19 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rfkill_alloc(i32 %14, i32* %16, i32 %17, i32 %20, i32* null)
  store i32 %21, i32* @amilo_rfkill_dev, align 4
  %22 = load i32, i32* @amilo_rfkill_dev, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %38

27:                                               ; preds = %13
  %28 = load i32, i32* @amilo_rfkill_dev, align 4
  %29 = call i32 @rfkill_register(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %38

34:                                               ; preds = %32
  %35 = load i32, i32* @amilo_rfkill_dev, align 4
  %36 = call i32 @rfkill_destroy(i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %33, %24, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.dmi_system_id* @dmi_first_match(i32) #1

declare dso_local i32 @rfkill_alloc(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @rfkill_register(i32) #1

declare dso_local i32 @rfkill_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
