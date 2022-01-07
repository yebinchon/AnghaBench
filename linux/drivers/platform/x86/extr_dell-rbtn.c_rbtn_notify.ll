; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-rbtn.c_rbtn_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-rbtn.c_rbtn_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.rbtn_data* }
%struct.rbtn_data = type { i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"ACPI notification ignored\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Received unknown event (0x%x)\0A\00", align 1
@rbtn_chain_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @rbtn_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbtn_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rbtn_data*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 1
  %8 = load %struct.rbtn_data*, %struct.rbtn_data** %7, align 8
  store %struct.rbtn_data* %8, %struct.rbtn_data** %5, align 8
  %9 = load %struct.rbtn_data*, %struct.rbtn_data** %5, align 8
  %10 = getelementptr inbounds %struct.rbtn_data, %struct.rbtn_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %39

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 128
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_info(i32* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %39

25:                                               ; preds = %17
  %26 = load %struct.rbtn_data*, %struct.rbtn_data** %5, align 8
  %27 = getelementptr inbounds %struct.rbtn_data, %struct.rbtn_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %38 [
    i32 128, label %29
    i32 129, label %32
  ]

29:                                               ; preds = %25
  %30 = load %struct.rbtn_data*, %struct.rbtn_data** %5, align 8
  %31 = call i32 @rbtn_input_event(%struct.rbtn_data* %30)
  br label %39

32:                                               ; preds = %25
  %33 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %34 = call i32 @rbtn_rfkill_event(%struct.acpi_device* %33)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %37 = call i32 @atomic_notifier_call_chain(i32* @rbtn_chain_head, i32 %35, %struct.acpi_device* %36)
  br label %39

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %13, %20, %38, %32, %29
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @rbtn_input_event(%struct.rbtn_data*) #1

declare dso_local i32 @rbtn_rfkill_event(%struct.acpi_device*) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
