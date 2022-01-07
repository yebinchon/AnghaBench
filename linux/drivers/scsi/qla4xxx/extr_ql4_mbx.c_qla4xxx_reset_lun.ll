; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_reset_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_reset_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.ddb_entry = type { i64 }
%struct.scsi_lun = type { i32 }

@MBOX_REG_COUNT = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"scsi%ld:%d:%llu: lun reset issued\0A\00", align 1
@MBOX_CMD_LUN_RESET = common dso_local global i64 0, align 8
@MBOX_STS_COMMAND_COMPLETE = common dso_local global i64 0, align 8
@MBOX_STS_COMMAND_ERROR = common dso_local global i64 0, align 8
@QLA_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_reset_lun(%struct.scsi_qla_host* %0, %struct.ddb_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.ddb_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.ddb_entry* %1, %struct.ddb_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @MBOX_REG_COUNT, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @MBOX_REG_COUNT, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %24 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25, i32 %26)
  %28 = call i32 @DEBUG2(i32 %27)
  %29 = bitcast i64* %15 to i64**
  %30 = mul nuw i64 8, %13
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i64** %29, i32 0, i32 %31)
  %33 = bitcast i64* %18 to i64**
  %34 = mul nuw i64 8, %17
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i64** %33, i32 0, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %39 = bitcast i64* %38 to %struct.scsi_lun*
  %40 = call i32 @int_to_scsilun(i32 %37, %struct.scsi_lun* %39)
  %41 = load i64, i64* @MBOX_CMD_LUN_RESET, align 8
  %42 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %41, i64* %42, align 16
  %43 = load %struct.ddb_entry*, %struct.ddb_entry** %5, align 8
  %44 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %15, i64 1
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %48 = load i64, i64* %47, align 16
  %49 = call i64 @cpu_to_le32(i64 %48)
  %50 = getelementptr inbounds i64, i64* %15, i64 2
  store i64 %49, i64* %50, align 16
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @cpu_to_le32(i64 %52)
  %54 = getelementptr inbounds i64, i64* %15, i64 3
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds i64, i64* %15, i64 5
  store i64 1, i64* %55, align 8
  %56 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %57 = load i32, i32* @MBOX_REG_COUNT, align 4
  %58 = getelementptr inbounds i64, i64* %15, i64 0
  %59 = getelementptr inbounds i64, i64* %18, i64 0
  %60 = call i32 @qla4xxx_mailbox_command(%struct.scsi_qla_host* %56, i32 %57, i32 1, i64* %58, i64* %59)
  %61 = getelementptr inbounds i64, i64* %18, i64 0
  %62 = load i64, i64* %61, align 16
  %63 = load i64, i64* @MBOX_STS_COMMAND_COMPLETE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %3
  %66 = getelementptr inbounds i64, i64* %18, i64 0
  %67 = load i64, i64* %66, align 16
  %68 = load i64, i64* @MBOX_STS_COMMAND_ERROR, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @QLA_ERROR, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %70, %65, %3
  %73 = load i32, i32* %11, align 4
  %74 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %74)
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEBUG2(i32) #2

declare dso_local i32 @printk(i8*, i32, i64, i32) #2

declare dso_local i32 @memset(i64**, i32, i32) #2

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #2

declare dso_local i64 @cpu_to_le32(i64) #2

declare dso_local i32 @qla4xxx_mailbox_command(%struct.scsi_qla_host*, i32, i32, i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
