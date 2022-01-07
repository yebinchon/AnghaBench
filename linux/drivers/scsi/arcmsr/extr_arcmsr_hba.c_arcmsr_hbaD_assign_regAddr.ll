; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_hbaD_assign_regAddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_hbaD_assign_regAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { %struct.MessageUnit_D* }
%struct.MessageUnit_D = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ARCMSR_ARC1214_CHIP_ID = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_CPU_MEMORY_CONFIGURATION = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_I2_HOST_INTERRUPT_MASK = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_SAMPLE_RESET = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_RESET_REQUEST = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_MAIN_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_PCIE_F0_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_INBOUND_MESSAGE0 = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_INBOUND_MESSAGE1 = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_OUTBOUND_MESSAGE0 = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_OUTBOUND_MESSAGE1 = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_INBOUND_DOORBELL = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_OUTBOUND_DOORBELL = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_OUTBOUND_DOORBELL_ENABLE = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_INBOUND_LIST_BASE_LOW = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_INBOUND_LIST_BASE_HIGH = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_INBOUND_LIST_WRITE_POINTER = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_OUTBOUND_LIST_BASE_LOW = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_OUTBOUND_LIST_BASE_HIGH = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_OUTBOUND_LIST_COPY_POINTER = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_OUTBOUND_LIST_READ_POINTER = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_OUTBOUND_INTERRUPT_CAUSE = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_OUTBOUND_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_MESSAGE_WBUFFER = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_MESSAGE_RBUFFER = common dso_local global i32 0, align 4
@ARCMSR_ARC1214_MESSAGE_RWBUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_hbaD_assign_regAddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_hbaD_assign_regAddr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca %struct.MessageUnit_D*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %4 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %5 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %4, i32 0, i32 0
  %6 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %5, align 8
  store %struct.MessageUnit_D* %6, %struct.MessageUnit_D** %3, align 8
  %7 = load i32, i32* @ARCMSR_ARC1214_CHIP_ID, align 4
  %8 = call i8* @MEM_BASE0(i32 %7)
  %9 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %10 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %9, i32 0, i32 25
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @ARCMSR_ARC1214_CPU_MEMORY_CONFIGURATION, align 4
  %12 = call i8* @MEM_BASE0(i32 %11)
  %13 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %14 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %13, i32 0, i32 24
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @ARCMSR_ARC1214_I2_HOST_INTERRUPT_MASK, align 4
  %16 = call i8* @MEM_BASE0(i32 %15)
  %17 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %18 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %17, i32 0, i32 23
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @ARCMSR_ARC1214_SAMPLE_RESET, align 4
  %20 = call i8* @MEM_BASE0(i32 %19)
  %21 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %22 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %21, i32 0, i32 22
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @ARCMSR_ARC1214_RESET_REQUEST, align 4
  %24 = call i8* @MEM_BASE0(i32 %23)
  %25 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %26 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %25, i32 0, i32 21
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @ARCMSR_ARC1214_MAIN_INTERRUPT_STATUS, align 4
  %28 = call i8* @MEM_BASE0(i32 %27)
  %29 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %30 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %29, i32 0, i32 20
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @ARCMSR_ARC1214_PCIE_F0_INTERRUPT_ENABLE, align 4
  %32 = call i8* @MEM_BASE0(i32 %31)
  %33 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %34 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %33, i32 0, i32 19
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @ARCMSR_ARC1214_INBOUND_MESSAGE0, align 4
  %36 = call i8* @MEM_BASE0(i32 %35)
  %37 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %38 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %37, i32 0, i32 18
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @ARCMSR_ARC1214_INBOUND_MESSAGE1, align 4
  %40 = call i8* @MEM_BASE0(i32 %39)
  %41 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %42 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %41, i32 0, i32 17
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @ARCMSR_ARC1214_OUTBOUND_MESSAGE0, align 4
  %44 = call i8* @MEM_BASE0(i32 %43)
  %45 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %46 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %45, i32 0, i32 16
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @ARCMSR_ARC1214_OUTBOUND_MESSAGE1, align 4
  %48 = call i8* @MEM_BASE0(i32 %47)
  %49 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %50 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %49, i32 0, i32 15
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @ARCMSR_ARC1214_INBOUND_DOORBELL, align 4
  %52 = call i8* @MEM_BASE0(i32 %51)
  %53 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %54 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %53, i32 0, i32 14
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @ARCMSR_ARC1214_OUTBOUND_DOORBELL, align 4
  %56 = call i8* @MEM_BASE0(i32 %55)
  %57 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %58 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %57, i32 0, i32 13
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @ARCMSR_ARC1214_OUTBOUND_DOORBELL_ENABLE, align 4
  %60 = call i8* @MEM_BASE0(i32 %59)
  %61 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %62 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %61, i32 0, i32 12
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @ARCMSR_ARC1214_INBOUND_LIST_BASE_LOW, align 4
  %64 = call i8* @MEM_BASE0(i32 %63)
  %65 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %66 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %65, i32 0, i32 11
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @ARCMSR_ARC1214_INBOUND_LIST_BASE_HIGH, align 4
  %68 = call i8* @MEM_BASE0(i32 %67)
  %69 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %70 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %69, i32 0, i32 10
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @ARCMSR_ARC1214_INBOUND_LIST_WRITE_POINTER, align 4
  %72 = call i8* @MEM_BASE0(i32 %71)
  %73 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %74 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %73, i32 0, i32 9
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @ARCMSR_ARC1214_OUTBOUND_LIST_BASE_LOW, align 4
  %76 = call i8* @MEM_BASE0(i32 %75)
  %77 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %78 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %77, i32 0, i32 8
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @ARCMSR_ARC1214_OUTBOUND_LIST_BASE_HIGH, align 4
  %80 = call i8* @MEM_BASE0(i32 %79)
  %81 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %82 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @ARCMSR_ARC1214_OUTBOUND_LIST_COPY_POINTER, align 4
  %84 = call i8* @MEM_BASE0(i32 %83)
  %85 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %86 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @ARCMSR_ARC1214_OUTBOUND_LIST_READ_POINTER, align 4
  %88 = call i8* @MEM_BASE0(i32 %87)
  %89 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %90 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @ARCMSR_ARC1214_OUTBOUND_INTERRUPT_CAUSE, align 4
  %92 = call i8* @MEM_BASE0(i32 %91)
  %93 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %94 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @ARCMSR_ARC1214_OUTBOUND_INTERRUPT_ENABLE, align 4
  %96 = call i8* @MEM_BASE0(i32 %95)
  %97 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %98 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* @ARCMSR_ARC1214_MESSAGE_WBUFFER, align 4
  %100 = call i8* @MEM_BASE0(i32 %99)
  %101 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %102 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* @ARCMSR_ARC1214_MESSAGE_RBUFFER, align 4
  %104 = call i8* @MEM_BASE0(i32 %103)
  %105 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %106 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @ARCMSR_ARC1214_MESSAGE_RWBUFFER, align 4
  %108 = call i8* @MEM_BASE0(i32 %107)
  %109 = load %struct.MessageUnit_D*, %struct.MessageUnit_D** %3, align 8
  %110 = getelementptr inbounds %struct.MessageUnit_D, %struct.MessageUnit_D* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  ret void
}

declare dso_local i8* @MEM_BASE0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
