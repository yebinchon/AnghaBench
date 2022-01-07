; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_pci_perm_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_pci_perm_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ipr_ioa_cfg = type { i64, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@WAIT_FOR_DUMP = common dso_local global i64 0, align 8
@ABORT_DUMP = common dso_local global i64 0, align 8
@IPR_NUM_RESET_RELOAD_RETRIES = common dso_local global i64 0, align 8
@IPR_SHUTDOWN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ipr_pci_perm_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_pci_perm_failure(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.ipr_ioa_cfg* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.ipr_ioa_cfg* %7, %struct.ipr_ioa_cfg** %4, align 8
  %8 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %9 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %1
  %20 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WAIT_FOR_DUMP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i64, i64* @ABORT_DUMP, align 8
  %27 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %28 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i64, i64* @IPR_NUM_RESET_RELOAD_RETRIES, align 8
  %31 = sub nsw i64 %30, 1
  %32 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %33 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %32, i32 0, i32 6
  store i64 %31, i64* %33, align 8
  %34 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %35 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %66, %29
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %39 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %36
  %43 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %44 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %43, i32 0, i32 5
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %52 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %51, i32 0, i32 5
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %59 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %58, i32 0, i32 5
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  br label %66

66:                                               ; preds = %42
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %36

69:                                               ; preds = %36
  %70 = call i32 (...) @wmb()
  %71 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %72 = load i32, i32* @IPR_SHUTDOWN_NONE, align 4
  %73 = call i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %71, i32 %72)
  br label %78

74:                                               ; preds = %1
  %75 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %76 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %75, i32 0, i32 4
  %77 = call i32 @wake_up_all(i32* %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %80 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %3, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32 %83, i64 %84)
  ret void
}

declare dso_local %struct.ipr_ioa_cfg* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
