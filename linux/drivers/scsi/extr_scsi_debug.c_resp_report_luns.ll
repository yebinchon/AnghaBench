; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_report_luns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_report_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8* }
%struct.sdebug_dev_info = type { i32 }
%struct.scsi_lun = type { i32 }

@RL_BUCKET_ELEMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"alloc len too small %d\0A\00", align 1
@SDEB_IN_CDB = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@sdebug_max_luns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"select report invalid %d\0A\00", align 1
@sdebug_no_lun_0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"select_report %d luns = %d wluns = %d no_lun0 %d\0A\00", align 1
@SCSI_W_LUN_REPORT_LUNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_report_luns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_report_luns(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_lun*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i32, i32* @RL_BUCKET_ELEMS, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %11, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  store i32 0, i32* %21, align 4
  store i32 4, i32* %22, align 4
  %32 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %33 = call i32 @clear_luns_changed_on_target(%struct.sdebug_dev_info* %32)
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %8, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 6
  %39 = call i32 @get_unaligned_be32(i8* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %46 = load i32, i32* @SDEB_IN_CDB, align 4
  %47 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %45, i32 %46, i32 6, i32 -1)
  %48 = load i32, i32* @check_condition_result, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %175

49:                                               ; preds = %2
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  switch i32 %51, label %58 [
    i32 0, label %52
    i32 1, label %54
    i32 2, label %55
    i32 16, label %57
    i32 17, label %57
    i32 18, label %57
  ]

52:                                               ; preds = %49
  %53 = load i32, i32* @sdebug_max_luns, align 4
  store i32 %53, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %65

54:                                               ; preds = %49
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %65

55:                                               ; preds = %49
  %56 = load i32, i32* @sdebug_max_luns, align 4
  store i32 %56, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %65

57:                                               ; preds = %49, %49, %49
  br label %58

58:                                               ; preds = %49, %57
  %59 = load i8, i8* %8, align 1
  %60 = call i32 (i8*, i8, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %59)
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %62 = load i32, i32* @SDEB_IN_CDB, align 4
  %63 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %61, i32 %62, i32 2, i32 -1)
  %64 = load i32, i32* @check_condition_result, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %175

65:                                               ; preds = %55, %54, %52
  %66 = load i64, i64* @sdebug_no_lun_0, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = icmp ugt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %71, %68, %65
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = add i32 %75, %76
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = mul i32 %78, 4
  store i32 %79, i32* %16, align 4
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %82 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %81)
  %83 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %80, i32 %82)
  %84 = load i8, i8* %8, align 1
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i64, i64* @sdebug_no_lun_0, align 8
  %88 = call i32 (i8*, i8, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %84, i32 %85, i32 %86, i64 %87)
  %89 = load i64, i64* @sdebug_no_lun_0, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  store i32 %92, i32* %9, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %93

93:                                               ; preds = %152, %74
  br i1 true, label %94, label %155

94:                                               ; preds = %93
  %95 = mul nuw i64 4, %29
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memset(i32* %31, i32 0, i32 %96)
  %98 = getelementptr inbounds i32, i32* %31, i64 0
  %99 = bitcast i32* %98 to %struct.scsi_lun*
  store %struct.scsi_lun* %99, %struct.scsi_lun** %10, align 8
  %100 = load i32, i32* %17, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load i32, i32* %16, align 4
  %104 = getelementptr inbounds i32, i32* %31, i64 0
  %105 = call i32 @put_unaligned_be32(i32 %103, i32* %104)
  %106 = load %struct.scsi_lun*, %struct.scsi_lun** %10, align 8
  %107 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %106, i32 1
  store %struct.scsi_lun* %107, %struct.scsi_lun** %10, align 8
  store i32 1, i32* %18, align 4
  br label %108

108:                                              ; preds = %102, %94
  br label %109

109:                                              ; preds = %127, %108
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* @RL_BUCKET_ELEMS, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %109
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* @RL_BUCKET_ELEMS, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %13, align 4
  %120 = icmp ugt i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %132

122:                                              ; preds = %113
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = load %struct.scsi_lun*, %struct.scsi_lun** %10, align 8
  %126 = call i32 @int_to_scsilun(i32 %123, %struct.scsi_lun* %125)
  br label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %18, align 4
  %130 = load %struct.scsi_lun*, %struct.scsi_lun** %10, align 8
  %131 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %130, i32 1
  store %struct.scsi_lun* %131, %struct.scsi_lun** %10, align 8
  br label %109

132:                                              ; preds = %121, %109
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* @RL_BUCKET_ELEMS, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %155

137:                                              ; preds = %132
  %138 = load i32, i32* %18, align 4
  %139 = mul nsw i32 %138, 4
  store i32 %139, i32* %19, align 4
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %21, align 4
  %143 = call i32 @p_fill_from_dev_buffer(%struct.scsi_cmnd* %140, i32* %31, i32 %141, i32 %142)
  store i32 %143, i32* %20, align 4
  %144 = load i32, i32* %20, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %137
  %147 = load i32, i32* %20, align 4
  store i32 %147, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %175

148:                                              ; preds = %137
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %21, align 4
  %151 = add i32 %150, %149
  store i32 %151, i32* %21, align 4
  br label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %93

155:                                              ; preds = %136, %93
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i32, i32* @SCSI_W_LUN_REPORT_LUNS, align 4
  %160 = load %struct.scsi_lun*, %struct.scsi_lun** %10, align 8
  %161 = call i32 @int_to_scsilun(i32 %159, %struct.scsi_lun* %160)
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %18, align 4
  br label %164

164:                                              ; preds = %158, %155
  %165 = load i32, i32* %18, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %169 = load i32, i32* %18, align 4
  %170 = mul nsw i32 %169, 4
  %171 = load i32, i32* %21, align 4
  %172 = call i32 @p_fill_from_dev_buffer(%struct.scsi_cmnd* %168, i32* %31, i32 %170, i32 %171)
  store i32 %172, i32* %20, align 4
  br label %173

173:                                              ; preds = %167, %164
  %174 = load i32, i32* %20, align 4
  store i32 %174, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %175

175:                                              ; preds = %173, %146, %58, %42
  %176 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @clear_luns_changed_on_target(%struct.sdebug_dev_info*) #2

declare dso_local i32 @get_unaligned_be32(i8*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @mk_sense_invalid_fld(%struct.scsi_cmnd*, i32, i32, i32) #2

declare dso_local i32 @pr_debug(i8*, i8 zeroext, ...) #2

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #2

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @put_unaligned_be32(i32, i32*) #2

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #2

declare dso_local i32 @p_fill_from_dev_buffer(%struct.scsi_cmnd*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
