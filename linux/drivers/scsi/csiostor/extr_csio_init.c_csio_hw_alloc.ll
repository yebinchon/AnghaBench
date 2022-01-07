; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_hw_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_hw_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CSIO_DRV_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not map BAR 0, regstart = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"hw:%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.csio_hw* (%struct.pci_dev*)* @csio_hw_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.csio_hw* @csio_hw_alloc(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.csio_hw*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.csio_hw* @kzalloc(i32 16, i32 %5)
  store %struct.csio_hw* %6, %struct.csio_hw** %4, align 8
  %7 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %8 = icmp ne %struct.csio_hw* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %68

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %13 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %12, i32 0, i32 2
  store %struct.pci_dev* %11, %struct.pci_dev** %13, align 8
  %14 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %15 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CSIO_DRV_VERSION, align 4
  %18 = call i32 @strncpy(i32 %16, i32 %17, i32 32)
  %19 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %20 = call i64 @csio_resource_alloc(%struct.csio_hw* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %65

23:                                               ; preds = %10
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_resource_start(%struct.pci_dev* %24, i32 0)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = call i32 @pci_resource_len(%struct.pci_dev* %26, i32 0)
  %28 = call i32 @ioremap_nocache(i32 %25, i32 %27)
  %29 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %30 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %32 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %23
  %36 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %37 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %38 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @csio_err(%struct.csio_hw* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %62

41:                                               ; preds = %23
  %42 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %43 = call i32 @csio_hw_init_workers(%struct.csio_hw* %42)
  %44 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %45 = call i64 @csio_hw_init(%struct.csio_hw* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %55

48:                                               ; preds = %41
  %49 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %50 = call i32 @csio_dfs_create(%struct.csio_hw* %49)
  %51 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %52 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %53 = call i32 @csio_dbg(%struct.csio_hw* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.csio_hw* %52)
  %54 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  store %struct.csio_hw* %54, %struct.csio_hw** %2, align 8
  br label %69

55:                                               ; preds = %47
  %56 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %57 = call i32 @csio_hw_exit_workers(%struct.csio_hw* %56)
  %58 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %59 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @iounmap(i32 %60)
  br label %62

62:                                               ; preds = %55, %35
  %63 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %64 = call i32 @csio_resource_free(%struct.csio_hw* %63)
  br label %65

65:                                               ; preds = %62, %22
  %66 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %67 = call i32 @kfree(%struct.csio_hw* %66)
  br label %68

68:                                               ; preds = %65, %9
  store %struct.csio_hw* null, %struct.csio_hw** %2, align 8
  br label %69

69:                                               ; preds = %68, %48
  %70 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  ret %struct.csio_hw* %70
}

declare dso_local %struct.csio_hw* @kzalloc(i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i64 @csio_resource_alloc(%struct.csio_hw*) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i32) #1

declare dso_local i32 @csio_hw_init_workers(%struct.csio_hw*) #1

declare dso_local i64 @csio_hw_init(%struct.csio_hw*) #1

declare dso_local i32 @csio_dfs_create(%struct.csio_hw*) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, %struct.csio_hw*) #1

declare dso_local i32 @csio_hw_exit_workers(%struct.csio_hw*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @csio_resource_free(%struct.csio_hw*) #1

declare dso_local i32 @kfree(%struct.csio_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
