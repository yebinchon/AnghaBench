; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_hbaB_assign_regAddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_hbaB_assign_regAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { %struct.TYPE_2__*, %struct.MessageUnit_B* }
%struct.TYPE_2__ = type { i64 }
%struct.MessageUnit_B = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@PCI_DEVICE_ID_ARECA_1203 = common dso_local global i64 0, align 8
@ARCMSR_DRV2IOP_DOORBELL_1203 = common dso_local global i32 0, align 4
@ARCMSR_DRV2IOP_DOORBELL_MASK_1203 = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_DOORBELL_1203 = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_DOORBELL_MASK_1203 = common dso_local global i32 0, align 4
@ARCMSR_DRV2IOP_DOORBELL = common dso_local global i32 0, align 4
@ARCMSR_DRV2IOP_DOORBELL_MASK = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_DOORBELL = common dso_local global i32 0, align 4
@ARCMSR_IOP2DRV_DOORBELL_MASK = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_WBUFFER = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_RBUFFER = common dso_local global i32 0, align 4
@ARCMSR_MESSAGE_RWBUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_hbaB_assign_regAddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_hbaB_assign_regAddr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca %struct.MessageUnit_B*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %4 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %5 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %4, i32 0, i32 1
  %6 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %5, align 8
  store %struct.MessageUnit_B* %6, %struct.MessageUnit_B** %3, align 8
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PCI_DEVICE_ID_ARECA_1203, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load i32, i32* @ARCMSR_DRV2IOP_DOORBELL_1203, align 4
  %16 = call i8* @MEM_BASE0(i32 %15)
  %17 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %3, align 8
  %18 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @ARCMSR_DRV2IOP_DOORBELL_MASK_1203, align 4
  %20 = call i8* @MEM_BASE0(i32 %19)
  %21 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %3, align 8
  %22 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @ARCMSR_IOP2DRV_DOORBELL_1203, align 4
  %24 = call i8* @MEM_BASE0(i32 %23)
  %25 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %3, align 8
  %26 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @ARCMSR_IOP2DRV_DOORBELL_MASK_1203, align 4
  %28 = call i8* @MEM_BASE0(i32 %27)
  %29 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %3, align 8
  %30 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  br label %48

31:                                               ; preds = %1
  %32 = load i32, i32* @ARCMSR_DRV2IOP_DOORBELL, align 4
  %33 = call i8* @MEM_BASE0(i32 %32)
  %34 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %3, align 8
  %35 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @ARCMSR_DRV2IOP_DOORBELL_MASK, align 4
  %37 = call i8* @MEM_BASE0(i32 %36)
  %38 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %3, align 8
  %39 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @ARCMSR_IOP2DRV_DOORBELL, align 4
  %41 = call i8* @MEM_BASE0(i32 %40)
  %42 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %3, align 8
  %43 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @ARCMSR_IOP2DRV_DOORBELL_MASK, align 4
  %45 = call i8* @MEM_BASE0(i32 %44)
  %46 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %3, align 8
  %47 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %31, %14
  %49 = load i32, i32* @ARCMSR_MESSAGE_WBUFFER, align 4
  %50 = call i8* @MEM_BASE1(i32 %49)
  %51 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %3, align 8
  %52 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @ARCMSR_MESSAGE_RBUFFER, align 4
  %54 = call i8* @MEM_BASE1(i32 %53)
  %55 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %3, align 8
  %56 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @ARCMSR_MESSAGE_RWBUFFER, align 4
  %58 = call i8* @MEM_BASE1(i32 %57)
  %59 = load %struct.MessageUnit_B*, %struct.MessageUnit_B** %3, align 8
  %60 = getelementptr inbounds %struct.MessageUnit_B, %struct.MessageUnit_B* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  ret void
}

declare dso_local i8* @MEM_BASE0(i32) #1

declare dso_local i8* @MEM_BASE1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
