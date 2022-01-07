; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_setup_wwan_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_setup_wwan_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_acpi_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Toshiba WWAN\00", align 1
@RFKILL_TYPE_WWAN = common dso_local global i32 0, align 4
@wwan_rfk_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to allocate WWAN rfkill device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to register WWAN rfkill device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.toshiba_acpi_dev*)* @toshiba_acpi_setup_wwan_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_acpi_setup_wwan_rfkill(%struct.toshiba_acpi_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.toshiba_acpi_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.toshiba_acpi_dev* %0, %struct.toshiba_acpi_dev** %3, align 8
  %5 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %6 = call i32 @toshiba_wireless_status(%struct.toshiba_acpi_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %54

11:                                               ; preds = %1
  %12 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %13 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* @RFKILL_TYPE_WWAN, align 4
  %17 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %18 = call i32 @rfkill_alloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %15, i32 %16, i32* @wwan_rfk_ops, %struct.toshiba_acpi_dev* %17)
  %19 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %20 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %22 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %11
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %54

29:                                               ; preds = %11
  %30 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %31 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %34 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @rfkill_set_hw_state(i32 %32, i32 %38)
  %40 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %41 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @rfkill_register(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %29
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %3, align 8
  %49 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @rfkill_destroy(i32 %50)
  br label %52

52:                                               ; preds = %46, %29
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %25, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @toshiba_wireless_status(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @rfkill_alloc(i8*, i32*, i32, i32*, %struct.toshiba_acpi_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rfkill_set_hw_state(i32, i32) #1

declare dso_local i32 @rfkill_register(i32) #1

declare dso_local i32 @rfkill_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
