; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_identify_ns_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_identify_ns_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32 }
%struct.nvme_ns_ids = type { i32, i32, i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nvme_ns_id_desc = type { i64, i32 }

@nvme_admin_identify = common dso_local global i32 0, align 4
@NVME_ID_CNS_NS_DESC_LIST = common dso_local global i32 0, align 4
@NVME_IDENTIFY_DATA_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVME_NIDT_EUI64_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"ctrl returned bogus length: %d for NVME_NIDT_EUI64\0A\00", align 1
@NVME_NIDT_NGUID_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"ctrl returned bogus length: %d for NVME_NIDT_NGUID\0A\00", align 1
@NVME_NIDT_UUID_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"ctrl returned bogus length: %d for NVME_NIDT_UUID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, i32, %struct.nvme_ns_ids*)* @nvme_identify_ns_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_identify_ns_descs(%struct.nvme_ctrl* %0, i32 %1, %struct.nvme_ns_ids* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_ns_ids*, align 8
  %8 = alloca %struct.nvme_command, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvme_ns_id_desc*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvme_ns_ids* %2, %struct.nvme_ns_ids** %7, align 8
  %14 = bitcast %struct.nvme_command* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 12, i1 false)
  %15 = load i32, i32* @nvme_admin_identify, align 4
  %16 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @cpu_to_le32(i32 %18)
  %20 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @NVME_ID_CNS_NS_DESC_LIST, align 4
  %23 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @NVME_IDENTIFY_DATA_SIZE, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %164

33:                                               ; preds = %3
  %34 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %35 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* @NVME_IDENTIFY_DATA_SIZE, align 4
  %39 = call i32 @nvme_submit_sync_cmd(i32 %36, %struct.nvme_command* %8, i8* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %160

43:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %155, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @NVME_IDENTIFY_DATA_SIZE, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %159

48:                                               ; preds = %44
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %49, i64 %51
  %53 = bitcast i8* %52 to %struct.nvme_ns_id_desc*
  store %struct.nvme_ns_id_desc* %53, %struct.nvme_ns_id_desc** %13, align 8
  %54 = load %struct.nvme_ns_id_desc*, %struct.nvme_ns_id_desc** %13, align 8
  %55 = getelementptr inbounds %struct.nvme_ns_id_desc, %struct.nvme_ns_id_desc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %159

59:                                               ; preds = %48
  %60 = load %struct.nvme_ns_id_desc*, %struct.nvme_ns_id_desc** %13, align 8
  %61 = getelementptr inbounds %struct.nvme_ns_id_desc, %struct.nvme_ns_id_desc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %145 [
    i32 130, label %63
    i32 129, label %91
    i32 128, label %119
  ]

63:                                               ; preds = %59
  %64 = load %struct.nvme_ns_id_desc*, %struct.nvme_ns_id_desc** %13, align 8
  %65 = getelementptr inbounds %struct.nvme_ns_id_desc, %struct.nvme_ns_id_desc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @NVME_NIDT_EUI64_LEN, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %66, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %72 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nvme_ns_id_desc*, %struct.nvme_ns_id_desc** %13, align 8
  %75 = getelementptr inbounds %struct.nvme_ns_id_desc, %struct.nvme_ns_id_desc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @dev_warn(i32 %73, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %160

79:                                               ; preds = %63
  %80 = load i32, i32* @NVME_NIDT_EUI64_LEN, align 4
  store i32 %80, i32* %12, align 4
  %81 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %7, align 8
  %82 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, i8* %84, i64 %86
  %88 = getelementptr i8, i8* %87, i64 16
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @memcpy(i32 %83, i8* %88, i32 %89)
  br label %150

91:                                               ; preds = %59
  %92 = load %struct.nvme_ns_id_desc*, %struct.nvme_ns_id_desc** %13, align 8
  %93 = getelementptr inbounds %struct.nvme_ns_id_desc, %struct.nvme_ns_id_desc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @NVME_NIDT_NGUID_LEN, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %94, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %100 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nvme_ns_id_desc*, %struct.nvme_ns_id_desc** %13, align 8
  %103 = getelementptr inbounds %struct.nvme_ns_id_desc, %struct.nvme_ns_id_desc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @dev_warn(i32 %101, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %160

107:                                              ; preds = %91
  %108 = load i32, i32* @NVME_NIDT_NGUID_LEN, align 4
  store i32 %108, i32* %12, align 4
  %109 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %7, align 8
  %110 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr i8, i8* %112, i64 %114
  %116 = getelementptr i8, i8* %115, i64 16
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @memcpy(i32 %111, i8* %116, i32 %117)
  br label %150

119:                                              ; preds = %59
  %120 = load %struct.nvme_ns_id_desc*, %struct.nvme_ns_id_desc** %13, align 8
  %121 = getelementptr inbounds %struct.nvme_ns_id_desc, %struct.nvme_ns_id_desc* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @NVME_NIDT_UUID_LEN, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp ne i64 %122, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %128 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.nvme_ns_id_desc*, %struct.nvme_ns_id_desc** %13, align 8
  %131 = getelementptr inbounds %struct.nvme_ns_id_desc, %struct.nvme_ns_id_desc* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @dev_warn(i32 %129, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  br label %160

135:                                              ; preds = %119
  %136 = load i32, i32* @NVME_NIDT_UUID_LEN, align 4
  store i32 %136, i32* %12, align 4
  %137 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %7, align 8
  %138 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %137, i32 0, i32 0
  %139 = load i8*, i8** %10, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr i8, i8* %139, i64 %141
  %143 = getelementptr i8, i8* %142, i64 16
  %144 = call i32 @uuid_copy(i32* %138, i8* %143)
  br label %150

145:                                              ; preds = %59
  %146 = load %struct.nvme_ns_id_desc*, %struct.nvme_ns_id_desc** %13, align 8
  %147 = getelementptr inbounds %struct.nvme_ns_id_desc, %struct.nvme_ns_id_desc* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %145, %135, %107, %79
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %152, 16
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %11, align 4
  br label %44

159:                                              ; preds = %58, %44
  br label %160

160:                                              ; preds = %159, %126, %98, %70, %42
  %161 = load i8*, i8** %10, align 8
  %162 = call i32 @kfree(i8* %161)
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %160, %30
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, i8*, i32) #2

declare dso_local i32 @dev_warn(i32, i8*, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @uuid_copy(i32*, i8*) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
