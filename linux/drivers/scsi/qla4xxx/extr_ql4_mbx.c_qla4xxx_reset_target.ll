; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_reset_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_reset_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.ddb_entry = type { i64 }

@MBOX_REG_COUNT = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"scsi%ld:%d: target reset issued\0A\00", align 1
@MBOX_CMD_TARGET_WARM_RESET = common dso_local global i64 0, align 8
@MBOX_STS_COMMAND_COMPLETE = common dso_local global i64 0, align 8
@MBOX_STS_COMMAND_ERROR = common dso_local global i64 0, align 8
@QLA_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_reset_target(%struct.scsi_qla_host* %0, %struct.ddb_entry* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.ddb_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.ddb_entry* %1, %struct.ddb_entry** %4, align 8
  %9 = load i32, i32* @MBOX_REG_COUNT, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @MBOX_REG_COUNT, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ddb_entry*, %struct.ddb_entry** %4, align 8
  %21 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %22)
  %24 = call i32 @DEBUG2(i32 %23)
  %25 = bitcast i64* %12 to i64**
  %26 = mul nuw i64 8, %10
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i64** %25, i32 0, i32 %27)
  %29 = bitcast i64* %15 to i64**
  %30 = mul nuw i64 8, %14
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i64** %29, i32 0, i32 %31)
  %33 = load i64, i64* @MBOX_CMD_TARGET_WARM_RESET, align 8
  %34 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 %33, i64* %34, align 16
  %35 = load %struct.ddb_entry*, %struct.ddb_entry** %4, align 8
  %36 = getelementptr inbounds %struct.ddb_entry, %struct.ddb_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %12, i64 1
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds i64, i64* %12, i64 5
  store i64 1, i64* %39, align 8
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %41 = load i32, i32* @MBOX_REG_COUNT, align 4
  %42 = getelementptr inbounds i64, i64* %12, i64 0
  %43 = getelementptr inbounds i64, i64* %15, i64 0
  %44 = call i32 @qla4xxx_mailbox_command(%struct.scsi_qla_host* %40, i32 %41, i32 1, i64* %42, i64* %43)
  %45 = getelementptr inbounds i64, i64* %15, i64 0
  %46 = load i64, i64* %45, align 16
  %47 = load i64, i64* @MBOX_STS_COMMAND_COMPLETE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %2
  %50 = getelementptr inbounds i64, i64* %15, i64 0
  %51 = load i64, i64* %50, align 16
  %52 = load i64, i64* @MBOX_STS_COMMAND_ERROR, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @QLA_ERROR, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %54, %49, %2
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEBUG2(i32) #2

declare dso_local i32 @printk(i8*, i32, i64) #2

declare dso_local i32 @memset(i64**, i32, i32) #2

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
