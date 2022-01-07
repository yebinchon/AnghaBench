; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_pci_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_pci_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.gasket_internal_desc = type { %struct.TYPE_2__*, i32, %struct.gasket_dev** }
%struct.TYPE_2__ = type { i32 }
%struct.gasket_dev = type { i32, %struct.pci_dev* }

@g_mutex = common dso_local global i32 0, align 4
@GASKET_DEV_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"remove %s PCI gasket device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gasket_pci_remove_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gasket_internal_desc*, align 8
  %5 = alloca %struct.gasket_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store %struct.gasket_dev* null, %struct.gasket_dev** %5, align 8
  %6 = call i32 @mutex_lock(i32* @g_mutex)
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.gasket_internal_desc* @lookup_pci_internal_desc(%struct.pci_dev* %7)
  store %struct.gasket_internal_desc* %8, %struct.gasket_internal_desc** %4, align 8
  %9 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %10 = icmp ne %struct.gasket_internal_desc* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @mutex_unlock(i32* @g_mutex)
  br label %77

13:                                               ; preds = %1
  %14 = call i32 @mutex_unlock(i32* @g_mutex)
  %15 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %16 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %52, %13
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @GASKET_DEV_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %24 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %23, i32 0, i32 2
  %25 = load %struct.gasket_dev**, %struct.gasket_dev*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.gasket_dev*, %struct.gasket_dev** %25, i64 %27
  %29 = load %struct.gasket_dev*, %struct.gasket_dev** %28, align 8
  %30 = icmp ne %struct.gasket_dev* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %22
  %32 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %33 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %32, i32 0, i32 2
  %34 = load %struct.gasket_dev**, %struct.gasket_dev*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.gasket_dev*, %struct.gasket_dev** %34, i64 %36
  %38 = load %struct.gasket_dev*, %struct.gasket_dev** %37, align 8
  %39 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %38, i32 0, i32 1
  %40 = load %struct.pci_dev*, %struct.pci_dev** %39, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = icmp eq %struct.pci_dev* %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %31
  %44 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %45 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %44, i32 0, i32 2
  %46 = load %struct.gasket_dev**, %struct.gasket_dev*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.gasket_dev*, %struct.gasket_dev** %46, i64 %48
  %50 = load %struct.gasket_dev*, %struct.gasket_dev** %49, align 8
  store %struct.gasket_dev* %50, %struct.gasket_dev** %5, align 8
  br label %55

51:                                               ; preds = %31, %22
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %18

55:                                               ; preds = %43, %18
  %56 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %57 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %60 = icmp ne %struct.gasket_dev* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %77

62:                                               ; preds = %55
  %63 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %64 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %67 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_dbg(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %73 = call i32 @gasket_cleanup_pci(%struct.gasket_dev* %72)
  %74 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %4, align 8
  %75 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %76 = call i32 @__gasket_remove_device(%struct.gasket_internal_desc* %74, %struct.gasket_dev* %75)
  br label %77

77:                                               ; preds = %62, %61, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gasket_internal_desc* @lookup_pci_internal_desc(%struct.pci_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @gasket_cleanup_pci(%struct.gasket_dev*) #1

declare dso_local i32 @__gasket_remove_device(%struct.gasket_internal_desc*, %struct.gasket_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
