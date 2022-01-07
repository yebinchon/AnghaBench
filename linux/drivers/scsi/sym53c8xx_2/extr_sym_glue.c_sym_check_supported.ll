; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_check_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_check_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.sym_device = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32, i32 }
%struct.sym_chip = type { i32 }

@sym_driver_setup = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"device not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_device*)* @sym_check_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_check_supported(%struct.sym_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sym_device*, align 8
  %4 = alloca %struct.sym_chip*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sym_device* %0, %struct.sym_device** %3, align 8
  %8 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %9 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %8, i32 0, i32 1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call i64 @pci_resource_start(%struct.pci_dev* %11, i32 0)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sym_driver_setup, i32 0, i32 0), align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %16

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.sym_chip* @sym_lookup_chip_table(i32 %38, i32 %41)
  store %struct.sym_chip* %42, %struct.sym_chip** %4, align 8
  %43 = load %struct.sym_chip*, %struct.sym_chip** %4, align 8
  %44 = icmp ne %struct.sym_chip* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %35
  %52 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %53 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %52, i32 0, i32 0
  %54 = load %struct.sym_chip*, %struct.sym_chip** %4, align 8
  %55 = call i32 @memcpy(i32* %53, %struct.sym_chip* %54, i32 4)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %45, %27
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local %struct.sym_chip* @sym_lookup_chip_table(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.sym_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
