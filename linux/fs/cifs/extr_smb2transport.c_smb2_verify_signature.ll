; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_verify_signature.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.TCP_Server_Info = type { i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.smb_rqst*, %struct.TCP_Server_Info*)* }
%struct.smb2_sync_hdr = type { i64, i8* }

@SMB2_NEGOTIATE = common dso_local global i64 0, align 8
@SMB2_SESSION_SETUP = common dso_local global i64 0, align 8
@SMB2_OPLOCK_BREAK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"BSRSPYL \00", align 1
@FYI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"dummy signature received for smb command 0x%x\0A\00", align 1
@SMB2_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb2_verify_signature(%struct.smb_rqst* %0, %struct.TCP_Server_Info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_rqst*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  %8 = alloca %struct.smb2_sync_hdr*, align 8
  store %struct.smb_rqst* %0, %struct.smb_rqst** %4, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %5, align 8
  %9 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %10 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smb2_sync_hdr*
  store %struct.smb2_sync_hdr* %15, %struct.smb2_sync_hdr** %8, align 8
  %16 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %8, align 8
  %17 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SMB2_NEGOTIATE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %43, label %21

21:                                               ; preds = %2
  %22 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %8, align 8
  %23 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SMB2_SESSION_SETUP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %43, label %27

27:                                               ; preds = %21
  %28 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %8, align 8
  %29 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SMB2_OPLOCK_BREAK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %35 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %40 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %33, %27, %21, %2
  store i32 0, i32* %3, align 4
  br label %98

44:                                               ; preds = %38
  %45 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %8, align 8
  %46 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @memcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* @FYI, align 4
  %52 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %8, align 8
  %53 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @cifs_dbg(i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %58 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %8, align 8
  %59 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @SMB2_SIGNATURE_SIZE, align 4
  %62 = call i32 @memcpy(i8* %57, i8* %60, i32 %61)
  %63 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %8, align 8
  %64 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* @SMB2_SIGNATURE_SIZE, align 4
  %67 = call i32 @memset(i8* %65, i32 0, i32 %66)
  %68 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %69 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %72 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32 (%struct.smb_rqst*, %struct.TCP_Server_Info*)*, i32 (%struct.smb_rqst*, %struct.TCP_Server_Info*)** %74, align 8
  %76 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %77 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %78 = call i32 %75(%struct.smb_rqst* %76, %struct.TCP_Server_Info* %77)
  store i32 %78, i32* %6, align 4
  %79 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %80 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %56
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %98

86:                                               ; preds = %56
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %88 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %8, align 8
  %89 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* @SMB2_SIGNATURE_SIZE, align 4
  %92 = call i64 @memcmp(i8* %87, i8* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* @EACCES, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %98

97:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %94, %84, %43
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
