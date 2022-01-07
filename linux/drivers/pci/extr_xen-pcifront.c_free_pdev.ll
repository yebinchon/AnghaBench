; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_free_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_xen-pcifront.c_free_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcifront_device = type { i64, i64, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"freeing pdev @ 0x%p\0A\00", align 1
@INVALID_EVTCHN = common dso_local global i64 0, align 8
@INVALID_GRANT_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcifront_device*)* @free_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pdev(%struct.pcifront_device* %0) #0 {
  %2 = alloca %struct.pcifront_device*, align 8
  store %struct.pcifront_device* %0, %struct.pcifront_device** %2, align 8
  %3 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %4 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %3, i32 0, i32 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %8 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.pcifront_device* %7)
  %9 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %10 = call i32 @pcifront_free_roots(%struct.pcifront_device* %9)
  %11 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %12 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %11, i32 0, i32 5
  %13 = call i32 @cancel_work_sync(i32* %12)
  %14 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %15 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %20 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %23 = call i32 @unbind_from_irqhandler(i64 %21, %struct.pcifront_device* %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %26 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @INVALID_EVTCHN, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %32 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %35 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @xenbus_free_evtchn(%struct.TYPE_2__* %33, i64 %36)
  br label %38

38:                                               ; preds = %30, %24
  %39 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %40 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @INVALID_GRANT_REF, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %46 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %49 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @gnttab_end_foreign_access(i64 %47, i32 0, i64 %50)
  br label %57

52:                                               ; preds = %38
  %53 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %54 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @free_page(i64 %55)
  br label %57

57:                                               ; preds = %52, %44
  %58 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %59 = getelementptr inbounds %struct.pcifront_device, %struct.pcifront_device* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @dev_set_drvdata(i32* %61, i32* null)
  %63 = load %struct.pcifront_device*, %struct.pcifront_device** %2, align 8
  %64 = call i32 @kfree(%struct.pcifront_device* %63)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.pcifront_device*) #1

declare dso_local i32 @pcifront_free_roots(%struct.pcifront_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @unbind_from_irqhandler(i64, %struct.pcifront_device*) #1

declare dso_local i32 @xenbus_free_evtchn(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @gnttab_end_foreign_access(i64, i32, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.pcifront_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
