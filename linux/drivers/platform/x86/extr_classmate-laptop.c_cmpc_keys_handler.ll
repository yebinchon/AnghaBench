; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_keys_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_keys_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.input_dev = type { i32 }

@KEY_MAX = common dso_local global i32 0, align 4
@cmpc_keys_codes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @cmpc_keys_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmpc_keys_handler(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @KEY_MAX, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 15
  %10 = load i32*, i32** @cmpc_keys_codes, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32*, i32** @cmpc_keys_codes, align 8
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 0
  %23 = call %struct.input_dev* @dev_get_drvdata(i32* %22)
  store %struct.input_dev* %23, %struct.input_dev** %5, align 8
  %24 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 16
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @input_report_key(%struct.input_dev* %24, i32 %25, i32 %30)
  %32 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %33 = call i32 @input_sync(%struct.input_dev* %32)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.input_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
