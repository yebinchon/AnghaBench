; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-wmi.c_msi_wmi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-wmi.c_msi_wmi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%struct.key_entry = type { i64, i32, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_3__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"bad event status 0x%x\0A\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Eventcode: 0x%x\0A\00", align 1
@msi_wmi_input_dev = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown key pressed - %x\0A\00", align 1
@event_wmi = common dso_local global %struct.TYPE_4__* null, align 8
@last_pressed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Suppressed key event 0x%X - Last press was %lld us ago\0A\00", align 1
@KE_KEY = common dso_local global i64 0, align 8
@backlight = common dso_local global i64 0, align 8
@MSI_KEY_BRIGHTNESSUP = common dso_local global i32 0, align 4
@MSI_KEY_BRIGHTNESSDOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Send key: 0x%X - Input layer keycode: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Unknown event received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @msi_wmi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msi_wmi_notify(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %struct.key_entry*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @wmi_get_event_data(i32 %17, %struct.acpi_buffer* %5)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @AE_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i64, i64* %8, align 8
  %24 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %114

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %union.acpi_object*
  store %union.acpi_object* %28, %union.acpi_object** %7, align 8
  %29 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %30 = icmp ne %union.acpi_object* %29, null
  br i1 %30, label %31, label %107

31:                                               ; preds = %25
  %32 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %33 = bitcast %union.acpi_object* %32 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %107

37:                                               ; preds = %31
  %38 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @msi_wmi_input_dev, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call %struct.key_entry* @sparse_keymap_entry_from_scancode(i32 %44, i32 %45)
  store %struct.key_entry* %46, %struct.key_entry** %6, align 8
  %47 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %48 = icmp ne %struct.key_entry* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %110

52:                                               ; preds = %37
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @event_wmi, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = call i32 (...) @ktime_get_real()
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @last_pressed, align 4
  %61 = call i32 @ktime_sub(i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @ktime_to_us(i32 %62)
  %64 = icmp slt i32 %63, 50000
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %67 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @ktime_to_us(i32 %69)
  %71 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %70)
  br label %110

72:                                               ; preds = %57
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* @last_pressed, align 4
  br label %74

74:                                               ; preds = %72, %52
  %75 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %76 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @KE_KEY, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %74
  %81 = load i64, i64* @backlight, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %80
  %84 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %85 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @MSI_KEY_BRIGHTNESSUP, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %83
  %90 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %91 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MSI_KEY_BRIGHTNESSDOWN, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %89, %80
  %96 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %97 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %100 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load i32, i32* @msi_wmi_input_dev, align 4
  %104 = load %struct.key_entry*, %struct.key_entry** %6, align 8
  %105 = call i32 @sparse_keymap_report_entry(i32 %103, %struct.key_entry* %104, i32 1, i32 1)
  br label %106

106:                                              ; preds = %95, %89, %83, %74
  br label %109

107:                                              ; preds = %31, %25
  %108 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %106
  br label %110

110:                                              ; preds = %109, %65, %49
  %111 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @kfree(i64 %112)
  br label %114

114:                                              ; preds = %110, %22
  ret void
}

declare dso_local i64 @wmi_get_event_data(i32, %struct.acpi_buffer*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local %struct.key_entry* @sparse_keymap_entry_from_scancode(i32, i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @sparse_keymap_report_entry(i32, %struct.key_entry*, i32, i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
