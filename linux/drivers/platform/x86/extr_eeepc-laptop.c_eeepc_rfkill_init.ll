; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_rfkill_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_rfkill_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_laptop = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"eeepc-wlan\00", align 1
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@CM_ASL_WLAN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"eeepc-bluetooth\00", align 1
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@CM_ASL_BLUETOOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"eeepc-wwan3g\00", align 1
@RFKILL_TYPE_WWAN = common dso_local global i32 0, align 4
@CM_ASL_3G = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"eeepc-wimax\00", align 1
@RFKILL_TYPE_WIMAX = common dso_local global i32 0, align 4
@CM_ASL_WIMAX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EEEPC_RFKILL_NODE_1 = common dso_local global i32 0, align 4
@EEEPC_RFKILL_NODE_2 = common dso_local global i32 0, align 4
@EEEPC_RFKILL_NODE_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeepc_laptop*)* @eeepc_rfkill_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeepc_rfkill_init(%struct.eeepc_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeepc_laptop*, align 8
  %4 = alloca i32, align 4
  store %struct.eeepc_laptop* %0, %struct.eeepc_laptop** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %6 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %5, i32 0, i32 5
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %9 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %10 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %9, i32 0, i32 4
  %11 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %12 = load i32, i32* @CM_ASL_WLAN, align 4
  %13 = call i32 @eeepc_new_rfkill(%struct.eeepc_laptop* %8, i32* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %91

22:                                               ; preds = %16, %1
  %23 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %24 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %25 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %24, i32 0, i32 3
  %26 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %27 = load i32, i32* @CM_ASL_BLUETOOTH, align 4
  %28 = call i32 @eeepc_new_rfkill(%struct.eeepc_laptop* %23, i32* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %91

37:                                               ; preds = %31, %22
  %38 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %39 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %40 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %39, i32 0, i32 2
  %41 = load i32, i32* @RFKILL_TYPE_WWAN, align 4
  %42 = load i32, i32* @CM_ASL_3G, align 4
  %43 = call i32 @eeepc_new_rfkill(%struct.eeepc_laptop* %38, i32* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %91

52:                                               ; preds = %46, %37
  %53 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %54 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %55 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %54, i32 0, i32 1
  %56 = load i32, i32* @RFKILL_TYPE_WIMAX, align 4
  %57 = load i32, i32* @CM_ASL_WIMAX, align 4
  %58 = call i32 @eeepc_new_rfkill(%struct.eeepc_laptop* %53, i32* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %91

67:                                               ; preds = %61, %52
  %68 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %69 = getelementptr inbounds %struct.eeepc_laptop, %struct.eeepc_laptop* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %104

73:                                               ; preds = %67
  %74 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %75 = call i32 @eeepc_setup_pci_hotplug(%struct.eeepc_laptop* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %73
  %82 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %83 = load i32, i32* @EEEPC_RFKILL_NODE_1, align 4
  %84 = call i32 @eeepc_register_rfkill_notifier(%struct.eeepc_laptop* %82, i32 %83)
  %85 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %86 = load i32, i32* @EEEPC_RFKILL_NODE_2, align 4
  %87 = call i32 @eeepc_register_rfkill_notifier(%struct.eeepc_laptop* %85, i32 %86)
  %88 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %89 = load i32, i32* @EEEPC_RFKILL_NODE_3, align 4
  %90 = call i32 @eeepc_register_rfkill_notifier(%struct.eeepc_laptop* %88, i32 %89)
  br label %91

91:                                               ; preds = %81, %66, %51, %36, %21
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.eeepc_laptop*, %struct.eeepc_laptop** %3, align 8
  %101 = call i32 @eeepc_rfkill_exit(%struct.eeepc_laptop* %100)
  br label %102

102:                                              ; preds = %99, %94, %91
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %72
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @eeepc_new_rfkill(%struct.eeepc_laptop*, i32*, i8*, i32, i32) #1

declare dso_local i32 @eeepc_setup_pci_hotplug(%struct.eeepc_laptop*) #1

declare dso_local i32 @eeepc_register_rfkill_notifier(%struct.eeepc_laptop*, i32) #1

declare dso_local i32 @eeepc_rfkill_exit(%struct.eeepc_laptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
