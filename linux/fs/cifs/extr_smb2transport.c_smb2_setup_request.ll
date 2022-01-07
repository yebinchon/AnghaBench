; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_setup_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_setup_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i32 }
%struct.cifs_ses = type { i32 }
%struct.smb_rqst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.smb2_sync_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mid_q_entry* @smb2_setup_request(%struct.cifs_ses* %0, %struct.smb_rqst* %1) #0 {
  %3 = alloca %struct.mid_q_entry*, align 8
  %4 = alloca %struct.cifs_ses*, align 8
  %5 = alloca %struct.smb_rqst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb2_sync_hdr*, align 8
  %8 = alloca %struct.mid_q_entry*, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %4, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %5, align 8
  %9 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %10 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smb2_sync_hdr*
  store %struct.smb2_sync_hdr* %15, %struct.smb2_sync_hdr** %7, align 8
  %16 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %17 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %20 = call i32 @smb2_seq_num_into_buf(i32 %18, %struct.smb2_sync_hdr* %19)
  %21 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %22 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %23 = call i32 @smb2_get_mid_entry(%struct.cifs_ses* %21, %struct.smb2_sync_hdr* %22, %struct.mid_q_entry** %8)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %28 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %31 = call i32 @revert_current_mid_from_hdr(i32 %29, %struct.smb2_sync_hdr* %30)
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.mid_q_entry* @ERR_PTR(i32 %32)
  store %struct.mid_q_entry* %33, %struct.mid_q_entry** %3, align 8
  br label %54

34:                                               ; preds = %2
  %35 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %36 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %37 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @smb2_sign_rqst(%struct.smb_rqst* %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %44 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %7, align 8
  %47 = call i32 @revert_current_mid_from_hdr(i32 %45, %struct.smb2_sync_hdr* %46)
  %48 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  %49 = call i32 @cifs_delete_mid(%struct.mid_q_entry* %48)
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.mid_q_entry* @ERR_PTR(i32 %50)
  store %struct.mid_q_entry* %51, %struct.mid_q_entry** %3, align 8
  br label %54

52:                                               ; preds = %34
  %53 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  store %struct.mid_q_entry* %53, %struct.mid_q_entry** %3, align 8
  br label %54

54:                                               ; preds = %52, %42, %26
  %55 = load %struct.mid_q_entry*, %struct.mid_q_entry** %3, align 8
  ret %struct.mid_q_entry* %55
}

declare dso_local i32 @smb2_seq_num_into_buf(i32, %struct.smb2_sync_hdr*) #1

declare dso_local i32 @smb2_get_mid_entry(%struct.cifs_ses*, %struct.smb2_sync_hdr*, %struct.mid_q_entry**) #1

declare dso_local i32 @revert_current_mid_from_hdr(i32, %struct.smb2_sync_hdr*) #1

declare dso_local %struct.mid_q_entry* @ERR_PTR(i32) #1

declare dso_local i32 @smb2_sign_rqst(%struct.smb_rqst*, i32) #1

declare dso_local i32 @cifs_delete_mid(%struct.mid_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
