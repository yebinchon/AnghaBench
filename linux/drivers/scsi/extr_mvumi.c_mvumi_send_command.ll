; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i64, i32, %struct.mvumi_cmd**, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mvumi_cmd = type { i32, %struct.mvumi_msg_frame*, i64 }
%struct.mvumi_msg_frame = type { i64, i32, i64 }
%struct.mvumi_dyn_list_entry = type { i32, i8*, i8* }

@FW_STATE_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"firmware not ready.\0A\00", align 1
@MV_QUEUE_COMMAND_RESULT_NO_RESOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"no free tag.\0A\00", align 1
@HS_CAPABILITY_SUPPORT_DYN_SRC = common dso_local global i32 0, align 4
@MV_QUEUE_COMMAND_RESULT_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*, %struct.mvumi_cmd*)* @mvumi_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_send_command(%struct.mvumi_hba* %0, %struct.mvumi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvumi_hba*, align 8
  %5 = alloca %struct.mvumi_cmd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mvumi_msg_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mvumi_dyn_list_entry*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %4, align 8
  store %struct.mvumi_cmd* %1, %struct.mvumi_cmd** %5, align 8
  %10 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %10, i32 0, i32 1
  %12 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %11, align 8
  store %struct.mvumi_msg_frame* %12, %struct.mvumi_msg_frame** %7, align 8
  %13 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %14 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FW_STATE_STARTED, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %23 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @MV_QUEUE_COMMAND_RESULT_NO_RESOURCE, align 4
  store i32 %27, i32* %3, align 4
  br label %119

28:                                               ; preds = %2
  %29 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %30 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %29, i32 0, i32 4
  %31 = call i64 @tag_is_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %35 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @MV_QUEUE_COMMAND_RESULT_NO_RESOURCE, align 4
  store i32 %39, i32* %3, align 4
  br label %119

40:                                               ; preds = %28
  %41 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %42 = call i32 @mvumi_get_ib_list_entry(%struct.mvumi_hba* %41, i8** %6)
  %43 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %44 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %45 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %44, i32 0, i32 4
  %46 = call i64 @tag_get_one(%struct.mvumi_hba* %43, i32* %45)
  %47 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %47, i32 0, i32 1
  %49 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %48, align 8
  %50 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %49, i32 0, i32 0
  store i64 %46, i64* %50, align 8
  %51 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %52 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = sext i32 %53 to i64
  %56 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %56, i32 0, i32 1
  %58 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %57, align 8
  %59 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %58, i32 0, i32 2
  store i64 %55, i64* %59, align 8
  %60 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %60, i32 0, i32 1
  %62 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %61, align 8
  %63 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %66 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %68 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %69 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %68, i32 0, i32 2
  %70 = load %struct.mvumi_cmd**, %struct.mvumi_cmd*** %69, align 8
  %71 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %72 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %71, i32 0, i32 1
  %73 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %72, align 8
  %74 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.mvumi_cmd*, %struct.mvumi_cmd** %70, i64 %75
  store %struct.mvumi_cmd* %67, %struct.mvumi_cmd** %76, align 8
  %77 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %7, align 8
  %78 = getelementptr inbounds %struct.mvumi_msg_frame, %struct.mvumi_msg_frame* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = add i64 20, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %8, align 4
  %84 = load %struct.mvumi_hba*, %struct.mvumi_hba** %4, align 8
  %85 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @HS_CAPABILITY_SUPPORT_DYN_SRC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %40
  %91 = load i8*, i8** %6, align 8
  %92 = bitcast i8* %91 to %struct.mvumi_dyn_list_entry*
  store %struct.mvumi_dyn_list_entry* %92, %struct.mvumi_dyn_list_entry** %9, align 8
  %93 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %94 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @lower_32_bits(i32 %95)
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = load %struct.mvumi_dyn_list_entry*, %struct.mvumi_dyn_list_entry** %9, align 8
  %99 = getelementptr inbounds %struct.mvumi_dyn_list_entry, %struct.mvumi_dyn_list_entry* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.mvumi_cmd*, %struct.mvumi_cmd** %5, align 8
  %101 = getelementptr inbounds %struct.mvumi_cmd, %struct.mvumi_cmd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @upper_32_bits(i32 %102)
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.mvumi_dyn_list_entry*, %struct.mvumi_dyn_list_entry** %9, align 8
  %106 = getelementptr inbounds %struct.mvumi_dyn_list_entry, %struct.mvumi_dyn_list_entry* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %8, align 4
  %108 = lshr i32 %107, 2
  %109 = and i32 %108, 4095
  %110 = load %struct.mvumi_dyn_list_entry*, %struct.mvumi_dyn_list_entry** %9, align 8
  %111 = getelementptr inbounds %struct.mvumi_dyn_list_entry, %struct.mvumi_dyn_list_entry* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %117

112:                                              ; preds = %40
  %113 = load i8*, i8** %6, align 8
  %114 = load %struct.mvumi_msg_frame*, %struct.mvumi_msg_frame** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @memcpy(i8* %113, %struct.mvumi_msg_frame* %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %90
  %118 = load i32, i32* @MV_QUEUE_COMMAND_RESULT_SENT, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %33, %21
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @tag_is_empty(i32*) #1

declare dso_local i32 @mvumi_get_ib_list_entry(%struct.mvumi_hba*, i8**) #1

declare dso_local i64 @tag_get_one(%struct.mvumi_hba*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.mvumi_msg_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
