; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2misc.c_check_smb2_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2misc.c_check_smb2_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb2_sync_hdr = type { i64, i32, i64, i32 }

@SMB2_PROTO_NUMBER = common dso_local global i64 0, align 8
@SMB2_FLAGS_SERVER_TO_REDIR = common dso_local global i32 0, align 4
@SMB2_OPLOCK_BREAK = common dso_local global i64 0, align 8
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Received Request not response\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Bad protocol string signature header %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Mids do not match: %llu and %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Bad SMB detected. The Mid=%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb2_sync_hdr*, i64)* @check_smb2_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_smb2_hdr(%struct.smb2_sync_hdr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb2_sync_hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.smb2_sync_hdr* %0, %struct.smb2_sync_hdr** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %8 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @le64_to_cpu(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %12 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SMB2_PROTO_NUMBER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %22 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SMB2_FLAGS_SERVER_TO_REDIR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %67

28:                                               ; preds = %20
  %29 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %30 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SMB2_OPLOCK_BREAK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %67

35:                                               ; preds = %28
  %36 = load i32, i32* @VFS, align 4
  %37 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38
  br label %63

40:                                               ; preds = %16, %2
  %41 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %42 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SMB2_PROTO_NUMBER, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* @VFS, align 4
  %48 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %49 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @le32_to_cpu(i64 %50)
  %52 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %46, %40
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @VFS, align 4
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %53
  br label %63

63:                                               ; preds = %62, %39
  %64 = load i32, i32* @VFS, align 4
  %65 = load i64, i64* %6, align 8
  %66 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %34, %27
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i64 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
