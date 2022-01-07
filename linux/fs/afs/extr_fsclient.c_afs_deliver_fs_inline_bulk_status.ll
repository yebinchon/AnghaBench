; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_deliver_fs_inline_bulk_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_fsclient.c_afs_deliver_fs_inline_bulk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i64, i64, i32, i32*, %struct.afs_status_cb*, i32 }
%struct.afs_status_cb = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%u}\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"extract status count\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"status count: %u/%u\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@afs_eproto_ibulkst_count = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"extract status array %u\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"extract CB count\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"CB count: %u\00", align 1
@afs_eproto_ibulkst_cb_count = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"extract CB array\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"unmarshall CB array\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_deliver_fs_inline_bulk_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_fs_inline_bulk_status(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca %struct.afs_status_cb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %8 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %9 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %13 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %210 [
    i32 0, label %15
    i32 1, label %22
    i32 2, label %61
    i32 3, label %112
    i32 4, label %148
    i32 5, label %190
    i32 6, label %209
  ]

15:                                               ; preds = %1
  %16 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %17 = call i32 @afs_extract_to_tmp(%struct.afs_call* %16)
  %18 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %19 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %1, %15
  %23 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %25 = call i32 @afs_extract_data(%struct.afs_call* %24, i32 1)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %212

30:                                               ; preds = %22
  %31 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %32 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @ntohl(i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %37 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %35, i64 %38)
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %42 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %47 = load i32, i32* @EBADMSG, align 4
  %48 = sub nsw i32 0, %47
  %49 = load i32, i32* @afs_eproto_ibulkst_count, align 4
  %50 = call i32 @afs_protocol_error(%struct.afs_call* %46, i32 %48, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %212

51:                                               ; preds = %30
  %52 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %53 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %55 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %102, %51
  %59 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %60 = call i32 @afs_extract_to_buf(%struct.afs_call* %59, i32 84)
  br label %61

61:                                               ; preds = %1, %58
  %62 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %63 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  %66 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %67 = call i32 @afs_extract_data(%struct.afs_call* %66, i32 1)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %212

72:                                               ; preds = %61
  %73 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %74 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %5, align 8
  %76 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %77 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %76, i32 0, i32 5
  %78 = load %struct.afs_status_cb*, %struct.afs_status_cb** %77, align 8
  %79 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %80 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %78, i64 %81
  store %struct.afs_status_cb* %82, %struct.afs_status_cb** %4, align 8
  %83 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %84 = load %struct.afs_status_cb*, %struct.afs_status_cb** %4, align 8
  %85 = call i32 @xdr_decode_AFSFetchStatus(i32** %5, %struct.afs_call* %83, %struct.afs_status_cb* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %72
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %212

90:                                               ; preds = %72
  %91 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %92 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %96 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %99 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %58

103:                                              ; preds = %90
  %104 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %105 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %107 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %111 = call i32 @afs_extract_to_tmp(%struct.afs_call* %110)
  br label %112

112:                                              ; preds = %1, %103
  %113 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %114 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %115 = call i32 @afs_extract_data(%struct.afs_call* %114, i32 1)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %212

120:                                              ; preds = %112
  %121 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %122 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @ntohl(i32 %123)
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %125)
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %129 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %120
  %133 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %134 = load i32, i32* @EBADMSG, align 4
  %135 = sub nsw i32 0, %134
  %136 = load i32, i32* @afs_eproto_ibulkst_cb_count, align 4
  %137 = call i32 @afs_protocol_error(%struct.afs_call* %133, i32 %135, i32 %136)
  store i32 %137, i32* %2, align 4
  br label %212

138:                                              ; preds = %120
  %139 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %140 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  %141 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %142 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %182, %138
  %146 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %147 = call i32 @afs_extract_to_buf(%struct.afs_call* %146, i32 12)
  br label %148

148:                                              ; preds = %1, %145
  %149 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %150 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %151 = call i32 @afs_extract_data(%struct.afs_call* %150, i32 1)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %2, align 4
  br label %212

156:                                              ; preds = %148
  %157 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %158 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %159 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  store i32* %160, i32** %5, align 8
  %161 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %162 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %161, i32 0, i32 5
  %163 = load %struct.afs_status_cb*, %struct.afs_status_cb** %162, align 8
  %164 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %165 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %163, i64 %166
  store %struct.afs_status_cb* %167, %struct.afs_status_cb** %4, align 8
  %168 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %169 = load %struct.afs_status_cb*, %struct.afs_status_cb** %4, align 8
  %170 = call i32 @xdr_decode_AFSCallBack(i32** %5, %struct.afs_call* %168, %struct.afs_status_cb* %169)
  %171 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %172 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %172, align 8
  %175 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %176 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %179 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ult i64 %177, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %156
  br label %145

183:                                              ; preds = %156
  %184 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %185 = call i32 @afs_extract_to_buf(%struct.afs_call* %184, i32 24)
  %186 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %187 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %1, %183
  %191 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %192 = call i32 @afs_extract_data(%struct.afs_call* %191, i32 0)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %2, align 4
  br label %212

197:                                              ; preds = %190
  %198 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %199 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  store i32* %200, i32** %5, align 8
  %201 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %202 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @xdr_decode_AFSVolSync(i32** %5, i32 %203)
  %205 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %206 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %1, %197
  br label %210

210:                                              ; preds = %1, %209
  %211 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %210, %195, %154, %132, %118, %88, %70, %45, %28
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @afs_extract_to_tmp(%struct.afs_call*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @afs_extract_data(%struct.afs_call*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @afs_protocol_error(%struct.afs_call*, i32, i32) #1

declare dso_local i32 @afs_extract_to_buf(%struct.afs_call*, i32) #1

declare dso_local i32 @xdr_decode_AFSFetchStatus(i32**, %struct.afs_call*, %struct.afs_status_cb*) #1

declare dso_local i32 @xdr_decode_AFSCallBack(i32**, %struct.afs_call*, %struct.afs_status_cb*) #1

declare dso_local i32 @xdr_decode_AFSVolSync(i32**, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
