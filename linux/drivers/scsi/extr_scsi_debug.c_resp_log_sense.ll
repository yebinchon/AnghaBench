; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_log_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_log_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8* }
%struct.sdebug_dev_info = type { i32 }

@SDEBUG_MAX_LSENSE_SZ = common dso_local global i32 0, align 4
@SDEB_IN_CDB = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@SDEBUG_MAX_INQ_ARR_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_log_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_log_sense(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %17 = load i32, i32* @SDEBUG_MAX_LSENSE_SZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %15, align 8
  %24 = trunc i64 %18 to i32
  %25 = call i32 @memset(i8* %20, i32 0, i32 %24)
  %26 = load i8*, i8** %15, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 2
  store i32 %30, i32* %6, align 4
  %31 = load i8*, i8** %15, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38, %2
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = load i32, i32* @SDEB_IN_CDB, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %42, i32 %43, i32 1, i32 %47)
  %49 = load i32, i32* @check_condition_result, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %201

50:                                               ; preds = %38
  %51 = load i8*, i8** %15, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 63
  store i32 %55, i32* %8, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 3
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 255
  store i32 %60, i32* %9, align 4
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 7
  %63 = call i32 @get_unaligned_be16(i8* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %65, i8* %66, align 16
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 0, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %50
  %70 = load i32, i32* %8, align 4
  switch i32 %70, label %96 [
    i32 0, label %71
    i32 13, label %88
    i32 47, label %92
  ]

71:                                               ; preds = %69
  store i32 4, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %20, i64 %74
  store i8 0, i8* %75, align 1
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %20, i64 %78
  store i8 13, i8* %79, align 1
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %20, i64 %82
  store i8 47, i8* %83, align 1
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %84, 4
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 %86, i8* %87, align 1
  br label %101

88:                                               ; preds = %69
  %89 = getelementptr inbounds i8, i8* %20, i64 4
  %90 = call zeroext i8 @resp_temp_l_pg(i8* %89)
  %91 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 %90, i8* %91, align 1
  br label %101

92:                                               ; preds = %69
  %93 = getelementptr inbounds i8, i8* %20, i64 4
  %94 = call zeroext i8 @resp_ie_l_pg(i8* %93)
  %95 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 %94, i8* %95, align 1
  br label %101

96:                                               ; preds = %69
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %98 = load i32, i32* @SDEB_IN_CDB, align 4
  %99 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %97, i32 %98, i32 2, i32 5)
  %100 = load i32, i32* @check_condition_result, align 4
  store i32 %100, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %201

101:                                              ; preds = %92, %88, %71
  br label %190

102:                                              ; preds = %50
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 255, %103
  br i1 %104, label %105, label %184

105:                                              ; preds = %102
  %106 = getelementptr inbounds i8, i8* %20, i64 0
  %107 = load i8, i8* %106, align 16
  %108 = zext i8 %107 to i32
  %109 = or i32 %108, 64
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %106, align 16
  %111 = load i32, i32* %9, align 4
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 %112, i8* %113, align 1
  %114 = load i32, i32* %8, align 4
  switch i32 %114, label %178 [
    i32 0, label %115
    i32 13, label %152
    i32 47, label %165
  ]

115:                                              ; preds = %105
  store i32 4, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %20, i64 %118
  store i8 0, i8* %119, align 1
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %20, i64 %122
  store i8 0, i8* %123, align 1
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %20, i64 %126
  store i8 0, i8* %127, align 1
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %20, i64 %130
  store i8 -1, i8* %131, align 1
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %20, i64 %134
  store i8 13, i8* %135, align 1
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %20, i64 %138
  store i8 0, i8* %139, align 1
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %20, i64 %142
  store i8 47, i8* %143, align 1
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, i8* %20, i64 %146
  store i8 0, i8* %147, align 1
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 %150, i8* %151, align 1
  br label %183

152:                                              ; preds = %105
  store i32 4, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %20, i64 %155
  store i8 13, i8* %156, align 1
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %20, i64 %159
  store i8 0, i8* %160, align 1
  %161 = load i32, i32* %12, align 4
  %162 = sub nsw i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 %163, i8* %164, align 1
  br label %183

165:                                              ; preds = %105
  store i32 4, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %20, i64 %168
  store i8 47, i8* %169, align 1
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %12, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %20, i64 %172
  store i8 0, i8* %173, align 1
  %174 = load i32, i32* %12, align 4
  %175 = sub nsw i32 %174, 4
  %176 = trunc i32 %175 to i8
  %177 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 %176, i8* %177, align 1
  br label %183

178:                                              ; preds = %105
  %179 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %180 = load i32, i32* @SDEB_IN_CDB, align 4
  %181 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %179, i32 %180, i32 2, i32 5)
  %182 = load i32, i32* @check_condition_result, align 4
  store i32 %182, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %201

183:                                              ; preds = %165, %152, %115
  br label %189

184:                                              ; preds = %102
  %185 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %186 = load i32, i32* @SDEB_IN_CDB, align 4
  %187 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %185, i32 %186, i32 3, i32 -1)
  %188 = load i32, i32* @check_condition_result, align 4
  store i32 %188, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %201

189:                                              ; preds = %183
  br label %190

190:                                              ; preds = %189, %101
  %191 = getelementptr inbounds i8, i8* %20, i64 2
  %192 = call i32 @get_unaligned_be16(i8* %191)
  %193 = add nsw i32 %192, 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @min(i32 %193, i32 %194)
  store i32 %195, i32* %11, align 4
  %196 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @SDEBUG_MAX_INQ_ARR_SZ, align 4
  %199 = call i32 @min(i32 %197, i32 %198)
  %200 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %196, i8* %20, i32 %199)
  store i32 %200, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %201

201:                                              ; preds = %190, %184, %178, %96, %41
  %202 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %202)
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @mk_sense_invalid_fld(%struct.scsi_cmnd*, i32, i32, i32) #2

declare dso_local i32 @get_unaligned_be16(i8*) #2

declare dso_local zeroext i8 @resp_temp_l_pg(i8*) #2

declare dso_local zeroext i8 @resp_ie_l_pg(i8*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
