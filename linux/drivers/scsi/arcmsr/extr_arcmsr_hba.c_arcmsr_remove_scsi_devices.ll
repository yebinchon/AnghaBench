; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_remove_scsi_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_remove_scsi_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, %struct.CommandControlBlock**, i64 }
%struct.CommandControlBlock = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*)* }
%struct.scsi_device = type { i32 }

@ARCMSR_CCB_START = common dso_local global i64 0, align 8
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@ARCMSR_MAX_TARGETID = common dso_local global i32 0, align 4
@ARCMSR_MAX_TARGETLUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_remove_scsi_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_remove_scsi_devices(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.CommandControlBlock*, align 8
  %9 = alloca i8, align 1
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %10 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %11 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %3, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %52, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %17 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %22 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %21, i32 0, i32 2
  %23 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %23, i64 %25
  %27 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %26, align 8
  store %struct.CommandControlBlock* %27, %struct.CommandControlBlock** %8, align 8
  %28 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %8, align 8
  %29 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ARCMSR_CCB_START, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %20
  %34 = load i32, i32* @DID_NO_CONNECT, align 4
  %35 = shl i32 %34, 16
  %36 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %8, align 8
  %37 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %8, align 8
  %41 = call i32 @arcmsr_pci_unmap_dma(%struct.CommandControlBlock* %40)
  %42 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %8, align 8
  %43 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %45, align 8
  %47 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %8, align 8
  %48 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 %46(%struct.TYPE_2__* %49)
  br label %51

51:                                               ; preds = %33, %20
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %14

55:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %103, %55
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @ARCMSR_MAX_TARGETID, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %106

60:                                               ; preds = %56
  %61 = load i8*, i8** %3, align 8
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %9, align 1
  %63 = load i8, i8* %9, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %95, %65
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @ARCMSR_MAX_TARGETLUN, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %66
  %71 = load i8, i8* %9, align 1
  %72 = sext i8 %71 to i32
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %77 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call %struct.scsi_device* @scsi_device_lookup(i32 %78, i32 0, i32 %79, i32 %80)
  store %struct.scsi_device* %81, %struct.scsi_device** %7, align 8
  %82 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %83 = icmp ne %struct.scsi_device* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %86 = call i32 @scsi_remove_device(%struct.scsi_device* %85)
  %87 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %88 = call i32 @scsi_device_put(%struct.scsi_device* %87)
  br label %89

89:                                               ; preds = %84, %75
  br label %90

90:                                               ; preds = %89, %70
  %91 = load i8, i8* %9, align 1
  %92 = sext i8 %91 to i32
  %93 = ashr i32 %92, 1
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %9, align 1
  br label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %66

98:                                               ; preds = %66
  %99 = load i8*, i8** %3, align 8
  store i8 0, i8* %99, align 1
  br label %100

100:                                              ; preds = %98, %60
  %101 = load i8*, i8** %3, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %3, align 8
  br label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %56

106:                                              ; preds = %56
  ret void
}

declare dso_local i32 @arcmsr_pci_unmap_dma(%struct.CommandControlBlock*) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(i32, i32, i32, i32) #1

declare dso_local i32 @scsi_remove_device(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
