; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp_accel.c_hpled_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp_accel.c_hpled_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%struct.delayed_led_classdev = type { i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@lis3_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ALED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.delayed_led_classdev*, i32)* @hpled_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpled_set(%struct.delayed_led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.delayed_led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [1 x %union.acpi_object], align 4
  %8 = alloca %struct.acpi_object_list, align 8
  store %struct.delayed_led_classdev* %0, %struct.delayed_led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.acpi_device*, %struct.acpi_device** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lis3_dev, i32 0, i32 0), align 8
  store %struct.acpi_device* %9, %struct.acpi_device** %5, align 8
  %10 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 1
  %12 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %7, i64 0, i64 0
  store %union.acpi_object* %12, %union.acpi_object** %11, align 8
  %13 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %14 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %7, i64 0, i64 0
  %15 = bitcast %union.acpi_object* %14 to i32*
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %7, i64 0, i64 0
  %22 = bitcast %union.acpi_object* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @acpi_evaluate_integer(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %8, i64* %6)
  ret void
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
