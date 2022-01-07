; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_is_session_expired.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_is_session_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb2_sync_hdr = type { i64, i32, i32, i32, i32 }

@STATUS_NETWORK_SESSION_EXPIRED = common dso_local global i64 0, align 8
@STATUS_USER_SESSION_DELETED = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Session expired or deleted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @smb2_is_session_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_is_session_expired(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.smb2_sync_hdr*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.smb2_sync_hdr*
  store %struct.smb2_sync_hdr* %6, %struct.smb2_sync_hdr** %4, align 8
  %7 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %8 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @STATUS_NETWORK_SESSION_EXPIRED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %14 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STATUS_USER_SESSION_DELETED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %37

19:                                               ; preds = %12, %1
  %20 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %21 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %24 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %31 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le64_to_cpu(i32 %32)
  %34 = call i32 @trace_smb3_ses_expired(i32 %22, i32 %25, i32 %29, i32 %33)
  %35 = load i32, i32* @FYI, align 4
  %36 = call i32 @cifs_dbg(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %19, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @trace_smb3_ses_expired(i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
