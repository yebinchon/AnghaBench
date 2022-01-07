; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_mbx_read_fcf_rec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_mbx_read_fcf_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfcMboxq = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8** }
%struct.lpfc_mbx_sge = type { i32 }
%struct.lpfc_mbx_read_fcf_tbl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_FCOE = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_FCOE_READ_FCF_TABLE = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_NEMBED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"0291 Allocated DMA memory size (x%x) is less than the requested DMA memory size (x%x)\0A\00", align 1
@lpfc_mbx_read_fcf_tbl_indx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_mbx_read_fcf_rec(%struct.lpfc_hba* %0, %struct.lpfcMboxq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfcMboxq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.lpfc_mbx_sge, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lpfc_mbx_read_fcf_tbl*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfcMboxq* %1, %struct.lpfcMboxq** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %6, align 8
  %15 = icmp ne %struct.lpfcMboxq* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %63

19:                                               ; preds = %3
  store i32 16, i32* %12, align 4
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %21 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %6, align 8
  %22 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_FCOE, align 4
  %23 = load i32, i32* @LPFC_MBOX_OPCODE_FCOE_READ_FCF_TABLE, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @LPFC_SLI4_MBX_NEMBED, align 4
  %26 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %20, %struct.lpfcMboxq* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = load i32, i32* @LOG_MBOX, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %63

39:                                               ; preds = %19
  %40 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %6, align 8
  %41 = call i32 @lpfc_sli4_mbx_sge_get(%struct.lpfcMboxq* %40, i32 0, %struct.lpfc_mbx_sge* %10)
  %42 = load %struct.lpfcMboxq*, %struct.lpfcMboxq** %6, align 8
  %43 = getelementptr inbounds %struct.lpfcMboxq, %struct.lpfcMboxq* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = bitcast i8* %49 to %struct.lpfc_mbx_read_fcf_tbl*
  store %struct.lpfc_mbx_read_fcf_tbl* %50, %struct.lpfc_mbx_read_fcf_tbl** %13, align 8
  %51 = load i32, i32* @lpfc_mbx_read_fcf_tbl_indx, align 4
  %52 = load %struct.lpfc_mbx_read_fcf_tbl*, %struct.lpfc_mbx_read_fcf_tbl** %13, align 8
  %53 = getelementptr inbounds %struct.lpfc_mbx_read_fcf_tbl, %struct.lpfc_mbx_read_fcf_tbl* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @bf_set(i32 %51, i32* %54, i32 %55)
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr i8, i8* %57, i64 4
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @lpfc_sli_pcimem_bcopy(i32* %60, i32* %61, i32 4)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %39, %30, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, %struct.lpfcMboxq*, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @lpfc_sli4_mbx_sge_get(%struct.lpfcMboxq*, i32, %struct.lpfc_mbx_sge*) #1

declare dso_local i32 @bf_set(i32, i32*, i32) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
