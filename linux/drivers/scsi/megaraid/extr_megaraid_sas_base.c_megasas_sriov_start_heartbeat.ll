; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_sriov_start_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_sriov_start_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.megasas_cmd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.megasas_dcmd_frame }
%struct.megasas_dcmd_frame = type { i64, i32, i8*, i8*, i64, i64, i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8**, i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"megasas_sriov_start_heartbeat: Failed to get cmd for scsi%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"SR-IOV: Couldn't allocate memory for heartbeat host memory for scsi%d\0A\00", align 1
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_STAT_INVALID_STATUS = common dso_local global i64 0, align 8
@MFI_FRAME_DIR_BOTH = common dso_local global i32 0, align 4
@MR_DCMD_CTRL_SHARED_HOST_MEM_ALLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"SR-IOV: Starting heartbeat for scsi%d\0A\00", align 1
@MFI_SERIES = common dso_local global i64 0, align 8
@MEGASAS_ROUTINE_WAIT_TIME_VF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"SR-IOV: MR_DCMD_CTRL_SHARED_HOST_MEM_ALLOC DCMD %s for scsi%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @megasas_sriov_start_heartbeat(%struct.megasas_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.megasas_cmd*, align 8
  %7 = alloca %struct.megasas_dcmd_frame*, align 8
  %8 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %10 = call %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance* %9)
  store %struct.megasas_cmd* %10, %struct.megasas_cmd** %6, align 8
  %11 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %12 = icmp ne %struct.megasas_cmd* %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @KERN_DEBUG, align 4
  %15 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %16 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %20 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_printk(i32 %14, i32* %18, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %164

27:                                               ; preds = %2
  %28 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.megasas_dcmd_frame* %31, %struct.megasas_dcmd_frame** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %27
  %35 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %36 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %40 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %39, i32 0, i32 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @dma_alloc_coherent(i32* %38, i32 4, i32* %40, i32 %41)
  %43 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %44 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %46 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %34
  %50 = load i32, i32* @KERN_DEBUG, align 4
  %51 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %52 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %56 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_printk(i32 %50, i32* %54, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %159

63:                                               ; preds = %34
  br label %64

64:                                               ; preds = %63, %27
  %65 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %66 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %65, i32 0, i32 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %70 = call i32 @memset(i32 %68, i32 0, i32 %69)
  %71 = call i8* @cpu_to_le16(i32 4)
  %72 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %73 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  store i8* %71, i8** %76, align 8
  %77 = load i32, i32* @MFI_CMD_DCMD, align 4
  %78 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %79 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  %80 = load i64, i64* @MFI_STAT_INVALID_STATUS, align 8
  %81 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %82 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %84 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  %85 = load i32, i32* @MFI_FRAME_DIR_BOTH, align 4
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %88 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  %89 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %90 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %89, i32 0, i32 5
  store i64 0, i64* %90, align 8
  %91 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %92 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = call i8* @cpu_to_le32(i32 4)
  %94 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %95 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @MR_DCMD_CTRL_SHARED_HOST_MEM_ALLOC, align 4
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %99 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %101 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %102 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %103 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @megasas_set_dma_settings(%struct.megasas_instance* %100, %struct.megasas_dcmd_frame* %101, i32 %104, i32 4)
  %106 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %107 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %111 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 (i32*, i8*, i8*, ...) @dev_warn(i32* %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  %118 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %119 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MFI_SERIES, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %64
  %124 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %125 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %130 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %131 = load i32, i32* @MEGASAS_ROUTINE_WAIT_TIME_VF, align 4
  %132 = call i32 @megasas_issue_blocked_cmd(%struct.megasas_instance* %129, %struct.megasas_cmd* %130, i32 %131)
  store i32 %132, i32* %8, align 4
  br label %137

133:                                              ; preds = %123, %64
  %134 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %135 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %136 = call i32 @megasas_issue_polled(%struct.megasas_instance* %134, %struct.megasas_cmd* %135)
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %137
  %141 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %142 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %141, i32 0, i32 2
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %146 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @MFI_STAT_INVALID_STATUS, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %152 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %153 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %152, i32 0, i32 1
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32*, i8*, i8*, ...) @dev_warn(i32* %144, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %151, i32 %156)
  store i32 1, i32* %8, align 4
  br label %158

158:                                              ; preds = %140, %137
  br label %159

159:                                              ; preds = %158, %49
  %160 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %161 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %162 = call i32 @megasas_return_cmd(%struct.megasas_instance* %160, %struct.megasas_cmd* %161)
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %159, %13
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @megasas_set_dma_settings(%struct.megasas_instance*, %struct.megasas_dcmd_frame*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*, ...) #1

declare dso_local i32 @megasas_issue_blocked_cmd(%struct.megasas_instance*, %struct.megasas_cmd*, i32) #1

declare dso_local i32 @megasas_issue_polled(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local i32 @megasas_return_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
