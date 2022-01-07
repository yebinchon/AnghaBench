; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_refire_mgmt_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_refire_mgmt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i32, i32, i32, %struct.megasas_cmd**, %struct.fusion_context* }
%struct.megasas_cmd = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fusion_context = type { %struct.megasas_cmd_fusion** }
%struct.megasas_cmd_fusion = type { i64 }
%union.MEGASAS_REQUEST_DESCRIPTOR_UNION = type { i32 }

@MR_DCMD_CTRL_SHUTDOWN = common dso_local global i32 0, align 4
@MFI_STAT_OK = common dso_local global i32 0, align 4
@MR_DCMD_LD_MAP_GET_INFO = common dso_local global i32 0, align 4
@MR_DCMD_SYSTEM_PD_MAP_GET_INFO = common dso_local global i32 0, align 4
@DRV_DCMD_SKIP_REFIRE = common dso_local global i32 0, align 4
@MFI_STAT_INVALID_CMD = common dso_local global i8* null, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_refire_mgmt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_refire_mgmt_cmd(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_cmd_fusion*, align 8
  %5 = alloca %struct.fusion_context*, align 8
  %6 = alloca %struct.megasas_cmd*, align 8
  %7 = alloca %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %13 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %12, i32 0, i32 5
  %14 = load %struct.fusion_context*, %struct.fusion_context** %13, align 8
  store %struct.fusion_context* %14, %struct.fusion_context** %5, align 8
  %15 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %16 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %143, %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %21 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %146

24:                                               ; preds = %18
  %25 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  %26 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %25, i32 0, i32 0
  %27 = load %struct.megasas_cmd_fusion**, %struct.megasas_cmd_fusion*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %27, i64 %29
  %31 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %30, align 8
  store %struct.megasas_cmd_fusion* %31, %struct.megasas_cmd_fusion** %4, align 8
  %32 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %33 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %32, i32 0, i32 4
  %34 = load %struct.megasas_cmd**, %struct.megasas_cmd*** %33, align 8
  %35 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %4, align 8
  %36 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.megasas_cmd*, %struct.megasas_cmd** %34, i64 %37
  %39 = load %struct.megasas_cmd*, %struct.megasas_cmd** %38, align 8
  store %struct.megasas_cmd* %39, %struct.megasas_cmd** %6, align 8
  %40 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %41 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @le16_to_cpu(i32 %43)
  store i64 %44, i64* %8, align 8
  store i32 129, i32* %10, align 4
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %24
  br label %143

48:                                               ; preds = %24
  %49 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub nsw i64 %50, 1
  %52 = call %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* @megasas_get_request_descriptor(%struct.megasas_instance* %49, i64 %51)
  store %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %52, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %7, align 8
  %53 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %126 [
    i32 132, label %59
    i32 131, label %100
    i32 130, label %113
  ]

59:                                               ; preds = %48
  %60 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @MR_DCMD_CTRL_SHUTDOWN, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load i32, i32* @MFI_STAT_OK, align 4
  %72 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %71, i32* %76, align 8
  store i32 133, i32* %10, align 4
  br label %127

77:                                               ; preds = %59
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @MR_DCMD_LD_MAP_GET_INFO, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @MR_DCMD_SYSTEM_PD_MAP_GET_INFO, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %87 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DRV_DCMD_SKIP_REFIRE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %85, %81, %77
  %94 = phi i1 [ false, %81 ], [ false, %77 ], [ %92, %85 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  store i32 128, i32* %10, align 4
  br label %99

99:                                               ; preds = %98, %93
  br label %127

100:                                              ; preds = %48
  %101 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %102 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** @MFI_STAT_INVALID_CMD, align 8
  %107 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %108 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i8* %106, i8** %111, align 8
  store i32 133, i32* %10, align 4
  br label %112

112:                                              ; preds = %105, %100
  br label %127

113:                                              ; preds = %48
  %114 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %115 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %113
  %119 = load i8*, i8** @MFI_STAT_INVALID_CMD, align 8
  %120 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %121 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i8* %119, i8** %124, align 8
  store i32 133, i32* %10, align 4
  br label %125

125:                                              ; preds = %118, %113
  br label %127

126:                                              ; preds = %48
  br label %127

127:                                              ; preds = %126, %125, %112, %99, %70
  %128 = load i32, i32* %10, align 4
  switch i32 %128, label %142 [
    i32 129, label %129
    i32 128, label %133
    i32 133, label %137
  ]

129:                                              ; preds = %127
  %130 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %131 = load %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION** %7, align 8
  %132 = call i32 @megasas_fire_cmd_fusion(%struct.megasas_instance* %130, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* %131)
  br label %142

133:                                              ; preds = %127
  %134 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %135 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %136 = call i32 @megasas_return_cmd(%struct.megasas_instance* %134, %struct.megasas_cmd* %135)
  br label %142

137:                                              ; preds = %127
  %138 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %139 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %140 = load i32, i32* @DID_OK, align 4
  %141 = call i32 @megasas_complete_cmd(%struct.megasas_instance* %138, %struct.megasas_cmd* %139, i32 %140)
  br label %142

142:                                              ; preds = %127, %137, %133, %129
  br label %143

143:                                              ; preds = %142, %47
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %18

146:                                              ; preds = %18
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %union.MEGASAS_REQUEST_DESCRIPTOR_UNION* @megasas_get_request_descriptor(%struct.megasas_instance*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @megasas_fire_cmd_fusion(%struct.megasas_instance*, %union.MEGASAS_REQUEST_DESCRIPTOR_UNION*) #1

declare dso_local i32 @megasas_return_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local i32 @megasas_complete_cmd(%struct.megasas_instance*, %struct.megasas_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
