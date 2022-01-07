; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_process_hotkeys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_process_hotkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_acpi_dev = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to query hotkey event\0A\00", align 1
@HCI_SYSTEM_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Re-enabled hotkeys\0A\00", align 1
@TOS_FIFO_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.toshiba_acpi_dev*)* @toshiba_acpi_process_hotkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshiba_acpi_process_hotkeys(%struct.toshiba_acpi_dev* %0) #0 {
  %2 = alloca %struct.toshiba_acpi_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.toshiba_acpi_dev* %0, %struct.toshiba_acpi_dev** %2, align 8
  %7 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %8 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %13 = call i32 @toshiba_acpi_query_hotkey(%struct.toshiba_acpi_dev* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %31

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @toshiba_acpi_report_hotkey(%struct.toshiba_acpi_dev* %22, i32 %23)
  %25 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %26 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %29 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %21, %18
  br label %31

31:                                               ; preds = %30, %16
  br label %76

32:                                               ; preds = %1
  %33 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %34 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %32
  store i32 3, i32* %6, align 4
  br label %38

38:                                               ; preds = %72, %37
  %39 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %40 = load i32, i32* @HCI_SYSTEM_EVENT, align 4
  %41 = call i32 @hci_read(%struct.toshiba_acpi_dev* %39, i32 %40, i32* %5)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  switch i32 %42, label %61 [
    i32 128, label %43
    i32 129, label %52
  ]

43:                                               ; preds = %38
  %44 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @toshiba_acpi_report_hotkey(%struct.toshiba_acpi_dev* %44, i32 %45)
  %47 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %48 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %51 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %64

52:                                               ; preds = %38
  %53 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %2, align 8
  %54 = load i32, i32* @HCI_SYSTEM_EVENT, align 4
  %55 = call i32 @hci_write(%struct.toshiba_acpi_dev* %53, i32 %54, i32 1)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 128
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @pr_notice(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %52
  br label %61

61:                                               ; preds = %38, %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %43
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @TOS_FIFO_EMPTY, align 4
  %71 = icmp ne i32 %69, %70
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i1 [ false, %65 ], [ %71, %68 ]
  br i1 %73, label %38, label %74

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74, %32
  br label %76

76:                                               ; preds = %75, %31
  ret void
}

declare dso_local i32 @toshiba_acpi_query_hotkey(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @toshiba_acpi_report_hotkey(%struct.toshiba_acpi_dev*, i32) #1

declare dso_local i32 @hci_read(%struct.toshiba_acpi_dev*, i32, i32*) #1

declare dso_local i32 @hci_write(%struct.toshiba_acpi_dev*, i32, i32) #1

declare dso_local i32 @pr_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
