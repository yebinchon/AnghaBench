; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_acpi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_acpi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.asus_laptop = type { %struct.TYPE_10__*, i32*, %struct.TYPE_7__*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ATKD_BRNUP_MIN = common dso_local global i32 0, align 4
@ATKD_BRNUP_MAX = common dso_local global i32 0, align 4
@ATKD_BRNUP = common dso_local global i32 0, align 4
@ATKD_BRNDOWN_MIN = common dso_local global i32 0, align 4
@ATKD_BRNDOWN_MAX = common dso_local global i32 0, align 4
@ATKD_BRNDOWN = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @asus_acpi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_acpi_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.asus_laptop*, align 8
  %6 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = call %struct.asus_laptop* @acpi_driver_data(%struct.acpi_device* %7)
  store %struct.asus_laptop* %8, %struct.asus_laptop** %5, align 8
  %9 = load %struct.asus_laptop*, %struct.asus_laptop** %5, align 8
  %10 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = srem i32 %12, 128
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = sext i32 %16 to i64
  store i64 %18, i64* %6, align 8
  %19 = load %struct.asus_laptop*, %struct.asus_laptop** %5, align 8
  %20 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.asus_laptop*, %struct.asus_laptop** %5, align 8
  %26 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = call i32 @dev_name(i32* %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @acpi_bus_generate_netlink_event(i32 %24, i32 %29, i32 %30, i64 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ATKD_BRNUP_MIN, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ATKD_BRNUP_MAX, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @ATKD_BRNUP, align 4
  store i32 %41, i32* %4, align 4
  br label %53

42:                                               ; preds = %36, %2
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ATKD_BRNDOWN_MIN, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @ATKD_BRNDOWN_MAX, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @ATKD_BRNDOWN, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %46, %42
  br label %53

53:                                               ; preds = %52, %40
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @ATKD_BRNDOWN, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @ATKD_BRNUP, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57, %53
  %62 = load %struct.asus_laptop*, %struct.asus_laptop** %5, align 8
  %63 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.asus_laptop*, %struct.asus_laptop** %5, align 8
  %68 = call i32 @asus_backlight_notify(%struct.asus_laptop* %67)
  br label %92

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %57
  %71 = load %struct.asus_laptop*, %struct.asus_laptop** %5, align 8
  %72 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = icmp ne %struct.TYPE_10__* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 234
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load %struct.asus_laptop*, %struct.asus_laptop** %5, align 8
  %80 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* @KOBJ_CHANGE, align 4
  %87 = call i32 @kobject_uevent(i32* %85, i32 %86)
  br label %92

88:                                               ; preds = %75, %70
  %89 = load %struct.asus_laptop*, %struct.asus_laptop** %5, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @asus_input_notify(%struct.asus_laptop* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %78, %66
  ret void
}

declare dso_local %struct.asus_laptop* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i64) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @asus_backlight_notify(%struct.asus_laptop*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @asus_input_notify(%struct.asus_laptop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
