; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_issue_init_mfi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_issue_init_mfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { {}* }
%struct.megasas_cmd = type { i64, i64 }
%struct.megasas_init_frame = type { i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.megasas_init_queue_info = type { i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32 }

@MEGAMFI_FRAME_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_INIT = common dso_local global i32 0, align 4
@MFI_STAT_INVALID_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to init firmware\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*)* @megasas_issue_init_mfi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_issue_init_mfi(%struct.megasas_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.megasas_cmd*, align 8
  %6 = alloca %struct.megasas_init_frame*, align 8
  %7 = alloca %struct.megasas_init_queue_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  %10 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %11 = call %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance* %10)
  store %struct.megasas_cmd* %11, %struct.megasas_cmd** %5, align 8
  %12 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.megasas_init_frame*
  store %struct.megasas_init_frame* %15, %struct.megasas_init_frame** %6, align 8
  %16 = load %struct.megasas_init_frame*, %struct.megasas_init_frame** %6, align 8
  %17 = ptrtoint %struct.megasas_init_frame* %16 to i64
  %18 = add i64 %17, 64
  %19 = inttoptr i64 %18 to %struct.megasas_init_queue_info*
  store %struct.megasas_init_queue_info* %19, %struct.megasas_init_queue_info** %7, align 8
  %20 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add nsw i64 %23, 64
  store i64 %24, i64* %9, align 8
  %25 = load %struct.megasas_init_frame*, %struct.megasas_init_frame** %6, align 8
  %26 = getelementptr inbounds %struct.megasas_init_frame, %struct.megasas_init_frame* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load %struct.megasas_init_frame*, %struct.megasas_init_frame** %6, align 8
  %29 = bitcast %struct.megasas_init_frame* %28 to %struct.megasas_init_queue_info*
  %30 = load i32, i32* @MEGAMFI_FRAME_SIZE, align 4
  %31 = call i32 @memset(%struct.megasas_init_queue_info* %29, i32 0, i32 %30)
  %32 = load %struct.megasas_init_queue_info*, %struct.megasas_init_queue_info** %7, align 8
  %33 = call i32 @memset(%struct.megasas_init_queue_info* %32, i32 0, i32 72)
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.megasas_init_frame*, %struct.megasas_init_frame** %6, align 8
  %36 = getelementptr inbounds %struct.megasas_init_frame, %struct.megasas_init_frame* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 8
  %37 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %38 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.megasas_init_queue_info*, %struct.megasas_init_queue_info** %7, align 8
  %43 = getelementptr inbounds %struct.megasas_init_queue_info, %struct.megasas_init_queue_info* %42, i32 0, i32 8
  store i8* %41, i8** %43, align 8
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.megasas_init_queue_info*, %struct.megasas_init_queue_info** %7, align 8
  %49 = getelementptr inbounds %struct.megasas_init_queue_info, %struct.megasas_init_queue_info* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %51 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.megasas_init_queue_info*, %struct.megasas_init_queue_info** %7, align 8
  %55 = getelementptr inbounds %struct.megasas_init_queue_info, %struct.megasas_init_queue_info* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %57 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.megasas_init_queue_info*, %struct.megasas_init_queue_info** %7, align 8
  %61 = getelementptr inbounds %struct.megasas_init_queue_info, %struct.megasas_init_queue_info* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @MFI_CMD_INIT, align 4
  %63 = load %struct.megasas_init_frame*, %struct.megasas_init_frame** %6, align 8
  %64 = getelementptr inbounds %struct.megasas_init_frame, %struct.megasas_init_frame* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @MFI_STAT_INVALID_STATUS, align 4
  %66 = load %struct.megasas_init_frame*, %struct.megasas_init_frame** %6, align 8
  %67 = getelementptr inbounds %struct.megasas_init_frame, %struct.megasas_init_frame* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @lower_32_bits(i64 %68)
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.megasas_init_frame*, %struct.megasas_init_frame** %6, align 8
  %72 = getelementptr inbounds %struct.megasas_init_frame, %struct.megasas_init_frame* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @upper_32_bits(i64 %73)
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.megasas_init_frame*, %struct.megasas_init_frame** %6, align 8
  %77 = getelementptr inbounds %struct.megasas_init_frame, %struct.megasas_init_frame* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = call i8* @cpu_to_le32(i32 72)
  %79 = load %struct.megasas_init_frame*, %struct.megasas_init_frame** %6, align 8
  %80 = getelementptr inbounds %struct.megasas_init_frame, %struct.megasas_init_frame* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %82 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %81, i32 0, i32 5
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = bitcast {}** %84 to i32 (%struct.megasas_instance*)**
  %86 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %85, align 8
  %87 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %88 = call i32 %86(%struct.megasas_instance* %87)
  %89 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %90 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %91 = call i64 @megasas_issue_polled(%struct.megasas_instance* %89, %struct.megasas_cmd* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %1
  %94 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %95 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %94, i32 0, i32 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %99 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %100 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %101 = call i32 @megasas_return_cmd(%struct.megasas_instance* %99, %struct.megasas_cmd* %100)
  br label %106

102:                                              ; preds = %1
  %103 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %104 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %105 = call i32 @megasas_return_cmd(%struct.megasas_instance* %103, %struct.megasas_cmd* %104)
  store i32 0, i32* %2, align 4
  br label %109

106:                                              ; preds = %93
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %106, %102
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance*) #1

declare dso_local i32 @memset(%struct.megasas_init_queue_info*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i64 @megasas_issue_polled(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @megasas_return_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
