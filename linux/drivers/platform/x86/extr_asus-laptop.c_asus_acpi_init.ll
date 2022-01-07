; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_acpi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_acpi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { i32, i32, i32, i32, i64, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Hotkey device not present, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@bled_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"led\00", align 1
@TYPE_LED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"rfkill\00", align 1
@TYPE_RFKILL = common dso_local global i8* null, align 8
@wled_type = common dso_local global i32 0, align 4
@bluetooth_status = common dso_local global i64 0, align 8
@wlan_status = common dso_local global i64 0, align 8
@wimax_status = common dso_local global i64 0, align 8
@wwan_status = common dso_local global i64 0, align 8
@METHOD_KBD_LIGHT_SET = common dso_local global i32 0, align 4
@als_status = common dso_local global i32 0, align 4
@METHOD_ALS_CONTROL = common dso_local global i32 0, align 4
@METHOD_ALS_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_laptop*)* @asus_acpi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_acpi_init(%struct.asus_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_laptop*, align 8
  %4 = alloca i32, align 4
  store %struct.asus_laptop* %0, %struct.asus_laptop** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %6 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %5, i32 0, i32 7
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = call i32 @acpi_bus_get_status(%struct.TYPE_4__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %170

13:                                               ; preds = %1
  %14 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %15 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %14, i32 0, i32 7
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %170

25:                                               ; preds = %13
  %26 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %27 = call i32 @asus_laptop_get_info(%struct.asus_laptop* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %170

32:                                               ; preds = %25
  %33 = load i32, i32* @bled_type, align 4
  %34 = call i32 @strcmp(i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** @TYPE_LED, align 8
  %38 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %39 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  br label %49

40:                                               ; preds = %32
  %41 = load i32, i32* @bled_type, align 4
  %42 = call i32 @strcmp(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** @TYPE_RFKILL, align 8
  %46 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %47 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, i32* @wled_type, align 4
  %51 = call i32 @strcmp(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** @TYPE_LED, align 8
  %55 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %56 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  br label %66

57:                                               ; preds = %49
  %58 = load i32, i32* @wled_type, align 4
  %59 = call i32 @strcmp(i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** @TYPE_RFKILL, align 8
  %63 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %64 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %53
  %67 = load i64, i64* @bluetooth_status, align 8
  %68 = icmp sge i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %71 = load i64, i64* @bluetooth_status, align 8
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @asus_bluetooth_set(%struct.asus_laptop* %70, i32 %75)
  br label %77

77:                                               ; preds = %69, %66
  %78 = load i64, i64* @wlan_status, align 8
  %79 = icmp sge i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %82 = load i64, i64* @wlan_status, align 8
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @asus_wlan_set(%struct.asus_laptop* %81, i32 %86)
  br label %88

88:                                               ; preds = %80, %77
  %89 = load i64, i64* @wimax_status, align 8
  %90 = icmp sge i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %93 = load i64, i64* @wimax_status, align 8
  %94 = icmp ne i64 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @asus_wimax_set(%struct.asus_laptop* %92, i32 %97)
  br label %99

99:                                               ; preds = %91, %88
  %100 = load i64, i64* @wwan_status, align 8
  %101 = icmp sge i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %104 = load i64, i64* @wwan_status, align 8
  %105 = icmp ne i64 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @asus_wwan_set(%struct.asus_laptop* %103, i32 %108)
  br label %110

110:                                              ; preds = %102, %99
  %111 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %112 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @METHOD_KBD_LIGHT_SET, align 4
  %115 = call i32 @acpi_check_handle(i32 %113, i32 %114, i32* null)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %110
  %118 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %119 = call i32 @asus_kled_set(%struct.asus_laptop* %118, i32 1)
  br label %120

120:                                              ; preds = %117, %110
  %121 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %122 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %121, i32 0, i32 0
  store i32 4095, i32* %122, align 8
  %123 = load i32, i32* @als_status, align 4
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %129 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %131 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %130, i32 0, i32 2
  store i32 5, i32* %131, align 8
  %132 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %133 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %120
  %137 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %138 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %139 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @asus_als_switch(%struct.asus_laptop* %137, i32 %140)
  br label %168

142:                                              ; preds = %120
  %143 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %144 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @METHOD_ALS_CONTROL, align 4
  %147 = call i32 @acpi_check_handle(i32 %145, i32 %146, i32* null)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %167, label %149

149:                                              ; preds = %142
  %150 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %151 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @METHOD_ALS_LEVEL, align 4
  %154 = call i32 @acpi_check_handle(i32 %152, i32 %153, i32* null)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %149
  %157 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %158 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %159 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @asus_als_switch(%struct.asus_laptop* %157, i32 %160)
  %162 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %163 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %164 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @asus_als_level(%struct.asus_laptop* %162, i32 %165)
  br label %167

167:                                              ; preds = %156, %149, %142
  br label %168

168:                                              ; preds = %167, %136
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %168, %30, %21, %11
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @acpi_bus_get_status(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @asus_laptop_get_info(%struct.asus_laptop*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @asus_bluetooth_set(%struct.asus_laptop*, i32) #1

declare dso_local i32 @asus_wlan_set(%struct.asus_laptop*, i32) #1

declare dso_local i32 @asus_wimax_set(%struct.asus_laptop*, i32) #1

declare dso_local i32 @asus_wwan_set(%struct.asus_laptop*, i32) #1

declare dso_local i32 @acpi_check_handle(i32, i32, i32*) #1

declare dso_local i32 @asus_kled_set(%struct.asus_laptop*, i32) #1

declare dso_local i32 @asus_als_switch(%struct.asus_laptop*, i32) #1

declare dso_local i32 @asus_als_level(%struct.asus_laptop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
