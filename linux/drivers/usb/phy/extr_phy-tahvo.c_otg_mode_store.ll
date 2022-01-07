; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tahvo.c_otg_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tahvo.c_otg_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tahvo_usb = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@TAHVO_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@TAHVO_MODE_HOST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"HOST mode: host controller present\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"HOST mode: no host controller, powering off\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"PERIPHERAL mode: gadget driver present\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"PERIPHERAL mode: no gadget driver, powering off\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @otg_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otg_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tahvo_usb*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.tahvo_usb* @dev_get_drvdata(%struct.device* %11)
  store %struct.tahvo_usb* %12, %struct.tahvo_usb** %9, align 8
  %13 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %14 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i64, i64* %8, align 8
  %17 = icmp uge i64 %16, 4
  br i1 %17, label %18, label %55

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @strncmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %24 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TAHVO_MODE_PERIPHERAL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %30 = call i32 @tahvo_usb_stop_peripheral(%struct.tahvo_usb* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i64, i64* @TAHVO_MODE_HOST, align 8
  %33 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %34 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %36 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @dev_info(%struct.device* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %46 = call i32 @tahvo_usb_become_host(%struct.tahvo_usb* %45)
  br label %52

47:                                               ; preds = %31
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = call i32 @dev_info(%struct.device* %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %51 = call i32 @tahvo_usb_power_off(%struct.tahvo_usb* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @strlen(i8* %53)
  store i32 %54, i32* %10, align 4
  br label %99

55:                                               ; preds = %18, %4
  %56 = load i64, i64* %8, align 8
  %57 = icmp uge i64 %56, 10
  br i1 %57, label %58, label %95

58:                                               ; preds = %55
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @strncmp(i8* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %95

62:                                               ; preds = %58
  %63 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %64 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TAHVO_MODE_HOST, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %70 = call i32 @tahvo_usb_stop_host(%struct.tahvo_usb* %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = load i64, i64* @TAHVO_MODE_PERIPHERAL, align 8
  %73 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %74 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %76 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = call i32 @dev_info(%struct.device* %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %85 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %86 = call i32 @tahvo_usb_become_peripheral(%struct.tahvo_usb* %85)
  br label %92

87:                                               ; preds = %71
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = call i32 @dev_info(%struct.device* %88, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %90 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %91 = call i32 @tahvo_usb_power_off(%struct.tahvo_usb* %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @strlen(i8* %93)
  store i32 %94, i32* %10, align 4
  br label %98

95:                                               ; preds = %58, %55
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %52
  %100 = load %struct.tahvo_usb*, %struct.tahvo_usb** %9, align 8
  %101 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %100, i32 0, i32 1
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

declare dso_local %struct.tahvo_usb* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @tahvo_usb_stop_peripheral(%struct.tahvo_usb*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @tahvo_usb_become_host(%struct.tahvo_usb*) #1

declare dso_local i32 @tahvo_usb_power_off(%struct.tahvo_usb*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tahvo_usb_stop_host(%struct.tahvo_usb*) #1

declare dso_local i32 @tahvo_usb_become_peripheral(%struct.tahvo_usb*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
