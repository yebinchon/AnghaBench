; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb2_lockv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb2_lockv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.smb2_lock_element = type { i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.smb2_lock_req = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CIFS_NO_RSP_BUF = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"smb2_lockv num lock %d\0A\00", align 1
@SMB2_LOCK = common dso_local global i32 0, align 4
@CIFS_TRANSFORM_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Send error in smb2_lockv = %d\0A\00", align 1
@SMB2_LOCK_HE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb2_lockv(i32 %0, %struct.cifs_tcon* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.smb2_lock_element* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_tcon*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.smb2_lock_element*, align 8
  %16 = alloca %struct.smb_rqst, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.smb2_lock_req*, align 8
  %19 = alloca [2 x %struct.kvec], align 16
  %20 = alloca %struct.kvec, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.smb2_lock_element* %6, %struct.smb2_lock_element** %15, align 8
  store i32 0, i32* %17, align 4
  store %struct.smb2_lock_req* null, %struct.smb2_lock_req** %18, align 8
  %25 = load i32, i32* @CIFS_NO_RSP_BUF, align 4
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @FYI, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @cifs_dbg(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @SMB2_LOCK, align 4
  %30 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %31 = bitcast %struct.smb2_lock_req** %18 to i8**
  %32 = call i32 @smb2_plain_req_init(i32 %29, %struct.cifs_tcon* %30, i8** %31, i32* %24)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %7
  %36 = load i32, i32* %17, align 4
  store i32 %36, i32* %8, align 4
  br label %122

37:                                               ; preds = %7
  %38 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %39 = call i64 @smb3_encryption_required(%struct.cifs_tcon* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @CIFS_TRANSFORM_REQ, align 4
  %43 = load i32, i32* %23, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %23, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = load %struct.smb2_lock_req*, %struct.smb2_lock_req** %18, align 8
  %49 = getelementptr inbounds %struct.smb2_lock_req, %struct.smb2_lock_req* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @cpu_to_le16(i32 %51)
  %53 = load %struct.smb2_lock_req*, %struct.smb2_lock_req** %18, align 8
  %54 = getelementptr inbounds %struct.smb2_lock_req, %struct.smb2_lock_req* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.smb2_lock_req*, %struct.smb2_lock_req** %18, align 8
  %57 = getelementptr inbounds %struct.smb2_lock_req, %struct.smb2_lock_req* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.smb2_lock_req*, %struct.smb2_lock_req** %18, align 8
  %60 = getelementptr inbounds %struct.smb2_lock_req, %struct.smb2_lock_req* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %22, align 4
  %65 = load %struct.smb2_lock_req*, %struct.smb2_lock_req** %18, align 8
  %66 = bitcast %struct.smb2_lock_req* %65 to i8*
  %67 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %19, i64 0, i64 0
  %68 = getelementptr inbounds %struct.kvec, %struct.kvec* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 16
  %69 = load i32, i32* %24, align 4
  %70 = zext i32 %69 to i64
  %71 = sub i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %19, i64 0, i64 0
  %74 = getelementptr inbounds %struct.kvec, %struct.kvec* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.smb2_lock_element*, %struct.smb2_lock_element** %15, align 8
  %76 = bitcast %struct.smb2_lock_element* %75 to i8*
  %77 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %19, i64 0, i64 1
  %78 = getelementptr inbounds %struct.kvec, %struct.kvec* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 16
  %79 = load i32, i32* %22, align 4
  %80 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %19, i64 0, i64 1
  %81 = getelementptr inbounds %struct.kvec, %struct.kvec* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %83 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @cifs_stats_inc(i32* %85)
  %87 = call i32 @memset(%struct.smb_rqst* %16, i32 0, i32 16)
  %88 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %19, i64 0, i64 0
  %89 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %16, i32 0, i32 1
  store %struct.kvec* %88, %struct.kvec** %89, align 8
  %90 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %16, i32 0, i32 0
  store i32 2, i32* %90, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %93 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i32, i32* %23, align 4
  %96 = call i32 @cifs_send_recv(i32 %91, %struct.TYPE_8__* %94, %struct.smb_rqst* %16, i32* %21, i32 %95, %struct.kvec* %20)
  store i32 %96, i32* %17, align 4
  %97 = load %struct.smb2_lock_req*, %struct.smb2_lock_req** %18, align 8
  %98 = call i32 @cifs_small_buf_release(%struct.smb2_lock_req* %97)
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %45
  %102 = load i32, i32* @FYI, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @cifs_dbg(i32 %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %106 = load i32, i32* @SMB2_LOCK_HE, align 4
  %107 = call i32 @cifs_stats_fail_inc(%struct.cifs_tcon* %105, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %111 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %114 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @trace_smb3_lock_err(i32 %108, i32 %109, i32 %112, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %101, %45
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %120, %35
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @smb2_plain_req_init(i32, %struct.cifs_tcon*, i8**, i32*) #1

declare dso_local i64 @smb3_encryption_required(%struct.cifs_tcon*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

declare dso_local i32 @memset(%struct.smb_rqst*, i32, i32) #1

declare dso_local i32 @cifs_send_recv(i32, %struct.TYPE_8__*, %struct.smb_rqst*, i32*, i32, %struct.kvec*) #1

declare dso_local i32 @cifs_small_buf_release(%struct.smb2_lock_req*) #1

declare dso_local i32 @cifs_stats_fail_inc(%struct.cifs_tcon*, i32) #1

declare dso_local i32 @trace_smb3_lock_err(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
