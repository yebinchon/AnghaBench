; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c___ipr_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c___ipr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ipr_ioa_cfg = type { i32, i64, %struct.TYPE_4__*, i32, i32, i64, i32, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32 }

@ENTER = common dso_local global i32 0, align 4
@IPR_SHUTDOWN_NORMAL = common dso_local global i32 0, align 4
@ipr_driver_lock = common dso_local global i32 0, align 4
@ABORT_DUMP = common dso_local global i64 0, align 8
@WAIT_FOR_DUMP = common dso_local global i64 0, align 8
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @__ipr_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipr_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.ipr_ioa_cfg* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.ipr_ioa_cfg* %8, %struct.ipr_ioa_cfg** %4, align 8
  %9 = load i32, i32* @ENTER, align 4
  %10 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %11 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  br label %17

17:                                               ; preds = %22, %1
  %18 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %34 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @wait_event(i32 %32, i32 %38)
  %40 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %41 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  br label %17

47:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %78, %47
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %51 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %48
  %55 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %56 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %55, i32 0, i32 9
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %64 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %63, i32 0, i32 9
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %71 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %70, i32 0, i32 9
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  br label %78

78:                                               ; preds = %54
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %48

81:                                               ; preds = %48
  %82 = call i32 (...) @wmb()
  %83 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %84 = load i32, i32* @IPR_SHUTDOWN_NORMAL, align 4
  %85 = call i32 @ipr_initiate_ioa_bringdown(%struct.ipr_ioa_cfg* %83, i32 %84)
  %86 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %87 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %3, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %94 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %97 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @wait_event(i32 %95, i32 %101)
  %103 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %104 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %103, i32 0, i32 6
  %105 = call i32 @flush_work(i32* %104)
  %106 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %107 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %81
  %111 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %112 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @flush_workqueue(i64 %113)
  br label %115

115:                                              ; preds = %110, %81
  %116 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %117 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %116, i32 0, i32 4
  %118 = call i32 @INIT_LIST_HEAD(i32* %117)
  %119 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %120 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %3, align 8
  %125 = call i32 @spin_lock_irqsave(i32* %123, i64 %124)
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @spin_lock_irqsave(i32* @ipr_driver_lock, i64 %126)
  %128 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %129 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %128, i32 0, i32 3
  %130 = call i32 @list_del(i32* %129)
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* @ipr_driver_lock, i64 %131)
  %133 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %134 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ABORT_DUMP, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %115
  %139 = load i64, i64* @WAIT_FOR_DUMP, align 8
  %140 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %141 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %138, %115
  %143 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %144 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %3, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  %150 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %151 = call i32 @ipr_free_all_resources(%struct.ipr_ioa_cfg* %150)
  %152 = load i32, i32* @LEAVE, align 4
  ret void
}

declare dso_local %struct.ipr_ioa_cfg* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ipr_initiate_ioa_bringdown(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ipr_free_all_resources(%struct.ipr_ioa_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
