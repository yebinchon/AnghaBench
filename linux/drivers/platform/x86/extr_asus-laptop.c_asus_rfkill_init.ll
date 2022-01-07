; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_rfkill_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_rfkill_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { i64, i64, i32, i32, i32, i32, i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@METHOD_GPS_ON = common dso_local global i32 0, align 4
@METHOD_GPS_OFF = common dso_local global i32 0, align 4
@METHOD_GPS_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"asus-gps\00", align 1
@RFKILL_TYPE_GPS = common dso_local global i32 0, align 4
@asus_gps_rfkill_ops = common dso_local global i32 0, align 4
@METHOD_WLAN = common dso_local global i32 0, align 4
@TYPE_RFKILL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"asus-wlan\00", align 1
@WL_RSTS = common dso_local global i32 0, align 4
@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@asus_rfkill_ops = common dso_local global i32 0, align 4
@METHOD_BLUETOOTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"asus-bluetooth\00", align 1
@BT_RSTS = common dso_local global i32 0, align 4
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@METHOD_WWAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"asus-wwan\00", align 1
@WW_RSTS = common dso_local global i32 0, align 4
@RFKILL_TYPE_WWAN = common dso_local global i32 0, align 4
@METHOD_WIMAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"asus-wimax\00", align 1
@WM_RSTS = common dso_local global i32 0, align 4
@RFKILL_TYPE_WIMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_laptop*)* @asus_rfkill_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_rfkill_init(%struct.asus_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_laptop*, align 8
  %4 = alloca i32, align 4
  store %struct.asus_laptop* %0, %struct.asus_laptop** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %6 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %5, i32 0, i32 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %136

12:                                               ; preds = %1
  %13 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %14 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @METHOD_GPS_ON, align 4
  %17 = call i32 @acpi_check_handle(i32 %15, i32 %16, i32* null)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %12
  %20 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %21 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @METHOD_GPS_OFF, align 4
  %24 = call i32 @acpi_check_handle(i32 %22, i32 %23, i32* null)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %19
  %27 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %28 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @METHOD_GPS_STATUS, align 4
  %31 = call i32 @acpi_check_handle(i32 %29, i32 %30, i32* null)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %35 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %36 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %35, i32 0, i32 7
  %37 = load i32, i32* @RFKILL_TYPE_GPS, align 4
  %38 = call i32 @asus_rfkill_setup(%struct.asus_laptop* %34, i32* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 -1, i32 %37, i32* @asus_gps_rfkill_ops)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %26, %19, %12
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %128

43:                                               ; preds = %39
  %44 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %45 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @METHOD_WLAN, align 4
  %48 = call i32 @acpi_check_handle(i32 %46, i32 %47, i32* null)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %43
  %51 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %52 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TYPE_RFKILL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %58 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %59 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %58, i32 0, i32 6
  %60 = load i32, i32* @WL_RSTS, align 4
  %61 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %62 = call i32 @asus_rfkill_setup(%struct.asus_laptop* %57, i32* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i32* @asus_rfkill_ops)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %56, %50, %43
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %128

67:                                               ; preds = %63
  %68 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %69 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @METHOD_BLUETOOTH, align 4
  %72 = call i32 @acpi_check_handle(i32 %70, i32 %71, i32* null)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %67
  %75 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %76 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TYPE_RFKILL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %82 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %83 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %82, i32 0, i32 5
  %84 = load i32, i32* @BT_RSTS, align 4
  %85 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %86 = call i32 @asus_rfkill_setup(%struct.asus_laptop* %81, i32* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85, i32* @asus_rfkill_ops)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %80, %74, %67
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %128

91:                                               ; preds = %87
  %92 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %93 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @METHOD_WWAN, align 4
  %96 = call i32 @acpi_check_handle(i32 %94, i32 %95, i32* null)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %100 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %101 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %100, i32 0, i32 4
  %102 = load i32, i32* @WW_RSTS, align 4
  %103 = load i32, i32* @RFKILL_TYPE_WWAN, align 4
  %104 = call i32 @asus_rfkill_setup(%struct.asus_laptop* %99, i32* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %103, i32* @asus_rfkill_ops)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %98, %91
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %128

109:                                              ; preds = %105
  %110 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %111 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @METHOD_WIMAX, align 4
  %114 = call i32 @acpi_check_handle(i32 %112, i32 %113, i32* null)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %118 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %119 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %118, i32 0, i32 2
  %120 = load i32, i32* @WM_RSTS, align 4
  %121 = load i32, i32* @RFKILL_TYPE_WIMAX, align 4
  %122 = call i32 @asus_rfkill_setup(%struct.asus_laptop* %117, i32* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %121, i32* @asus_rfkill_ops)
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %116, %109
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %128

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %127, %126, %108, %90, %66, %42
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %133 = call i32 @asus_rfkill_exit(%struct.asus_laptop* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %9
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @acpi_check_handle(i32, i32, i32*) #1

declare dso_local i32 @asus_rfkill_setup(%struct.asus_laptop*, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @asus_rfkill_exit(%struct.asus_laptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
