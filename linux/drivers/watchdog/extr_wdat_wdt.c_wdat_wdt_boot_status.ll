; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdat_wdt.c_wdat_wdt_boot_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdat_wdt.c_wdat_wdt_boot_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wdat_wdt = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ACPI_WDAT_GET_STATUS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to read boot status\0A\00", align 1
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@ACPI_WDAT_SET_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to clear boot status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wdat_wdt*)* @wdat_wdt_boot_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdat_wdt_boot_status(%struct.wdat_wdt* %0) #0 {
  %2 = alloca %struct.wdat_wdt*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.wdat_wdt* %0, %struct.wdat_wdt** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.wdat_wdt*, %struct.wdat_wdt** %2, align 8
  %6 = load i32, i32* @ACPI_WDAT_GET_STATUS, align 4
  %7 = call i32 @wdat_wdt_run_action(%struct.wdat_wdt* %5, i32 %6, i32 0, i64* %3)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.wdat_wdt*, %struct.wdat_wdt** %2, align 8
  %17 = getelementptr inbounds %struct.wdat_wdt, %struct.wdat_wdt* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %46

21:                                               ; preds = %10, %1
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @WDIOF_CARDRESET, align 4
  %26 = load %struct.wdat_wdt*, %struct.wdat_wdt** %2, align 8
  %27 = getelementptr inbounds %struct.wdat_wdt, %struct.wdat_wdt* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.wdat_wdt*, %struct.wdat_wdt** %2, align 8
  %31 = load i32, i32* @ACPI_WDAT_SET_STATUS, align 4
  %32 = call i32 @wdat_wdt_run_action(%struct.wdat_wdt* %30, i32 %31, i32 0, i64* null)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.wdat_wdt*, %struct.wdat_wdt** %2, align 8
  %42 = getelementptr inbounds %struct.wdat_wdt, %struct.wdat_wdt* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %15, %40, %35, %29
  ret void
}

declare dso_local i32 @wdat_wdt_run_action(%struct.wdat_wdt*, i32, i32, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
