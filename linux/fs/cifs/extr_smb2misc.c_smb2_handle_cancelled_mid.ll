; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2misc.c_smb2_handle_cancelled_mid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2misc.c_smb2_handle_cancelled_mid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.smb2_sync_hdr = type { i64, i64, i32, i32 }
%struct.smb2_create_rsp = type { i32, i32 }
%struct.cifs_tcon = type { i32 }
%struct.close_cancelled_open = type { i32, %struct.cifs_tcon*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SMB2_CREATE = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@smb2_cancelled_close_fid = common dso_local global i32 0, align 4
@cifsiod_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb2_handle_cancelled_mid(i8* %0, %struct.TCP_Server_Info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.smb2_sync_hdr*, align 8
  %7 = alloca %struct.smb2_create_rsp*, align 8
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca %struct.close_cancelled_open*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.smb2_sync_hdr*
  store %struct.smb2_sync_hdr* %11, %struct.smb2_sync_hdr** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.smb2_create_rsp*
  store %struct.smb2_create_rsp* %13, %struct.smb2_create_rsp** %7, align 8
  %14 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %15 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SMB2_CREATE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STATUS_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %74

26:                                               ; preds = %19
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.close_cancelled_open* @kzalloc(i32 24, i32 %27)
  store %struct.close_cancelled_open* %28, %struct.close_cancelled_open** %9, align 8
  %29 = load %struct.close_cancelled_open*, %struct.close_cancelled_open** %9, align 8
  %30 = icmp ne %struct.close_cancelled_open* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %74

34:                                               ; preds = %26
  %35 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %36 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %37 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.cifs_tcon* @smb2_find_smb_tcon(%struct.TCP_Server_Info* %35, i32 %38, i32 %41)
  store %struct.cifs_tcon* %42, %struct.cifs_tcon** %8, align 8
  %43 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %44 = icmp ne %struct.cifs_tcon* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %34
  %46 = load %struct.close_cancelled_open*, %struct.close_cancelled_open** %9, align 8
  %47 = call i32 @kfree(%struct.close_cancelled_open* %46)
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %74

50:                                               ; preds = %34
  %51 = load %struct.smb2_create_rsp*, %struct.smb2_create_rsp** %7, align 8
  %52 = getelementptr inbounds %struct.smb2_create_rsp, %struct.smb2_create_rsp* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.close_cancelled_open*, %struct.close_cancelled_open** %9, align 8
  %55 = getelementptr inbounds %struct.close_cancelled_open, %struct.close_cancelled_open* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.smb2_create_rsp*, %struct.smb2_create_rsp** %7, align 8
  %58 = getelementptr inbounds %struct.smb2_create_rsp, %struct.smb2_create_rsp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.close_cancelled_open*, %struct.close_cancelled_open** %9, align 8
  %61 = getelementptr inbounds %struct.close_cancelled_open, %struct.close_cancelled_open* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %64 = load %struct.close_cancelled_open*, %struct.close_cancelled_open** %9, align 8
  %65 = getelementptr inbounds %struct.close_cancelled_open, %struct.close_cancelled_open* %64, i32 0, i32 1
  store %struct.cifs_tcon* %63, %struct.cifs_tcon** %65, align 8
  %66 = load %struct.close_cancelled_open*, %struct.close_cancelled_open** %9, align 8
  %67 = getelementptr inbounds %struct.close_cancelled_open, %struct.close_cancelled_open* %66, i32 0, i32 0
  %68 = load i32, i32* @smb2_cancelled_close_fid, align 4
  %69 = call i32 @INIT_WORK(i32* %67, i32 %68)
  %70 = load i32, i32* @cifsiod_wq, align 4
  %71 = load %struct.close_cancelled_open*, %struct.close_cancelled_open** %9, align 8
  %72 = getelementptr inbounds %struct.close_cancelled_open, %struct.close_cancelled_open* %71, i32 0, i32 0
  %73 = call i32 @queue_work(i32 %70, i32* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %50, %45, %31, %25
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.close_cancelled_open* @kzalloc(i32, i32) #1

declare dso_local %struct.cifs_tcon* @smb2_find_smb_tcon(%struct.TCP_Server_Info*, i32, i32) #1

declare dso_local i32 @kfree(%struct.close_cancelled_open*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
