; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-driver.c_local_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-driver.c_local_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drv_dev_and_id = type { i32, %struct.pci_driver*, %struct.pci_dev.0* }
%struct.pci_driver = type { i32 (%struct.pci_dev*, i32)* }
%struct.pci_dev = type opaque
%struct.pci_dev.0 = type { %struct.pci_driver*, %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Driver probe function unexpectedly returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @local_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @local_pci_probe(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drv_dev_and_id*, align 8
  %5 = alloca %struct.pci_dev.0*, align 8
  %6 = alloca %struct.pci_driver*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.drv_dev_and_id*
  store %struct.drv_dev_and_id* %10, %struct.drv_dev_and_id** %4, align 8
  %11 = load %struct.drv_dev_and_id*, %struct.drv_dev_and_id** %4, align 8
  %12 = getelementptr inbounds %struct.drv_dev_and_id, %struct.drv_dev_and_id* %11, i32 0, i32 2
  %13 = load %struct.pci_dev.0*, %struct.pci_dev.0** %12, align 8
  store %struct.pci_dev.0* %13, %struct.pci_dev.0** %5, align 8
  %14 = load %struct.drv_dev_and_id*, %struct.drv_dev_and_id** %4, align 8
  %15 = getelementptr inbounds %struct.drv_dev_and_id, %struct.drv_dev_and_id* %14, i32 0, i32 1
  %16 = load %struct.pci_driver*, %struct.pci_driver** %15, align 8
  store %struct.pci_driver* %16, %struct.pci_driver** %6, align 8
  %17 = load %struct.pci_dev.0*, %struct.pci_dev.0** %5, align 8
  %18 = getelementptr inbounds %struct.pci_dev.0, %struct.pci_dev.0* %17, i32 0, i32 1
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = call i32 @pm_runtime_get_sync(%struct.device* %19)
  %21 = load %struct.pci_driver*, %struct.pci_driver** %6, align 8
  %22 = load %struct.pci_dev.0*, %struct.pci_dev.0** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev.0, %struct.pci_dev.0* %22, i32 0, i32 0
  store %struct.pci_driver* %21, %struct.pci_driver** %23, align 8
  %24 = load %struct.pci_driver*, %struct.pci_driver** %6, align 8
  %25 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %24, i32 0, i32 0
  %26 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %25, align 8
  %27 = load %struct.pci_dev.0*, %struct.pci_dev.0** %5, align 8
  %28 = bitcast %struct.pci_dev.0* %27 to %struct.pci_dev*
  %29 = load %struct.drv_dev_and_id*, %struct.drv_dev_and_id** %4, align 8
  %30 = getelementptr inbounds %struct.drv_dev_and_id, %struct.drv_dev_and_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %26(%struct.pci_dev* %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %2, align 8
  br label %52

38:                                               ; preds = %1
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.pci_dev.0*, %struct.pci_dev.0** %5, align 8
  %43 = getelementptr inbounds %struct.pci_dev.0, %struct.pci_dev.0* %42, i32 0, i32 0
  store %struct.pci_driver* null, %struct.pci_driver** %43, align 8
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = call i32 @pm_runtime_put_sync(%struct.device* %44)
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %2, align 8
  br label %52

48:                                               ; preds = %38
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_warn(%struct.device* %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i64 0, i64* %2, align 8
  br label %52

52:                                               ; preds = %48, %41, %35
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
