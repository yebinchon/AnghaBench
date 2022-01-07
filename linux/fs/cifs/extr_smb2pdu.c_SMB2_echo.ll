; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_echo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i64, i32 }
%struct.smb2_echo_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvec = type { i32, i8* }
%struct.smb_rqst = type { i32, %struct.kvec* }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"In echo request\0A\00", align 1
@CifsNeedNegotiate = common dso_local global i64 0, align 8
@cifsiod_wq = common dso_local global i32 0, align 4
@SMB2_ECHO = common dso_local global i32 0, align 4
@smb2_echo_callback = common dso_local global i32 0, align 4
@CIFS_ECHO_OP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Echo request failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMB2_echo(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca %struct.smb2_echo_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.kvec], align 16
  %7 = alloca %struct.smb_rqst, align 8
  %8 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %7, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %7, i32 0, i32 1
  %11 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %6, i64 0, i64 0
  store %struct.kvec* %11, %struct.kvec** %10, align 8
  %12 = load i32, i32* @FYI, align 4
  %13 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %15 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CifsNeedNegotiate, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @cifsiod_wq, align 4
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %22 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %21, i32 0, i32 1
  %23 = call i32 @queue_delayed_work(i32 %20, i32* %22, i32 0)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %60

25:                                               ; preds = %1
  %26 = load i32, i32* @SMB2_ECHO, align 4
  %27 = bitcast %struct.smb2_echo_req** %4 to i8**
  %28 = call i32 @smb2_plain_req_init(i32 %26, i32* null, i8** %27, i32* %8)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %60

33:                                               ; preds = %25
  %34 = call i32 @cpu_to_le16(i32 1)
  %35 = load %struct.smb2_echo_req*, %struct.smb2_echo_req** %4, align 8
  %36 = getelementptr inbounds %struct.smb2_echo_req, %struct.smb2_echo_req* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %6, i64 0, i64 0
  %40 = getelementptr inbounds %struct.kvec, %struct.kvec* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 16
  %41 = load %struct.smb2_echo_req*, %struct.smb2_echo_req** %4, align 8
  %42 = bitcast %struct.smb2_echo_req* %41 to i8*
  %43 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %6, i64 0, i64 0
  %44 = getelementptr inbounds %struct.kvec, %struct.kvec* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %46 = load i32, i32* @smb2_echo_callback, align 4
  %47 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %48 = load i32, i32* @CIFS_ECHO_OP, align 4
  %49 = call i32 @cifs_call_async(%struct.TCP_Server_Info* %45, %struct.smb_rqst* %7, i32* null, i32 %46, i32* null, %struct.TCP_Server_Info* %47, i32 %48, i32* null)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %33
  %53 = load i32, i32* @FYI, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %33
  %57 = load %struct.smb2_echo_req*, %struct.smb2_echo_req** %4, align 8
  %58 = call i32 @cifs_small_buf_release(%struct.smb2_echo_req* %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %31, %19
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @smb2_plain_req_init(i32, i32*, i8**, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cifs_call_async(%struct.TCP_Server_Info*, %struct.smb_rqst*, i32*, i32, i32*, %struct.TCP_Server_Info*, i32, i32*) #1

declare dso_local i32 @cifs_small_buf_release(%struct.smb2_echo_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
