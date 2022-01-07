; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_sign_rqst.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_sign_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rqst = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TCP_Server_Info = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { {}* }
%struct.smb2_sync_hdr = type { i32, i32 }

@SMB2_FLAGS_SIGNED = common dso_local global i32 0, align 4
@CifsNeedNegotiate = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"BSRSPYL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_rqst*, %struct.TCP_Server_Info*)* @smb2_sign_rqst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_sign_rqst(%struct.smb_rqst* %0, %struct.TCP_Server_Info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_rqst*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb2_sync_hdr*, align 8
  store %struct.smb_rqst* %0, %struct.smb_rqst** %4, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %9 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.smb2_sync_hdr*
  store %struct.smb2_sync_hdr* %14, %struct.smb2_sync_hdr** %7, align 8
  %15 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %16 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SMB2_FLAGS_SIGNED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %23 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CifsNeedNegotiate, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %21
  %30 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %31 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %36 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strncpy(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %51

40:                                               ; preds = %29
  %41 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %42 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = bitcast {}** %44 to i32 (%struct.smb_rqst*, %struct.TCP_Server_Info*)**
  %46 = load i32 (%struct.smb_rqst*, %struct.TCP_Server_Info*)*, i32 (%struct.smb_rqst*, %struct.TCP_Server_Info*)** %45, align 8
  %47 = load %struct.smb_rqst*, %struct.smb_rqst** %4, align 8
  %48 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %49 = call i32 %46(%struct.smb_rqst* %47, %struct.TCP_Server_Info* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %40, %34, %27
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
