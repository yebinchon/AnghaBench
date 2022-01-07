; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_notify_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_notify_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.cifs_tcon = type { i32 }
%struct.smb2_change_notify_req = type { i64, i8*, i8*, i8*, i8* }

@SMB2_CHANGE_NOTIFY = common dso_local global i32 0, align 4
@SMB2_MAX_BUFFER_SIZE = common dso_local global i64 0, align 8
@MAX_SMB2_HDR_SIZE = common dso_local global i64 0, align 8
@SMB2_WATCH_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.smb_rqst*, %struct.cifs_tcon*, i8*, i8*, i64, i32)* @SMB2_notify_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SMB2_notify_init(i32 %0, %struct.smb_rqst* %1, %struct.cifs_tcon* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.smb_rqst*, align 8
  %11 = alloca %struct.cifs_tcon*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.smb2_change_notify_req*, align 8
  %17 = alloca %struct.kvec*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.smb_rqst* %1, %struct.smb_rqst** %10, align 8
  store %struct.cifs_tcon* %2, %struct.cifs_tcon** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load %struct.smb_rqst*, %struct.smb_rqst** %10, align 8
  %21 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %20, i32 0, i32 0
  %22 = load %struct.kvec*, %struct.kvec** %21, align 8
  store %struct.kvec* %22, %struct.kvec** %17, align 8
  %23 = load i32, i32* @SMB2_CHANGE_NOTIFY, align 4
  %24 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %25 = bitcast %struct.smb2_change_notify_req** %16 to i8**
  %26 = call i32 @smb2_plain_req_init(i32 %23, %struct.cifs_tcon* %24, i8** %25, i32* %18)
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %19, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* %19, align 4
  store i32 %30, i32* %8, align 4
  br label %68

31:                                               ; preds = %7
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.smb2_change_notify_req*, %struct.smb2_change_notify_req** %16, align 8
  %34 = getelementptr inbounds %struct.smb2_change_notify_req, %struct.smb2_change_notify_req* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load %struct.smb2_change_notify_req*, %struct.smb2_change_notify_req** %16, align 8
  %37 = getelementptr inbounds %struct.smb2_change_notify_req, %struct.smb2_change_notify_req* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* @SMB2_MAX_BUFFER_SIZE, align 8
  %39 = load i64, i64* @MAX_SMB2_HDR_SIZE, align 8
  %40 = sub nsw i64 %38, %39
  %41 = call i8* @cpu_to_le32(i64 %40)
  %42 = load %struct.smb2_change_notify_req*, %struct.smb2_change_notify_req** %16, align 8
  %43 = getelementptr inbounds %struct.smb2_change_notify_req, %struct.smb2_change_notify_req* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* %14, align 8
  %45 = call i8* @cpu_to_le32(i64 %44)
  %46 = load %struct.smb2_change_notify_req*, %struct.smb2_change_notify_req** %16, align 8
  %47 = getelementptr inbounds %struct.smb2_change_notify_req, %struct.smb2_change_notify_req* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %31
  %51 = load i32, i32* @SMB2_WATCH_TREE, align 4
  %52 = call i64 @cpu_to_le16(i32 %51)
  %53 = load %struct.smb2_change_notify_req*, %struct.smb2_change_notify_req** %16, align 8
  %54 = getelementptr inbounds %struct.smb2_change_notify_req, %struct.smb2_change_notify_req* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %58

55:                                               ; preds = %31
  %56 = load %struct.smb2_change_notify_req*, %struct.smb2_change_notify_req** %16, align 8
  %57 = getelementptr inbounds %struct.smb2_change_notify_req, %struct.smb2_change_notify_req* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.smb2_change_notify_req*, %struct.smb2_change_notify_req** %16, align 8
  %60 = bitcast %struct.smb2_change_notify_req* %59 to i8*
  %61 = load %struct.kvec*, %struct.kvec** %17, align 8
  %62 = getelementptr inbounds %struct.kvec, %struct.kvec* %61, i64 0
  %63 = getelementptr inbounds %struct.kvec, %struct.kvec* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  %64 = load i32, i32* %18, align 4
  %65 = load %struct.kvec*, %struct.kvec** %17, align 8
  %66 = getelementptr inbounds %struct.kvec, %struct.kvec* %65, i64 0
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %58, %29
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @smb2_plain_req_init(i32, %struct.cifs_tcon*, i8**, i32*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
