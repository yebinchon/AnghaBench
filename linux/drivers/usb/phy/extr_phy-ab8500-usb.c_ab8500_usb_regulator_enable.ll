; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_regulator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_regulator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_usb = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to enable v-ape\0A\00", align 1
@AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to get v_ulpi voltage\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to set the Vintcore to 1.3V, ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to set optimum mode (ret=%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to enable vddulpivio18\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Vintcore is not set to 1.3V volt=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to enable musb_1v8\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_usb*)* @ab8500_usb_regulator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_usb_regulator_enable(%struct.ab8500_usb* %0) #0 {
  %2 = alloca %struct.ab8500_usb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ab8500_usb* %0, %struct.ab8500_usb** %2, align 8
  %5 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %6 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @regulator_enable(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %13 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i32, i8*, ...) @dev_err(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %18 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %16
  %24 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %25 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @regulator_get_voltage(i32 %26)
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %30 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %32 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %37 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %23
  %41 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %42 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @regulator_set_voltage(i32 %43, i32 1300000, i32 1350000)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %49 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %55 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @regulator_set_load(i32 %56, i32 28000)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %62 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %53
  br label %67

67:                                               ; preds = %66, %16
  %68 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %69 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @regulator_enable(i32 %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %76 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %81 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %79
  %87 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %88 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @regulator_get_voltage(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 1300000
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 1350000
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %99 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 (i32, i8*, ...) @dev_err(i32 %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %97, %94, %86
  br label %104

104:                                              ; preds = %103, %79
  %105 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %106 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @regulator_enable(i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.ab8500_usb*, %struct.ab8500_usb** %2, align 8
  %113 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @dev_err(i32 %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %104
  ret void
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i8* @regulator_get_voltage(i32) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

declare dso_local i32 @regulator_set_load(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
