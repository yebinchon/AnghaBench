; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi-aio.c_dell_wmi_aio_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi-aio.c_dell_wmi_aio_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.dell_wmi_event = type { i32* }
%struct.TYPE_3__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"bad event status 0x%x\0A\00", align 1
@dell_wmi_aio_input_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @dell_wmi_aio_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dell_wmi_aio_notify(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %struct.dell_wmi_event*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %11 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %10, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @wmi_get_event_data(i32 %15, %struct.acpi_buffer* %5)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @AE_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %95

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %union.acpi_object*
  store %union.acpi_object* %26, %union.acpi_object** %6, align 8
  %27 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %28 = icmp ne %union.acpi_object* %27, null
  br i1 %28, label %29, label %92

29:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  %30 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %31 = bitcast %union.acpi_object* %30 to i32*
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %91 [
    i32 128, label %33
    i32 129, label %41
  ]

33:                                               ; preds = %29
  %34 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %35 = bitcast %union.acpi_object* %34 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @dell_wmi_aio_input_dev, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @sparse_keymap_report_event(i32 %38, i32 %39, i32 1, i32 1)
  br label %91

41:                                               ; preds = %29
  %42 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %43 = bitcast %union.acpi_object* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %47 = bitcast %union.acpi_object* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dell_wmi_aio_event_check(i32* %45, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %41
  %53 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %54 = bitcast %union.acpi_object* %53 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to %struct.dell_wmi_event*
  store %struct.dell_wmi_event* %57, %struct.dell_wmi_event** %7, align 8
  %58 = load %struct.dell_wmi_event*, %struct.dell_wmi_event** %7, align 8
  %59 = getelementptr inbounds %struct.dell_wmi_event, %struct.dell_wmi_event* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  br label %83

63:                                               ; preds = %41
  %64 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %65 = bitcast %union.acpi_object* %64 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %71 = bitcast %union.acpi_object* %70 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %77 = bitcast %union.acpi_object* %76 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %75, %69, %63
  br label %83

83:                                               ; preds = %82, %52
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @dell_wmi_aio_input_dev, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @sparse_keymap_report_event(i32 %87, i32 %88, i32 1, i32 1)
  br label %90

90:                                               ; preds = %86, %83
  br label %91

91:                                               ; preds = %29, %90, %33
  br label %92

92:                                               ; preds = %91, %23
  %93 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %94 = call i32 @kfree(%union.acpi_object* %93)
  br label %95

95:                                               ; preds = %92, %20
  ret void
}

declare dso_local i64 @wmi_get_event_data(i32, %struct.acpi_buffer*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @sparse_keymap_report_event(i32, i32, i32, i32) #1

declare dso_local i32 @dell_wmi_aio_event_check(i32*, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
