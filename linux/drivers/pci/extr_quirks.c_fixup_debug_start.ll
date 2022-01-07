; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_fixup_debug_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_fixup_debug_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@initcall_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"calling  %pS @ %i\0A\00", align 1
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, void (%struct.pci_dev*)*)* @fixup_debug_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_debug_start(%struct.pci_dev* %0, void (%struct.pci_dev*)* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca void (%struct.pci_dev*)*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store void (%struct.pci_dev*)* %1, void (%struct.pci_dev*)** %4, align 8
  %5 = load i64, i64* @initcall_debug, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = load void (%struct.pci_dev*)*, void (%struct.pci_dev*)** %4, align 8
  %10 = load i32, i32* @current, align 4
  %11 = call i32 @task_pid_nr(i32 %10)
  %12 = call i32 @pci_info(%struct.pci_dev* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), void (%struct.pci_dev*)* %9, i32 %11)
  br label %13

13:                                               ; preds = %7, %2
  %14 = call i32 (...) @ktime_get()
  ret i32 %14
}

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, void (%struct.pci_dev*)*, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
