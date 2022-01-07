; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_find_source_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer.c_find_source_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.aer_err_info = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"can't find device of ID%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.aer_err_info*)* @find_source_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_source_device(%struct.pci_dev* %0, %struct.aer_err_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.aer_err_info*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.aer_err_info* %1, %struct.aer_err_info** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %6, align 8
  %9 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %10 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %13 = call i32 @find_device_iter(%struct.pci_dev* %11, %struct.aer_err_info* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %22 = call i32 @pci_walk_bus(i32 %20, i32 (%struct.pci_dev*, %struct.aer_err_info*)* @find_device_iter, %struct.aer_err_info* %21)
  %23 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %24 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load %struct.aer_err_info*, %struct.aer_err_info** %5, align 8
  %30 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pci_info(%struct.pci_dev* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %3, align 4
  br label %34

33:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %27, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @find_device_iter(%struct.pci_dev*, %struct.aer_err_info*) #1

declare dso_local i32 @pci_walk_bus(i32, i32 (%struct.pci_dev*, %struct.aer_err_info*)*, %struct.aer_err_info*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
