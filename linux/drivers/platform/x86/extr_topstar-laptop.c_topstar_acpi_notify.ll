; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_topstar-laptop.c_topstar_acpi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_topstar-laptop.c_topstar_acpi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.topstar_laptop = type { i32 }

@topstar_acpi_notify.dup_evnt = internal global [2 x i32] zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @topstar_acpi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @topstar_acpi_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.topstar_laptop*, align 8
  %6 = alloca i32*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = call %struct.topstar_laptop* @acpi_driver_data(%struct.acpi_device* %7)
  store %struct.topstar_laptop* %8, %struct.topstar_laptop** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 131
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 132
  br i1 %13, label %14, label %26

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 131
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* @topstar_acpi_notify.dup_evnt, i64 0, i64 %17
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32*, i32** %6, align 8
  store i32 0, i32* %23, align 4
  br label %30

24:                                               ; preds = %14
  %25 = load i32*, i32** %6, align 8
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = load %struct.topstar_laptop*, %struct.topstar_laptop** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @topstar_input_notify(%struct.topstar_laptop* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  ret void
}

declare dso_local %struct.topstar_laptop* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @topstar_input_notify(%struct.topstar_laptop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
