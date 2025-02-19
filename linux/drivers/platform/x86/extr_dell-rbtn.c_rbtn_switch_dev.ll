; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-rbtn.c_rbtn_switch_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-rbtn.c_rbtn_switch_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_device = type { %struct.rbtn_data* }
%struct.rbtn_data = type { i64 }

@RBTN_SLIDER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @rbtn_switch_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbtn_switch_dev(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.rbtn_data*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.acpi_device* @to_acpi_device(%struct.device* %9)
  store %struct.acpi_device* %10, %struct.acpi_device** %6, align 8
  %11 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %12 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 0
  %13 = load %struct.rbtn_data*, %struct.rbtn_data** %12, align 8
  store %struct.rbtn_data* %13, %struct.rbtn_data** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.rbtn_data*, %struct.rbtn_data** %7, align 8
  %17 = getelementptr inbounds %struct.rbtn_data, %struct.rbtn_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RBTN_SLIDER, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %27 = call i32 @rbtn_rfkill_init(%struct.acpi_device* %26)
  br label %31

28:                                               ; preds = %22
  %29 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %30 = call i32 @rbtn_rfkill_exit(%struct.acpi_device* %29)
  br label %31

31:                                               ; preds = %28, %25
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local i32 @rbtn_rfkill_init(%struct.acpi_device*) #1

declare dso_local i32 @rbtn_rfkill_exit(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
