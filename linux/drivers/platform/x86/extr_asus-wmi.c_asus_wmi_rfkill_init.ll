; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_rfkill_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_rfkill_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"asus-wlan\00", align 1
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_WLAN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"asus-bluetooth\00", align 1
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_BLUETOOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"asus-wimax\00", align 1
@RFKILL_TYPE_WIMAX = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_WIMAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"asus-wwan3g\00", align 1
@RFKILL_TYPE_WWAN = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_WWAN3G = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"asus-gps\00", align 1
@RFKILL_TYPE_GPS = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_GPS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"asus-uwb\00", align 1
@RFKILL_TYPE_UWB = common dso_local global i32 0, align 4
@ASUS_WMI_DEVID_UWB = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"\\_SB.PCI0.P0P5\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"\\_SB.PCI0.P0P6\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\\_SB.PCI0.P0P7\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*)* @asus_wmi_rfkill_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wmi_rfkill_init(%struct.asus_wmi* %0) #0 {
  %2 = alloca %struct.asus_wmi*, align 8
  %3 = alloca i32, align 4
  store %struct.asus_wmi* %0, %struct.asus_wmi** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %5 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %4, i32 0, i32 8
  %6 = call i32 @mutex_init(i32* %5)
  %7 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %8 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %7, i32 0, i32 7
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %11 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %12 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %11, i32 0, i32 6
  %13 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %14 = load i32, i32* @ASUS_WMI_DEVID_WLAN, align 4
  %15 = call i32 @asus_new_rfkill(%struct.asus_wmi* %10, i32* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %126

24:                                               ; preds = %18, %1
  %25 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %26 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %27 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %26, i32 0, i32 5
  %28 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %29 = load i32, i32* @ASUS_WMI_DEVID_BLUETOOTH, align 4
  %30 = call i32 @asus_new_rfkill(%struct.asus_wmi* %25, i32* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %126

39:                                               ; preds = %33, %24
  %40 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %41 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %42 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %41, i32 0, i32 4
  %43 = load i32, i32* @RFKILL_TYPE_WIMAX, align 4
  %44 = load i32, i32* @ASUS_WMI_DEVID_WIMAX, align 4
  %45 = call i32 @asus_new_rfkill(%struct.asus_wmi* %40, i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %126

54:                                               ; preds = %48, %39
  %55 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %56 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %57 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %56, i32 0, i32 3
  %58 = load i32, i32* @RFKILL_TYPE_WWAN, align 4
  %59 = load i32, i32* @ASUS_WMI_DEVID_WWAN3G, align 4
  %60 = call i32 @asus_new_rfkill(%struct.asus_wmi* %55, i32* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %126

69:                                               ; preds = %63, %54
  %70 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %71 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %72 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %71, i32 0, i32 2
  %73 = load i32, i32* @RFKILL_TYPE_GPS, align 4
  %74 = load i32, i32* @ASUS_WMI_DEVID_GPS, align 4
  %75 = call i32 @asus_new_rfkill(%struct.asus_wmi* %70, i32* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %126

84:                                               ; preds = %78, %69
  %85 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %86 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %87 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %86, i32 0, i32 1
  %88 = load i32, i32* @RFKILL_TYPE_UWB, align 4
  %89 = load i32, i32* @ASUS_WMI_DEVID_UWB, align 4
  %90 = call i32 @asus_new_rfkill(%struct.asus_wmi* %85, i32* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %88, i32 %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %84
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %126

99:                                               ; preds = %93, %84
  %100 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %101 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %99
  br label %126

109:                                              ; preds = %99
  %110 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %111 = call i32 @asus_setup_pci_hotplug(%struct.asus_wmi* %110)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @EBUSY, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %109
  %118 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %119 = call i32 @asus_register_rfkill_notifier(%struct.asus_wmi* %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %120 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %121 = call i32 @asus_register_rfkill_notifier(%struct.asus_wmi* %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %122 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %123 = call i32 @asus_register_rfkill_notifier(%struct.asus_wmi* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %124 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %125 = call i32 @asus_rfkill_hotplug(%struct.asus_wmi* %124)
  br label %126

126:                                              ; preds = %117, %108, %98, %83, %68, %53, %38, %23
  %127 = load i32, i32* %3, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  %133 = icmp ne i32 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %136 = call i32 @asus_wmi_rfkill_exit(%struct.asus_wmi* %135)
  br label %137

137:                                              ; preds = %134, %129, %126
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* @ENODEV, align 4
  %140 = sub nsw i32 0, %139
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %137
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @asus_new_rfkill(%struct.asus_wmi*, i32*, i8*, i32, i32) #1

declare dso_local i32 @asus_setup_pci_hotplug(%struct.asus_wmi*) #1

declare dso_local i32 @asus_register_rfkill_notifier(%struct.asus_wmi*, i8*) #1

declare dso_local i32 @asus_rfkill_hotplug(%struct.asus_wmi*) #1

declare dso_local i32 @asus_wmi_rfkill_exit(%struct.asus_wmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
