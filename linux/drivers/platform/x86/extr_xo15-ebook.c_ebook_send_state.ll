; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_xo15-ebook.c_ebook_send_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_xo15-ebook.c_ebook_send_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.ebook_switch = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"EBK\00", align 1
@EIO = common dso_local global i32 0, align 4
@SW_TABLET_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @ebook_send_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebook_send_state(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.ebook_switch*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = call %struct.ebook_switch* @acpi_driver_data(%struct.acpi_device* %7)
  store %struct.ebook_switch* %8, %struct.ebook_switch** %4, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @acpi_evaluate_integer(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i64* %5)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.ebook_switch*, %struct.ebook_switch** %4, align 8
  %21 = getelementptr inbounds %struct.ebook_switch, %struct.ebook_switch* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SW_TABLET_MODE, align 4
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @input_report_switch(i32 %22, i32 %23, i32 %27)
  %29 = load %struct.ebook_switch*, %struct.ebook_switch** %4, align 8
  %30 = getelementptr inbounds %struct.ebook_switch, %struct.ebook_switch* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @input_sync(i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %19, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.ebook_switch* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
