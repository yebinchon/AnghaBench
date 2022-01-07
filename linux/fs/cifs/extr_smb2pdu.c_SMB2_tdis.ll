; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_tdis.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_tdis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.cifs_ses*, i64 }
%struct.cifs_ses = type { i64, i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.smb2_tree_disconnect_req = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Tree Disconnect\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SMB2_TREE_DISCONNECT = common dso_local global i32 0, align 4
@CIFS_TRANSFORM_REQ = common dso_local global i32 0, align 4
@CIFS_NO_RSP_BUF = common dso_local global i32 0, align 4
@SMB2_TREE_DISCONNECT_HE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMB2_tdis(i32 %0, %struct.cifs_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_tcon*, align 8
  %6 = alloca %struct.smb_rqst, align 8
  %7 = alloca %struct.smb2_tree_disconnect_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_ses*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x %struct.kvec], align 16
  %13 = alloca %struct.kvec, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %16 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %15, i32 0, i32 0
  %17 = load %struct.cifs_ses*, %struct.cifs_ses** %16, align 8
  store %struct.cifs_ses* %17, %struct.cifs_ses** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @FYI, align 4
  %19 = call i32 @cifs_dbg(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %21 = icmp ne %struct.cifs_ses* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %24 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %2
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %89

30:                                               ; preds = %22
  %31 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %32 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %37 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %36, i32 0, i32 0
  %38 = load %struct.cifs_ses*, %struct.cifs_ses** %37, align 8
  %39 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %30
  store i32 0, i32* %3, align 4
  br label %89

43:                                               ; preds = %35
  %44 = load i32, i32* @SMB2_TREE_DISCONNECT, align 4
  %45 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %46 = bitcast %struct.smb2_tree_disconnect_req** %7 to i8**
  %47 = call i32 @smb2_plain_req_init(i32 %44, %struct.cifs_tcon* %45, i8** %46, i32* %11)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %89

52:                                               ; preds = %43
  %53 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %54 = call i64 @smb3_encryption_required(%struct.cifs_tcon* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @CIFS_TRANSFORM_REQ, align 4
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* @CIFS_NO_RSP_BUF, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load %struct.smb2_tree_disconnect_req*, %struct.smb2_tree_disconnect_req** %7, align 8
  %65 = bitcast %struct.smb2_tree_disconnect_req* %64 to i8*
  %66 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %12, i64 0, i64 0
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 16
  %68 = load i32, i32* %11, align 4
  %69 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %12, i64 0, i64 0
  %70 = getelementptr inbounds %struct.kvec, %struct.kvec* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = call i32 @memset(%struct.smb_rqst* %6, i32 0, i32 16)
  %72 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %12, i64 0, i64 0
  %73 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %6, i32 0, i32 1
  store %struct.kvec* %72, %struct.kvec** %73, align 8
  %74 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %6, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @cifs_send_recv(i32 %75, %struct.cifs_ses* %76, %struct.smb_rqst* %6, i32* %14, i32 %77, %struct.kvec* %13)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.smb2_tree_disconnect_req*, %struct.smb2_tree_disconnect_req** %7, align 8
  %80 = call i32 @cifs_small_buf_release(%struct.smb2_tree_disconnect_req* %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %60
  %84 = load %struct.cifs_tcon*, %struct.cifs_tcon** %5, align 8
  %85 = load i32, i32* @SMB2_TREE_DISCONNECT_HE, align 4
  %86 = call i32 @cifs_stats_fail_inc(%struct.cifs_tcon* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %60
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %50, %42, %27
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @smb2_plain_req_init(i32, %struct.cifs_tcon*, i8**, i32*) #1

declare dso_local i64 @smb3_encryption_required(%struct.cifs_tcon*) #1

declare dso_local i32 @memset(%struct.smb_rqst*, i32, i32) #1

declare dso_local i32 @cifs_send_recv(i32, %struct.cifs_ses*, %struct.smb_rqst*, i32*, i32, %struct.kvec*) #1

declare dso_local i32 @cifs_small_buf_release(%struct.smb2_tree_disconnect_req*) #1

declare dso_local i32 @cifs_stats_fail_inc(%struct.cifs_tcon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
