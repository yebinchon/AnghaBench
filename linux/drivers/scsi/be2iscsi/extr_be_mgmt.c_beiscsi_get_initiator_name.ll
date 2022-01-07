; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_get_initiator_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_get_initiator_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_dma_mem = type { %struct.be_cmd_hba_name* }
%struct.be_cmd_hba_name = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CMD_SUBSYSTEM_ISCSI_INI = common dso_local global i32 0, align 4
@OPCODE_ISCSI_INI_CFG_GET_HBA_NAME = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BS_%d : Initiator Name MBX Failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_get_initiator_name(%struct.beiscsi_hba* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_dma_mem, align 8
  %9 = alloca %struct.be_cmd_hba_name, align 8
  %10 = alloca %struct.be_cmd_hba_name*, align 8
  %11 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %13 = load i32, i32* @CMD_SUBSYSTEM_ISCSI_INI, align 4
  %14 = load i32, i32* @OPCODE_ISCSI_INI_CFG_GET_HBA_NAME, align 4
  %15 = call i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba* %12, %struct.be_dma_mem* %8, i32 %13, i32 %14, i32 16)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  %22 = load %struct.be_cmd_hba_name*, %struct.be_cmd_hba_name** %21, align 8
  store %struct.be_cmd_hba_name* %22, %struct.be_cmd_hba_name** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.be_cmd_hba_name*, %struct.be_cmd_hba_name** %10, align 8
  %27 = getelementptr inbounds %struct.be_cmd_hba_name, %struct.be_cmd_hba_name* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %31 = call i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba* %30, %struct.be_dma_mem* %8, i32* null, %struct.be_cmd_hba_name* %9, i32 16)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %38 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @beiscsi_log(%struct.beiscsi_hba* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %48

42:                                               ; preds = %29
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds %struct.be_cmd_hba_name, %struct.be_cmd_hba_name* %9, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %34, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32, i32) #1

declare dso_local i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32*, %struct.be_cmd_hba_name*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
