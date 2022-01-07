; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { i32, i32, i32*, i32*, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.myrs_privdata = type { i32, i64 (%struct.pci_dev*, %struct.myrs_hba.0*, i32*)*, i32 }
%struct.myrs_hba.0 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"Unable to allocate Controller\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to map Controller Register Window\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"myrs\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Unable to acquire IRQ Channel %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to initialize Controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.myrs_hba* (%struct.pci_dev*, %struct.pci_device_id*)* @myrs_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.myrs_hba* @myrs_detect(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.myrs_hba*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.myrs_privdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.myrs_hba*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.myrs_privdata*
  store %struct.myrs_privdata* %13, %struct.myrs_privdata** %6, align 8
  %14 = load %struct.myrs_privdata*, %struct.myrs_privdata** %6, align 8
  %15 = getelementptr inbounds %struct.myrs_privdata, %struct.myrs_privdata* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.myrs_privdata*, %struct.myrs_privdata** %6, align 8
  %18 = getelementptr inbounds %struct.myrs_privdata, %struct.myrs_privdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  store %struct.myrs_hba* null, %struct.myrs_hba** %9, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %22 = call %struct.myrs_hba* @myrs_alloc_host(%struct.pci_dev* %20, %struct.pci_device_id* %21)
  store %struct.myrs_hba* %22, %struct.myrs_hba** %9, align 8
  %23 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %24 = icmp ne %struct.myrs_hba* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.myrs_hba* null, %struct.myrs_hba** %3, align 8
  br label %126

29:                                               ; preds = %2
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %32 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %31, i32 0, i32 5
  store %struct.pci_dev* %30, %struct.pci_dev** %32, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i64 @pci_enable_device(%struct.pci_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %120

37:                                               ; preds = %29
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call i32 @pci_resource_start(%struct.pci_dev* %38, i32 0)
  %40 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %41 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %44 = call i32 @pci_set_drvdata(%struct.pci_dev* %42, %struct.myrs_hba* %43)
  %45 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %46 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %45, i32 0, i32 4
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %37
  %54 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %55 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PAGE_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = call i32* @ioremap_nocache(i32 %58, i32 %59)
  %61 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %62 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  %63 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %64 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %120

71:                                               ; preds = %53
  %72 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %73 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %76 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PAGE_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %74, i64 %81
  %83 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %84 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  %85 = load %struct.myrs_privdata*, %struct.myrs_privdata** %6, align 8
  %86 = getelementptr inbounds %struct.myrs_privdata, %struct.myrs_privdata* %85, i32 0, i32 1
  %87 = load i64 (%struct.pci_dev*, %struct.myrs_hba.0*, i32*)*, i64 (%struct.pci_dev*, %struct.myrs_hba.0*, i32*)** %86, align 8
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %90 = bitcast %struct.myrs_hba* %89 to %struct.myrs_hba.0*
  %91 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %92 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 %87(%struct.pci_dev* %88, %struct.myrs_hba.0* %90, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %71
  br label %120

97:                                               ; preds = %71
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @IRQF_SHARED, align 4
  %103 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %104 = call i64 @request_irq(i32 %100, i32 %101, i32 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.myrs_hba* %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %97
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 0
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %120

113:                                              ; preds = %97
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %118 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  store %struct.myrs_hba* %119, %struct.myrs_hba** %3, align 8
  br label %126

120:                                              ; preds = %106, %96, %67, %36
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 0
  %123 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %124 = load %struct.myrs_hba*, %struct.myrs_hba** %9, align 8
  %125 = call i32 @myrs_cleanup(%struct.myrs_hba* %124)
  store %struct.myrs_hba* null, %struct.myrs_hba** %3, align 8
  br label %126

126:                                              ; preds = %120, %113, %25
  %127 = load %struct.myrs_hba*, %struct.myrs_hba** %3, align 8
  ret %struct.myrs_hba* %127
}

declare dso_local %struct.myrs_hba* @myrs_alloc_host(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.myrs_hba*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @ioremap_nocache(i32, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.myrs_hba*) #1

declare dso_local i32 @myrs_cleanup(%struct.myrs_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
