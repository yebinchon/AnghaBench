; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_setup_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_setup_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfkill = type { i32 }
%struct.acpi_device = type { i32 }

@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sony-wifi\00", align 1
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"sony-bluetooth\00", align 1
@RFKILL_TYPE_WWAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"sony-wwan\00", align 1
@RFKILL_TYPE_WIMAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"sony-wimax\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sony_rfkill_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sony_rfkill_handle = common dso_local global i32 0, align 4
@sony_rfkill_address = common dso_local global i32* null, align 8
@sony_rfkill_devices = common dso_local global %struct.rfkill** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @sony_nc_setup_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_nc_setup_rfkill(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rfkill*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %22 [
    i32 130, label %14
    i32 131, label %16
    i32 128, label %18
    i32 129, label %20
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  store i32 %15, i32* %8, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  store i32 %17, i32* %8, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @RFKILL_TYPE_WWAN, align 4
  store i32 %19, i32* %8, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @RFKILL_TYPE_WIMAX, align 4
  store i32 %21, i32* %8, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %94

25:                                               ; preds = %20, %18, %16, %14
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call %struct.rfkill* @rfkill_alloc(i8* %26, i32* %28, i32 %29, i32* @sony_rfkill_ops, i8* %32)
  store %struct.rfkill* %33, %struct.rfkill** %7, align 8
  %34 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %35 = icmp ne %struct.rfkill* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %94

39:                                               ; preds = %25
  %40 = load i32, i32* @sony_rfkill_handle, align 4
  %41 = call i32 @sony_call_snc_handle(i32 %40, i32 512, i32* %10)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %46 = call i32 @rfkill_destroy(%struct.rfkill* %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %94

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* @sony_rfkill_handle, align 4
  %55 = load i32*, i32** @sony_rfkill_address, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sony_call_snc_handle(i32 %54, i32 %59, i32* %10)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %65 = call i32 @rfkill_destroy(%struct.rfkill* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %94

67:                                               ; preds = %48
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @rfkill_init_sw_state(%struct.rfkill* %73, i32 %74)
  %76 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @rfkill_set_hw_state(%struct.rfkill* %76, i32 %77)
  %79 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %80 = call i32 @rfkill_register(%struct.rfkill* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %67
  %84 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %85 = call i32 @rfkill_destroy(%struct.rfkill* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %94

87:                                               ; preds = %67
  %88 = load %struct.rfkill*, %struct.rfkill** %7, align 8
  %89 = load %struct.rfkill**, %struct.rfkill*** @sony_rfkill_devices, align 8
  %90 = load i32, i32* %5, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.rfkill*, %struct.rfkill** %89, i64 %91
  store %struct.rfkill* %88, %struct.rfkill** %92, align 8
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %87, %83, %63, %44, %36, %22
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.rfkill* @rfkill_alloc(i8*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @sony_call_snc_handle(i32, i32, i32*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

declare dso_local i32 @rfkill_init_sw_state(%struct.rfkill*, i32) #1

declare dso_local i32 @rfkill_set_hw_state(%struct.rfkill*, i32) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
