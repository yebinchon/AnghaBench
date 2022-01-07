; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_get_ld_map_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_get_ld_map_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i32, %struct.TYPE_5__*, %struct.fusion_context* }
%struct.TYPE_5__ = type { i32 }
%struct.fusion_context = type { i32, i32*, i64*, i32 }
%struct.megasas_cmd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.megasas_dcmd_frame }
%struct.megasas_dcmd_frame = type { i32, i32, i8*, i8*, i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to get cmd for map info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to alloc mem for ld_map_info\0A\00", align 1
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_READ = common dso_local global i32 0, align 4
@MR_DCMD_LD_MAP_GET_INFO = common dso_local global i32 0, align 4
@MFI_IO_TIMEOUT_SECS = common dso_local global i32 0, align 4
@DCMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*)* @megasas_get_ld_map_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_get_ld_map_info(%struct.megasas_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.megasas_cmd*, align 8
  %6 = alloca %struct.megasas_dcmd_frame*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fusion_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %12 = call %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance* %11)
  store %struct.megasas_cmd* %12, %struct.megasas_cmd** %5, align 8
  %13 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %14 = icmp ne %struct.megasas_cmd* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @KERN_DEBUG, align 4
  %17 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %18 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @dev_printk(i32 %16, i32* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %143

24:                                               ; preds = %1
  %25 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %26 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %25, i32 0, i32 3
  %27 = load %struct.fusion_context*, %struct.fusion_context** %26, align 8
  store %struct.fusion_context* %27, %struct.fusion_context** %10, align 8
  %28 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  %29 = icmp ne %struct.fusion_context* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %32 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %33 = call i32 @megasas_return_cmd(%struct.megasas_instance* %31, %struct.megasas_cmd* %32)
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %143

36:                                               ; preds = %24
  %37 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.megasas_dcmd_frame* %40, %struct.megasas_dcmd_frame** %6, align 8
  %41 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  %42 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  %45 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %48 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %46, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %7, align 8
  %55 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  %56 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %59 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %36
  %68 = load i32, i32* @KERN_DEBUG, align 4
  %69 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %70 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @dev_printk(i32 %68, i32* %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %75 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %76 = call i32 @megasas_return_cmd(%struct.megasas_instance* %74, %struct.megasas_cmd* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %143

79:                                               ; preds = %36
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  %82 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @memset(i8* %80, i32 0, i32 %83)
  %85 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %86 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %90 = call i32 @memset(i8* %88, i32 0, i32 %89)
  %91 = load i32, i32* @MFI_CMD_DCMD, align 4
  %92 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %93 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 4
  %94 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %95 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %94, i32 0, i32 0
  store i32 255, i32* %95, align 8
  %96 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %97 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load i32, i32* @MFI_FRAME_DIR_READ, align 4
  %99 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %100 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 8
  %101 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %102 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %101, i32 0, i32 5
  store i64 0, i64* %102, align 8
  %103 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %104 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %103, i32 0, i32 4
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i8* @cpu_to_le32(i32 %105)
  %107 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %108 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @MR_DCMD_LD_MAP_GET_INFO, align 4
  %110 = call i8* @cpu_to_le32(i32 %109)
  %111 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %112 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %114 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @megasas_set_dma_settings(%struct.megasas_instance* %113, %struct.megasas_dcmd_frame* %114, i32 %115, i32 %116)
  %118 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %119 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %79
  %123 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %124 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %125 = load i32, i32* @MFI_IO_TIMEOUT_SECS, align 4
  %126 = call i32 @megasas_issue_blocked_cmd(%struct.megasas_instance* %123, %struct.megasas_cmd* %124, i32 %125)
  store i32 %126, i32* %4, align 4
  br label %131

127:                                              ; preds = %79
  %128 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %129 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %130 = call i32 @megasas_issue_polled(%struct.megasas_instance* %128, %struct.megasas_cmd* %129)
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %127, %122
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @DCMD_TIMEOUT, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %137 = call i32 @megaraid_sas_kill_hba(%struct.megasas_instance* %136)
  br label %138

138:                                              ; preds = %135, %131
  %139 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %140 = load %struct.megasas_cmd*, %struct.megasas_cmd** %5, align 8
  %141 = call i32 @megasas_return_cmd(%struct.megasas_instance* %139, %struct.megasas_cmd* %140)
  %142 = load i32, i32* %4, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %138, %67, %30, %15
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @megasas_return_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @megasas_set_dma_settings(%struct.megasas_instance*, %struct.megasas_dcmd_frame*, i32, i32) #1

declare dso_local i32 @megasas_issue_blocked_cmd(%struct.megasas_instance*, %struct.megasas_cmd*, i32) #1

declare dso_local i32 @megasas_issue_polled(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local i32 @megaraid_sas_kill_hba(%struct.megasas_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
