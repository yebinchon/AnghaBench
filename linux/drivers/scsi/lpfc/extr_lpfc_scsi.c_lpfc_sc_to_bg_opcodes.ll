; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_sc_to_bg_opcodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_sc_to_bg_opcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.scsi_cmnd = type { i32 }

@BG_OP_IN_NODIF_OUT_CSUM = common dso_local global i32 0, align 4
@BG_OP_IN_CSUM_OUT_NODIF = common dso_local global i32 0, align 4
@BG_OP_IN_CRC_OUT_NODIF = common dso_local global i32 0, align 4
@BG_OP_IN_NODIF_OUT_CRC = common dso_local global i32 0, align 4
@BG_OP_IN_CRC_OUT_CSUM = common dso_local global i32 0, align 4
@BG_OP_IN_CSUM_OUT_CRC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_BG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"9063 BLKGRD: Bad op/guard:%d/IP combination\0A\00", align 1
@BG_OP_IN_CRC_OUT_CRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"9075 BLKGRD: Bad op/guard:%d/CRC combination\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.scsi_cmnd*, i32*, i32*)* @lpfc_sc_to_bg_opcodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sc_to_bg_opcodes(%struct.lpfc_hba* %0, %struct.scsi_cmnd* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %11 = call i64 @lpfc_cmd_guard_csum(%struct.scsi_cmnd* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %15 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %14)
  switch i32 %15, label %32 [
    i32 133, label %16
    i32 128, label %16
    i32 131, label %21
    i32 130, label %21
    i32 132, label %26
    i32 129, label %26
    i32 134, label %31
  ]

16:                                               ; preds = %13, %13
  %17 = load i32, i32* @BG_OP_IN_NODIF_OUT_CSUM, align 4
  %18 = load i32*, i32** %8, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @BG_OP_IN_CSUM_OUT_NODIF, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %39

21:                                               ; preds = %13, %13
  %22 = load i32, i32* @BG_OP_IN_CRC_OUT_NODIF, align 4
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @BG_OP_IN_NODIF_OUT_CRC, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  br label %39

26:                                               ; preds = %13, %13
  %27 = load i32, i32* @BG_OP_IN_CRC_OUT_CSUM, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @BG_OP_IN_CSUM_OUT_CRC, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %39

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %13, %31
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %34 = load i32, i32* @KERN_ERR, align 4
  %35 = load i32, i32* @LOG_BG, align 4
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %37 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %36)
  %38 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %33, i32 %34, i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %32, %26, %21, %16
  br label %67

40:                                               ; preds = %4
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %42 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %41)
  switch i32 %42, label %59 [
    i32 131, label %43
    i32 130, label %43
    i32 132, label %48
    i32 129, label %48
    i32 133, label %53
    i32 128, label %53
    i32 134, label %58
  ]

43:                                               ; preds = %40, %40
  %44 = load i32, i32* @BG_OP_IN_CRC_OUT_NODIF, align 4
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @BG_OP_IN_NODIF_OUT_CRC, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %66

48:                                               ; preds = %40, %40
  %49 = load i32, i32* @BG_OP_IN_CRC_OUT_CRC, align 4
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @BG_OP_IN_CRC_OUT_CRC, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %66

53:                                               ; preds = %40, %40
  %54 = load i32, i32* @BG_OP_IN_NODIF_OUT_CRC, align 4
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @BG_OP_IN_CRC_OUT_NODIF, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  br label %66

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %40, %58
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %61 = load i32, i32* @KERN_ERR, align 4
  %62 = load i32, i32* @LOG_BG, align 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %64 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %63)
  %65 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %59, %53, %48, %43
  br label %67

67:                                               ; preds = %66, %39
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i64 @lpfc_cmd_guard_csum(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
