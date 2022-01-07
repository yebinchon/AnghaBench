; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla_dfs_fw_resource_cnt_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_dfs.c_qla_dfs_fw_resource_cnt_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32 }

@MAX_IOCB_MB_REG = common dso_local global i32 0, align 4
@SIZEOF_IOCB_MB_REG = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Mailbox Command failed %d, mb %#x\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"FW Resource count\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Original TGT exchg count[%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"current TGT exchg count[%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"original Initiator Exchange count[%d]\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Current Initiator Exchange count[%d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Original IOCB count[%d]\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Current IOCB count[%d]\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"MAX VP count[%d]\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"MAX FCF count[%d]\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Current free pageable XCB buffer cnt[%d]\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Original Initiator fast XCB buffer cnt[%d]\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Current free Initiator fast XCB buffer cnt[%d]\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Original Target fast XCB buffer cnt[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @qla_dfs_fw_resource_cnt_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla_dfs_fw_resource_cnt_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %10, align 8
  store %struct.scsi_qla_host* %11, %struct.scsi_qla_host** %5, align 8
  %12 = load i32, i32* @MAX_IOCB_MB_REG, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %17 = load i32, i32* @SIZEOF_IOCB_MB_REG, align 4
  %18 = call i32 @qla24xx_res_count_wait(%struct.scsi_qla_host* %16, i32* %15, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @QLA_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds i32, i32* %15, i64 0
  %26 = load i32, i32* %25, align 16
  %27 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  br label %79

28:                                               ; preds = %2
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = call i32 @seq_puts(%struct.seq_file* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = getelementptr inbounds i32, i32* %15, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = getelementptr inbounds i32, i32* %15, i64 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = getelementptr inbounds i32, i32* %15, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = getelementptr inbounds i32, i32* %15, i64 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = getelementptr inbounds i32, i32* %15, i64 7
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = getelementptr inbounds i32, i32* %15, i64 10
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = getelementptr inbounds i32, i32* %15, i64 11
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %57)
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = getelementptr inbounds i32, i32* %15, i64 12
  %61 = load i32, i32* %60, align 16
  %62 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = getelementptr inbounds i32, i32* %15, i64 20
  %65 = load i32, i32* %64, align 16
  %66 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %65)
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = getelementptr inbounds i32, i32* %15, i64 21
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %69)
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = getelementptr inbounds i32, i32* %15, i64 22
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %73)
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = getelementptr inbounds i32, i32* %15, i64 23
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %28, %22
  %80 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %80)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @qla24xx_res_count_wait(%struct.scsi_qla_host*, i32*, i32) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #2

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
