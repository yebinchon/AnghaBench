; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_alloc_cmds_fusion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_alloc_cmds_fusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i32, i32, %struct.TYPE_2__*, i64, %struct.fusion_context* }
%struct.TYPE_2__ = type { i32 }
%struct.fusion_context = type { %struct.megasas_cmd_fusion**, i64, i32* }
%struct.megasas_cmd_fusion = type { i32, i32, i32, i64, %struct.megasas_cmd_fusion*, %struct.megasas_instance*, i32* }
%struct.MPI2_RAID_SCSI_IO_REQUEST = type { i32, i32, i32, i64, %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.megasas_instance*, i32* }

@.str = private unnamed_addr constant [38 x i8] c"Configured max firmware commands: %d\0A\00", align 1
@MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@MR_DEVHANDLE_INVALID = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*)* @megasas_alloc_cmds_fusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_alloc_cmds_fusion(%struct.megasas_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fusion_context*, align 8
  %6 = alloca %struct.megasas_cmd_fusion*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  %10 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %11 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %10, i32 0, i32 5
  %12 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  store %struct.fusion_context* %12, %struct.fusion_context** %5, align 8
  %13 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %14 = call i64 @megasas_alloc_request_fusion(%struct.megasas_instance* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %142

17:                                               ; preds = %1
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %19 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %24 = call i64 @megasas_alloc_rdpq_fusion(%struct.megasas_instance* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %142

27:                                               ; preds = %22
  br label %34

28:                                               ; preds = %17
  %29 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %30 = call i64 @megasas_alloc_reply_fusion(%struct.megasas_instance* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %142

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %36 = call i64 @megasas_alloc_cmdlist_fusion(%struct.megasas_instance* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %142

39:                                               ; preds = %34
  %40 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %41 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_info(i32* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  %49 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32* %53, i32** %9, align 8
  %54 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  %55 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  store i64 %59, i64* %8, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %133, %39
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %63 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %136

66:                                               ; preds = %60
  %67 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  %68 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %67, i32 0, i32 0
  %69 = load %struct.megasas_cmd_fusion**, %struct.megasas_cmd_fusion*** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %69, i64 %71
  %73 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %72, align 8
  store %struct.megasas_cmd_fusion* %73, %struct.megasas_cmd_fusion** %6, align 8
  %74 = load i32, i32* @MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE, align 4
  %75 = load i32, i32* %4, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %7, align 4
  %77 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %78 = call i32 @memset(%struct.megasas_cmd_fusion* %77, i32 0, i32 48)
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  %81 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %82 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %84 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %83, i32 0, i32 6
  store i32* null, i32** %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %87 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %85, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %66
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %93 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %99 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %97, %100
  br label %105

102:                                              ; preds = %90, %66
  %103 = load i64, i64* @ULONG_MAX, align 8
  %104 = trunc i64 %103 to i32
  br label %105

105:                                              ; preds = %102, %96
  %106 = phi i32 [ %101, %96 ], [ %104, %102 ]
  %107 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %108 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %110 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %111 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %110, i32 0, i32 5
  store %struct.megasas_instance* %109, %struct.megasas_instance** %111, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = bitcast i32* %115 to %struct.MPI2_RAID_SCSI_IO_REQUEST*
  %117 = bitcast %struct.MPI2_RAID_SCSI_IO_REQUEST* %116 to %struct.megasas_cmd_fusion*
  %118 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %119 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %118, i32 0, i32 4
  store %struct.megasas_cmd_fusion* %117, %struct.megasas_cmd_fusion** %119, align 8
  %120 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %121 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %120, i32 0, i32 4
  %122 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %121, align 8
  %123 = call i32 @memset(%struct.megasas_cmd_fusion* %122, i32 0, i32 48)
  %124 = load i64, i64* %8, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %129 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %128, i32 0, i32 3
  store i64 %127, i64* %129, align 8
  %130 = load i32, i32* @MR_DEVHANDLE_INVALID, align 4
  %131 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %132 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %105
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %60

136:                                              ; preds = %60
  %137 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %138 = call i64 @megasas_create_sg_sense_fusion(%struct.megasas_instance* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %142

141:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %147

142:                                              ; preds = %140, %38, %32, %26, %16
  %143 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %144 = call i32 @megasas_free_cmds_fusion(%struct.megasas_instance* %143)
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %142, %141
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @megasas_alloc_request_fusion(%struct.megasas_instance*) #1

declare dso_local i64 @megasas_alloc_rdpq_fusion(%struct.megasas_instance*) #1

declare dso_local i64 @megasas_alloc_reply_fusion(%struct.megasas_instance*) #1

declare dso_local i64 @megasas_alloc_cmdlist_fusion(%struct.megasas_instance*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @memset(%struct.megasas_cmd_fusion*, i32, i32) #1

declare dso_local i64 @megasas_create_sg_sense_fusion(%struct.megasas_instance*) #1

declare dso_local i32 @megasas_free_cmds_fusion(%struct.megasas_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
