; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_cmservice.c_afs_deliver_yfs_cb_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_cmservice.c_afs_deliver_yfs_cb_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i32, i32, %struct.yfs_xdr_YFSFid*, %struct.afs_callback_break*, i32 }
%struct.yfs_xdr_YFSFid = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.afs_callback_break = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"{%u}\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"extract FID count\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"FID count: %u\00", align 1
@YFSCBMAX = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@afs_eproto_cb_fid_count = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"extract FID array\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"unmarshall FID array\00", align 1
@AFS_CALL_SV_REPLYING = common dso_local global i32 0, align 4
@afs_io_error_cm_reply = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*)* @afs_deliver_yfs_cb_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_yfs_cb_callback(%struct.afs_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.afs_call*, align 8
  %4 = alloca %struct.afs_callback_break*, align 8
  %5 = alloca %struct.yfs_xdr_YFSFid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.afs_call* %0, %struct.afs_call** %3, align 8
  %9 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %10 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %14 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %163 [
    i32 0, label %16
    i32 1, label %23
    i32 2, label %79
    i32 3, label %162
  ]

16:                                               ; preds = %1
  %17 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %18 = call i32 @afs_extract_to_tmp(%struct.afs_call* %17)
  %19 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %20 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %1, %16
  %24 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %26 = call i32 @afs_extract_data(%struct.afs_call* %25, i32 1)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %175

31:                                               ; preds = %23
  %32 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %33 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @ntohl(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %38 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %44 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @YFSCBMAX, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %31
  %49 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %50 = load i32, i32* @EBADMSG, align 4
  %51 = sub nsw i32 0, %50
  %52 = load i32, i32* @afs_eproto_cb_fid_count, align 4
  %53 = call i32 @afs_protocol_error(%struct.afs_call* %49, i32 %51, i32 %52)
  store i32 %53, i32* %2, align 4
  br label %175

54:                                               ; preds = %31
  %55 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %56 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @array_size(i32 %57, i32 16)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.yfs_xdr_YFSFid* @kmalloc(i64 %59, i32 %60)
  %62 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %63 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %62, i32 0, i32 2
  store %struct.yfs_xdr_YFSFid* %61, %struct.yfs_xdr_YFSFid** %63, align 8
  %64 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %65 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %64, i32 0, i32 2
  %66 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %65, align 8
  %67 = icmp ne %struct.yfs_xdr_YFSFid* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %54
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %175

71:                                               ; preds = %54
  %72 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @afs_extract_to_buf(%struct.afs_call* %72, i64 %73)
  %75 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %76 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %1, %71
  %80 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %82 = call i32 @afs_extract_data(%struct.afs_call* %81, i32 0)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %175

87:                                               ; preds = %79
  %88 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %90 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.afs_callback_break* @kcalloc(i32 %91, i32 32, i32 %92)
  %94 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %95 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %94, i32 0, i32 3
  store %struct.afs_callback_break* %93, %struct.afs_callback_break** %95, align 8
  %96 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %97 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %96, i32 0, i32 3
  %98 = load %struct.afs_callback_break*, %struct.afs_callback_break** %97, align 8
  %99 = icmp ne %struct.afs_callback_break* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %87
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %175

103:                                              ; preds = %87
  %104 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %105 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %104, i32 0, i32 3
  %106 = load %struct.afs_callback_break*, %struct.afs_callback_break** %105, align 8
  store %struct.afs_callback_break* %106, %struct.afs_callback_break** %4, align 8
  %107 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %108 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %107, i32 0, i32 2
  %109 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %108, align 8
  store %struct.yfs_xdr_YFSFid* %109, %struct.yfs_xdr_YFSFid** %5, align 8
  %110 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %111 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %150, %103
  %114 = load i32, i32* %8, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %113
  %117 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %118 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @xdr_to_u64(i32 %119)
  %121 = load %struct.afs_callback_break*, %struct.afs_callback_break** %4, align 8
  %122 = getelementptr inbounds %struct.afs_callback_break, %struct.afs_callback_break* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  store i8* %120, i8** %123, align 8
  %124 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %125 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @xdr_to_u64(i32 %127)
  %129 = load %struct.afs_callback_break*, %struct.afs_callback_break** %4, align 8
  %130 = getelementptr inbounds %struct.afs_callback_break, %struct.afs_callback_break* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  store i8* %128, i8** %131, align 8
  %132 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %133 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @ntohl(i32 %135)
  %137 = load %struct.afs_callback_break*, %struct.afs_callback_break** %4, align 8
  %138 = getelementptr inbounds %struct.afs_callback_break, %struct.afs_callback_break* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i8* %136, i8** %139, align 8
  %140 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %141 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @ntohl(i32 %143)
  %145 = load %struct.afs_callback_break*, %struct.afs_callback_break** %4, align 8
  %146 = getelementptr inbounds %struct.afs_callback_break, %struct.afs_callback_break* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i8* %144, i8** %147, align 8
  %148 = load %struct.yfs_xdr_YFSFid*, %struct.yfs_xdr_YFSFid** %5, align 8
  %149 = getelementptr inbounds %struct.yfs_xdr_YFSFid, %struct.yfs_xdr_YFSFid* %148, i32 1
  store %struct.yfs_xdr_YFSFid* %149, %struct.yfs_xdr_YFSFid** %5, align 8
  br label %150

150:                                              ; preds = %116
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %8, align 4
  %153 = load %struct.afs_callback_break*, %struct.afs_callback_break** %4, align 8
  %154 = getelementptr inbounds %struct.afs_callback_break, %struct.afs_callback_break* %153, i32 1
  store %struct.afs_callback_break* %154, %struct.afs_callback_break** %4, align 8
  br label %113

155:                                              ; preds = %113
  %156 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %157 = call i32 @afs_extract_to_tmp(%struct.afs_call* %156)
  %158 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %159 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %1, %155
  br label %163

163:                                              ; preds = %1, %162
  %164 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %165 = load i32, i32* @AFS_CALL_SV_REPLYING, align 4
  %166 = call i32 @afs_check_call_state(%struct.afs_call* %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %170 = load i32, i32* @afs_io_error_cm_reply, align 4
  %171 = call i32 @afs_io_error(%struct.afs_call* %169, i32 %170)
  store i32 %171, i32* %2, align 4
  br label %175

172:                                              ; preds = %163
  %173 = load %struct.afs_call*, %struct.afs_call** %3, align 8
  %174 = call i32 @afs_find_cm_server_by_peer(%struct.afs_call* %173)
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %172, %168, %100, %85, %68, %48, %29
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @afs_extract_to_tmp(%struct.afs_call*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @afs_extract_data(%struct.afs_call*, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @afs_protocol_error(%struct.afs_call*, i32, i32) #1

declare dso_local i64 @array_size(i32, i32) #1

declare dso_local %struct.yfs_xdr_YFSFid* @kmalloc(i64, i32) #1

declare dso_local i32 @afs_extract_to_buf(%struct.afs_call*, i64) #1

declare dso_local %struct.afs_callback_break* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @xdr_to_u64(i32) #1

declare dso_local i32 @afs_check_call_state(%struct.afs_call*, i32) #1

declare dso_local i32 @afs_io_error(%struct.afs_call*, i32) #1

declare dso_local i32 @afs_find_cm_server_by_peer(%struct.afs_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
