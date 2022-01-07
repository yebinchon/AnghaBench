; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_setup_async_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_setup_async_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i32 }
%struct.TCP_Server_Info = type { i64 }
%struct.smb_rqst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.smb2_sync_hdr = type { i64 }

@CifsNeedNegotiate = common dso_local global i64 0, align 8
@SMB2_NEGOTIATE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mid_q_entry* @smb2_setup_async_request(%struct.TCP_Server_Info* %0, %struct.smb_rqst* %1) #0 {
  %3 = alloca %struct.mid_q_entry*, align 8
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.smb_rqst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb2_sync_hdr*, align 8
  %8 = alloca %struct.mid_q_entry*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %5, align 8
  %9 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %10 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smb2_sync_hdr*
  store %struct.smb2_sync_hdr* %15, %struct.smb2_sync_hdr** %7, align 8
  %16 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %17 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CifsNeedNegotiate, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SMB2_NEGOTIATE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.mid_q_entry* @ERR_PTR(i32 %29)
  store %struct.mid_q_entry* %30, %struct.mid_q_entry** %3, align 8
  br label %63

31:                                               ; preds = %21, %2
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %33 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %34 = call i32 @smb2_seq_num_into_buf(%struct.TCP_Server_Info* %32, %struct.smb2_sync_hdr* %33)
  %35 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %36 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %37 = call %struct.mid_q_entry* @smb2_mid_entry_alloc(%struct.smb2_sync_hdr* %35, %struct.TCP_Server_Info* %36)
  store %struct.mid_q_entry* %37, %struct.mid_q_entry** %8, align 8
  %38 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  %39 = icmp eq %struct.mid_q_entry* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %42 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %43 = call i32 @revert_current_mid_from_hdr(%struct.TCP_Server_Info* %41, %struct.smb2_sync_hdr* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.mid_q_entry* @ERR_PTR(i32 %45)
  store %struct.mid_q_entry* %46, %struct.mid_q_entry** %3, align 8
  br label %63

47:                                               ; preds = %31
  %48 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %50 = call i32 @smb2_sign_rqst(%struct.smb_rqst* %48, %struct.TCP_Server_Info* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %55 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %56 = call i32 @revert_current_mid_from_hdr(%struct.TCP_Server_Info* %54, %struct.smb2_sync_hdr* %55)
  %57 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  %58 = call i32 @DeleteMidQEntry(%struct.mid_q_entry* %57)
  %59 = load i32, i32* %6, align 4
  %60 = call %struct.mid_q_entry* @ERR_PTR(i32 %59)
  store %struct.mid_q_entry* %60, %struct.mid_q_entry** %3, align 8
  br label %63

61:                                               ; preds = %47
  %62 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  store %struct.mid_q_entry* %62, %struct.mid_q_entry** %3, align 8
  br label %63

63:                                               ; preds = %61, %53, %40, %27
  %64 = load %struct.mid_q_entry*, %struct.mid_q_entry** %3, align 8
  ret %struct.mid_q_entry* %64
}

declare dso_local %struct.mid_q_entry* @ERR_PTR(i32) #1

declare dso_local i32 @smb2_seq_num_into_buf(%struct.TCP_Server_Info*, %struct.smb2_sync_hdr*) #1

declare dso_local %struct.mid_q_entry* @smb2_mid_entry_alloc(%struct.smb2_sync_hdr*, %struct.TCP_Server_Info*) #1

declare dso_local i32 @revert_current_mid_from_hdr(%struct.TCP_Server_Info*, %struct.smb2_sync_hdr*) #1

declare dso_local i32 @smb2_sign_rqst(%struct.smb_rqst*, %struct.TCP_Server_Info*) #1

declare dso_local i32 @DeleteMidQEntry(%struct.mid_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
