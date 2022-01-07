; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_logoff.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_logoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32, i64, %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i64 }
%struct.smb_rqst = type { i32, %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.smb2_logoff_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"disconnect session %p\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SMB2_LOGOFF = common dso_local global i32 0, align 4
@SMB2_SESSION_FLAG_ENCRYPT_DATA = common dso_local global i32 0, align 4
@CIFS_TRANSFORM_REQ = common dso_local global i32 0, align 4
@SMB2_FLAGS_SIGNED = common dso_local global i32 0, align 4
@CIFS_NO_RSP_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMB2_logoff(i32 %0, %struct.cifs_ses* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca %struct.smb_rqst, align 8
  %7 = alloca %struct.smb2_logoff_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TCP_Server_Info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.kvec], align 16
  %13 = alloca %struct.kvec, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @FYI, align 4
  %16 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %17 = call i32 @cifs_dbg(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cifs_ses* %16)
  %18 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %19 = icmp ne %struct.cifs_ses* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %22 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %21, i32 0, i32 3
  %23 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %22, align 8
  %24 = icmp ne %struct.TCP_Server_Info* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %27 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %26, i32 0, i32 3
  %28 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %27, align 8
  store %struct.TCP_Server_Info* %28, %struct.TCP_Server_Info** %9, align 8
  br label %32

29:                                               ; preds = %20, %2
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %99

32:                                               ; preds = %25
  %33 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %34 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %97

38:                                               ; preds = %32
  %39 = load i32, i32* @SMB2_LOGOFF, align 4
  %40 = bitcast %struct.smb2_logoff_req** %7 to i8**
  %41 = call i32 @smb2_plain_req_init(i32 %39, i32* null, i8** %40, i32* %11)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %99

46:                                               ; preds = %38
  %47 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %48 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.smb2_logoff_req*, %struct.smb2_logoff_req** %7, align 8
  %51 = getelementptr inbounds %struct.smb2_logoff_req, %struct.smb2_logoff_req* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %54 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SMB2_SESSION_FLAG_ENCRYPT_DATA, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load i32, i32* @CIFS_TRANSFORM_REQ, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %76

63:                                               ; preds = %46
  %64 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %9, align 8
  %65 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* @SMB2_FLAGS_SIGNED, align 4
  %70 = load %struct.smb2_logoff_req*, %struct.smb2_logoff_req** %7, align 8
  %71 = getelementptr inbounds %struct.smb2_logoff_req, %struct.smb2_logoff_req* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %63
  br label %76

76:                                               ; preds = %75, %59
  %77 = load i32, i32* @CIFS_NO_RSP_BUF, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load %struct.smb2_logoff_req*, %struct.smb2_logoff_req** %7, align 8
  %81 = bitcast %struct.smb2_logoff_req* %80 to i8*
  %82 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %12, i64 0, i64 0
  %83 = getelementptr inbounds %struct.kvec, %struct.kvec* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 16
  %84 = load i32, i32* %11, align 4
  %85 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %12, i64 0, i64 0
  %86 = getelementptr inbounds %struct.kvec, %struct.kvec* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = call i32 @memset(%struct.smb_rqst* %6, i32 0, i32 16)
  %88 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %12, i64 0, i64 0
  %89 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %6, i32 0, i32 1
  store %struct.kvec* %88, %struct.kvec** %89, align 8
  %90 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %6, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @cifs_send_recv(i32 %91, %struct.cifs_ses* %92, %struct.smb_rqst* %6, i32* %14, i32 %93, %struct.kvec* %13)
  store i32 %94, i32* %8, align 4
  %95 = load %struct.smb2_logoff_req*, %struct.smb2_logoff_req** %7, align 8
  %96 = call i32 @cifs_small_buf_release(%struct.smb2_logoff_req* %95)
  br label %97

97:                                               ; preds = %76, %37
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %44, %29
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @cifs_dbg(i32, i8*, %struct.cifs_ses*) #1

declare dso_local i32 @smb2_plain_req_init(i32, i32*, i8**, i32*) #1

declare dso_local i32 @memset(%struct.smb_rqst*, i32, i32) #1

declare dso_local i32 @cifs_send_recv(i32, %struct.cifs_ses*, %struct.smb_rqst*, i32*, i32, %struct.kvec*) #1

declare dso_local i32 @cifs_small_buf_release(%struct.smb2_logoff_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
