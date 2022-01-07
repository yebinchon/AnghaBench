; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_parse_xcopy_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_xcopy.c_target_parse_xcopy_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xcopy_op = type { %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.se_cmd* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.se_cmd = type { i64 }

@TCM_INVALID_PARAMETER_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"transport_kmap_data_sg() failed in target_do_xcopy\0A\00", align 1
@TCM_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@RCR_OP_MAX_DESC_LIST_LEN = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [52 x i8] c"XCOPY descriptor list length %u exceeds maximum %u\0A\00", align 1
@TCM_PARAMETER_LIST_LENGTH_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"XCOPY with non zero inline data length\0A\00", align 1
@XCOPY_HDR_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [91 x i8] c"XCOPY parameter truncation: data length %u too small for tdll: %hu sdll: %u inline_dl: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [94 x i8] c"Processing XCOPY with list_id: 0x%02x list_id_usage: 0x%02x tdll: %hu sdll: %u inline_dl: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"XCOPY: Processed %d segment descriptors, length: %u\0A\00", align 1
@XCOPY_SEGMENT_DESC_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [91 x i8] c"XCOPY: Non matching src_dev block_size: %u + dst_dev block_size: %u currently unsupported\0A\00", align 1
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"XCOPY: Processed %d target descriptors, length: %u\0A\00", align 1
@XCOPY_TARGET_DESC_LEN = common dso_local global i32 0, align 4
@TCM_NO_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xcopy_op*)* @target_parse_xcopy_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_parse_xcopy_cmd(%struct.xcopy_op* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xcopy_op*, align 8
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store %struct.xcopy_op* %0, %struct.xcopy_op** %3, align 8
  %14 = load %struct.xcopy_op*, %struct.xcopy_op** %3, align 8
  %15 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %14, i32 0, i32 2
  %16 = load %struct.se_cmd*, %struct.se_cmd** %15, align 8
  store %struct.se_cmd* %16, %struct.se_cmd** %4, align 8
  store i8* null, i8** %5, align 8
  %17 = load i32, i32* @TCM_INVALID_PARAMETER_LIST, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %19 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @TCM_OUT_OF_RESOURCES, align 4
  store i32 %24, i32* %2, align 4
  br label %176

25:                                               ; preds = %1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 24
  %35 = ashr i32 %34, 3
  store i32 %35, i32* %8, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = call zeroext i16 @get_unaligned_be16(i8* %37)
  store i16 %38, i16* %13, align 2
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  %41 = call i32 @get_unaligned_be32(i8* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i16, i16* %13, align 2
  %43 = zext i16 %42 to i32
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %43, %44
  %46 = load i16, i16* @RCR_OP_MAX_DESC_LIST_LEN, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp ugt i32 %45, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %25
  %50 = load i16, i16* %13, align 2
  %51 = zext i16 %50 to i32
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %51, %52
  %54 = load i16, i16* @RCR_OP_MAX_DESC_LIST_LEN, align 2
  %55 = zext i16 %54 to i32
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %55)
  %57 = load i32, i32* @TCM_PARAMETER_LIST_LENGTH_ERROR, align 4
  store i32 %57, i32* %11, align 4
  br label %168

58:                                               ; preds = %25
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 12
  %61 = call i32 @get_unaligned_be32(i8* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %168

66:                                               ; preds = %58
  %67 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %68 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @XCOPY_HDR_LEN, align 8
  %71 = load i16, i16* %13, align 2
  %72 = zext i16 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = icmp slt i64 %69, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %66
  %82 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %83 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i16, i16* %13, align 2
  %86 = zext i16 %85 to i32
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0), i64 %84, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* @TCM_PARAMETER_LIST_LENGTH_ERROR, align 4
  store i32 %90, i32* %11, align 4
  br label %168

91:                                               ; preds = %66
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i16, i16* %13, align 2
  %95 = zext i16 %94 to i32
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %93, i32 %95, i32 %96, i32 %97)
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 16
  %101 = load i16, i16* %13, align 2
  %102 = zext i16 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8* %104, i8** %6, align 8
  %105 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %106 = load %struct.xcopy_op*, %struct.xcopy_op** %3, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @target_xcopy_parse_segment_descriptors(%struct.se_cmd* %105, %struct.xcopy_op* %106, i8* %107, i32 %108, i32* %11)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %91
  br label %168

113:                                              ; preds = %91
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @XCOPY_SEGMENT_DESC_LEN, align 4
  %117 = mul nsw i32 %115, %116
  %118 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %114, i32 %117)
  %119 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %120 = load %struct.xcopy_op*, %struct.xcopy_op** %3, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 16
  %123 = load i16, i16* %13, align 2
  %124 = call i32 @target_xcopy_parse_target_descriptors(%struct.se_cmd* %119, %struct.xcopy_op* %120, i8* %122, i16 zeroext %123, i32* %11)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  br label %168

128:                                              ; preds = %113
  %129 = load %struct.xcopy_op*, %struct.xcopy_op** %3, align 8
  %130 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.xcopy_op*, %struct.xcopy_op** %3, align 8
  %136 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %134, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %128
  %143 = load %struct.xcopy_op*, %struct.xcopy_op** %3, align 8
  %144 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %143, i32 0, i32 1
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.xcopy_op*, %struct.xcopy_op** %3, align 8
  %150 = getelementptr inbounds %struct.xcopy_op, %struct.xcopy_op* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.6, i64 0, i64 0), i64 %148, i64 %154)
  %156 = load %struct.xcopy_op*, %struct.xcopy_op** %3, align 8
  %157 = call i32 @xcopy_pt_undepend_remotedev(%struct.xcopy_op* %156)
  %158 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %158, i32* %11, align 4
  br label %168

159:                                              ; preds = %128
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @XCOPY_TARGET_DESC_LEN, align 4
  %163 = mul nsw i32 %161, %162
  %164 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %160, i32 %163)
  %165 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %166 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %165)
  %167 = load i32, i32* @TCM_NO_SENSE, align 4
  store i32 %167, i32* %2, align 4
  br label %176

168:                                              ; preds = %142, %127, %112, %81, %64, %49
  %169 = load i8*, i8** %5, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %173 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %159, %22
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local zeroext i16 @get_unaligned_be16(i8*) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @target_xcopy_parse_segment_descriptors(%struct.se_cmd*, %struct.xcopy_op*, i8*, i32, i32*) #1

declare dso_local i32 @target_xcopy_parse_target_descriptors(%struct.se_cmd*, %struct.xcopy_op*, i8*, i16 zeroext, i32*) #1

declare dso_local i32 @xcopy_pt_undepend_remotedev(%struct.xcopy_op*) #1

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
