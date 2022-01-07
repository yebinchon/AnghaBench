; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_pci_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_init.c_csio_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.csio_hw = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.csio_lnode = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"resume of device failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @csio_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_pci_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_lnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.csio_hw* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.csio_hw* %8, %struct.csio_hw** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %55, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %12 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %9
  %16 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call %struct.csio_lnode* @csio_shost_init(%struct.csio_hw* %16, i32* %18, i32 1, i32* null)
  store %struct.csio_lnode* %19, %struct.csio_lnode** %4, align 8
  %20 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %21 = icmp ne %struct.csio_lnode* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %58

25:                                               ; preds = %15
  %26 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %27 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %35 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %37 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %36, i32 0, i32 1
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %40 = call i64 @csio_lnode_start(%struct.csio_lnode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %25
  %46 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %47 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %58

52:                                               ; preds = %45
  %53 = load %struct.csio_lnode*, %struct.csio_lnode** %4, align 8
  %54 = call i32 @csio_lnode_init_post(%struct.csio_lnode* %53)
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %9

58:                                               ; preds = %51, %22, %9
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %63

62:                                               ; preds = %58
  br label %84

63:                                               ; preds = %61
  %64 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %65 = call i32 @csio_lnodes_block_request(%struct.csio_hw* %64)
  %66 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %67 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %66, i32 0, i32 1
  %68 = call i32 @spin_lock_irq(i32* %67)
  %69 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %70 = call i32 @csio_hw_stop(%struct.csio_hw* %69)
  %71 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %72 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock_irq(i32* %72)
  %74 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %75 = call i32 @csio_lnodes_unblock_request(%struct.csio_hw* %74)
  %76 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %77 = call i32 @csio_lnodes_exit(%struct.csio_hw* %76, i32 0)
  %78 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %79 = call i32 @csio_hw_free(%struct.csio_hw* %78)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %63, %62
  ret void
}

declare dso_local %struct.csio_hw* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.csio_lnode* @csio_shost_init(%struct.csio_hw*, i32*, i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @csio_lnode_start(%struct.csio_lnode*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_lnode_init_post(%struct.csio_lnode*) #1

declare dso_local i32 @csio_lnodes_block_request(%struct.csio_hw*) #1

declare dso_local i32 @csio_hw_stop(%struct.csio_hw*) #1

declare dso_local i32 @csio_lnodes_unblock_request(%struct.csio_hw*) #1

declare dso_local i32 @csio_lnodes_exit(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_hw_free(%struct.csio_hw*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
