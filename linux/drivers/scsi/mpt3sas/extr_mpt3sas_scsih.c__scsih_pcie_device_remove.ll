; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_pcie_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_pcie_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct._pcie_device = type { i8*, i64, i8*, i8*, i8*, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [42 x i8] c"removing handle(0x%04x), wwid(0x%016llx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"removing enclosure logical id(0x%016llx), slot(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"removing enclosure level(0x%04x), connector name( %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct._pcie_device*)* @_scsih_pcie_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_pcie_device_remove(%struct.MPT3SAS_ADAPTER* %0, %struct._pcie_device* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct._pcie_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct._pcie_device* %1, %struct._pcie_device** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %8 = icmp ne %struct._pcie_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %78

10:                                               ; preds = %2
  %11 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %12 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %13 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %16 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %18)
  %20 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %21 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %10
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %26 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %27 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %31 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %32)
  br label %34

34:                                               ; preds = %24, %10
  %35 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %36 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %44 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %45 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %48 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %43, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %46, i8* %49)
  br label %51

51:                                               ; preds = %42, %34
  %52 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %53 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %52, i32 0, i32 0
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %57 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %56, i32 0, i32 6
  %58 = call i32 @list_empty(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %51
  %61 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %62 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %61, i32 0, i32 6
  %63 = call i32 @list_del_init(i32* %62)
  store i32 1, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %51
  %65 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %66 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %65, i32 0, i32 0
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %73 = getelementptr inbounds %struct._pcie_device, %struct._pcie_device* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @kfree(i32 %74)
  %76 = load %struct._pcie_device*, %struct._pcie_device** %4, align 8
  %77 = call i32 @pcie_device_put(%struct._pcie_device* %76)
  br label %78

78:                                               ; preds = %9, %71, %64
  ret void
}

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*, i8*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pcie_device_put(%struct._pcie_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
