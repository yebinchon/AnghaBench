; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_request_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i8*, i32, i32 }

@SE_SENSE_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"REQUEST_SENSE description emulation not supported\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i32 0, align 4
@NO_SENSE = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @spc_emulate_request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spc_emulate_request_sense(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @SE_SENSE_BUF, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @target_sense_desc_format(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @SE_SENSE_BUF, align 4
  %24 = call i32 @memset(i8* %18, i32 0, i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %69

34:                                               ; preds = %1
  %35 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %36 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %35)
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %69

41:                                               ; preds = %34
  %42 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %43 = call i32 @core_scsi3_ua_clear_for_request_sense(%struct.se_cmd* %42, i32* %6, i32* %7)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @UNIT_ATTENTION, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @scsi_build_sense_buffer(i32 %46, i8* %18, i32 %47, i32 %48, i32 %49)
  br label %55

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @NO_SENSE, align 4
  %54 = call i32 @scsi_build_sense_buffer(i32 %52, i8* %18, i32 %53, i32 0, i32 0)
  br label %55

55:                                               ; preds = %51, %45
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* @u32, align 4
  %58 = trunc i64 %16 to i32
  %59 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %60 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @min_t(i32 %57, i32 %58, i32 %61)
  %63 = call i32 @memcpy(i8* %56, i8* %18, i32 %62)
  %64 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %65 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %64)
  %66 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %67 = load i32, i32* @GOOD, align 4
  %68 = call i32 @target_complete_cmd(%struct.se_cmd* %66, i32 %67)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %55, %39, %31
  %70 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @target_sense_desc_format(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #2

declare dso_local i32 @core_scsi3_ua_clear_for_request_sense(%struct.se_cmd*, i32*, i32*) #2

declare dso_local i32 @scsi_build_sense_buffer(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @min_t(i32, i32, i32) #2

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #2

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
