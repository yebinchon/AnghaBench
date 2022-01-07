; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_platform_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@ASUS_WMI_METHODID_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Initialization: %#x\0A\00", align 1
@ASUS_WMI_METHODID_SPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"BIOS WMI version: %d.%d\0A\00", align 1
@ASUS_WMI_METHODID_SFUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"SFUN value: %#x\0A\00", align 1
@ASUS_WMI_MGMT_GUID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ASUS_ACPI_UID_ASUSWMI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Detected ASUSWMI, use DCTS\0A\00", align 1
@ASUS_WMI_METHODID_DCTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Detected %s, not ASUSWMI, use DSTS\0A\00", align 1
@ASUS_WMI_METHODID_DSTS = common dso_local global i32 0, align 4
@ASUS_ACPI_UID_ATK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Detected ATK, enable event queue\0A\00", align 1
@ASUS_WMI_DEVID_CWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*)* @asus_wmi_platform_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wmi_platform_init(%struct.asus_wmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_wmi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.asus_wmi* %0, %struct.asus_wmi** %3, align 8
  %7 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %8 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @ASUS_WMI_METHODID_INIT, align 4
  %12 = call i32 @asus_wmi_evaluate_method(i32 %11, i32 0, i32 0, i32* %6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* @ASUS_WMI_METHODID_SPEC, align 4
  %19 = call i32 @asus_wmi_evaluate_method(i32 %18, i32 0, i32 9, i32* %6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 16
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 255
  %26 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %29 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %21, %17
  %31 = load i32, i32* @ASUS_WMI_METHODID_SFUN, align 4
  %32 = call i32 @asus_wmi_evaluate_method(i32 %31, i32 0, i32 0, i32* %6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %39 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i32, i32* @ASUS_WMI_MGMT_GUID, align 4
  %42 = call i8* @wmi_get_acpi_device_uid(i32 %41)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %110

48:                                               ; preds = %40
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @ASUS_ACPI_UID_ASUSWMI, align 4
  %51 = call i32 @strcmp(i8* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @ASUS_WMI_METHODID_DCTS, align 4
  %57 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %58 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  br label %66

59:                                               ; preds = %48
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @ASUS_WMI_METHODID_DSTS, align 4
  %64 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %65 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %59, %53
  %67 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %68 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @wmi_get_acpi_device_uid(i32 %71)
  store i8* %72, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %66
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* @ASUS_ACPI_UID_ATK, align 4
  %78 = call i32 @strcmp(i8* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %83 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %84 = call i32 @asus_wmi_notify_queue_flush(%struct.asus_wmi* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %88 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %80
  br label %90

90:                                               ; preds = %89, %75, %66
  %91 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %92 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %91, i32 0, i32 3
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %90
  %100 = load i32, i32* @ASUS_WMI_DEVID_CWAP, align 4
  %101 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %102 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %101, i32 0, i32 3
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @asus_wmi_set_devstate(i32 %100, i64 %107, i32* null)
  br label %109

109:                                              ; preds = %99, %90
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %45
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @asus_wmi_evaluate_method(i32, i32, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i8* @wmi_get_acpi_device_uid(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @asus_wmi_notify_queue_flush(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_set_devstate(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
