; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_cifs_setup_async_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_cifs_setup_async_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_q_entry = type { i32 }
%struct.TCP_Server_Info = type { i64 }
%struct.smb_rqst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.smb_hdr = type { i32 }

@EIO = common dso_local global i32 0, align 4
@SMBFLG2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mid_q_entry* @cifs_setup_async_request(%struct.TCP_Server_Info* %0, %struct.smb_rqst* %1) #0 {
  %3 = alloca %struct.mid_q_entry*, align 8
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.smb_rqst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_hdr*, align 8
  %8 = alloca %struct.mid_q_entry*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %5, align 8
  %9 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %10 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smb_hdr*
  store %struct.smb_hdr* %15, %struct.smb_hdr** %7, align 8
  %16 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %17 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %38, label %23

23:                                               ; preds = %2
  %24 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %25 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 4
  %31 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %32 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %30, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %23, %2
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.mid_q_entry* @ERR_PTR(i32 %40)
  store %struct.mid_q_entry* %41, %struct.mid_q_entry** %3, align 8
  br label %78

42:                                               ; preds = %23
  %43 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %44 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @SMBFLG2_SECURITY_SIGNATURE, align 4
  %49 = load %struct.smb_hdr*, %struct.smb_hdr** %7, align 8
  %50 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.smb_hdr*, %struct.smb_hdr** %7, align 8
  %55 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %56 = call %struct.mid_q_entry* @AllocMidQEntry(%struct.smb_hdr* %54, %struct.TCP_Server_Info* %55)
  store %struct.mid_q_entry* %56, %struct.mid_q_entry** %8, align 8
  %57 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  %58 = icmp eq %struct.mid_q_entry* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.mid_q_entry* @ERR_PTR(i32 %61)
  store %struct.mid_q_entry* %62, %struct.mid_q_entry** %3, align 8
  br label %78

63:                                               ; preds = %53
  %64 = load %struct.smb_rqst*, %struct.smb_rqst** %5, align 8
  %65 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %66 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  %67 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %66, i32 0, i32 0
  %68 = call i32 @cifs_sign_rqst(%struct.smb_rqst* %64, %struct.TCP_Server_Info* %65, i32* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  %73 = call i32 @DeleteMidQEntry(%struct.mid_q_entry* %72)
  %74 = load i32, i32* %6, align 4
  %75 = call %struct.mid_q_entry* @ERR_PTR(i32 %74)
  store %struct.mid_q_entry* %75, %struct.mid_q_entry** %3, align 8
  br label %78

76:                                               ; preds = %63
  %77 = load %struct.mid_q_entry*, %struct.mid_q_entry** %8, align 8
  store %struct.mid_q_entry* %77, %struct.mid_q_entry** %3, align 8
  br label %78

78:                                               ; preds = %76, %71, %59, %38
  %79 = load %struct.mid_q_entry*, %struct.mid_q_entry** %3, align 8
  ret %struct.mid_q_entry* %79
}

declare dso_local %struct.mid_q_entry* @ERR_PTR(i32) #1

declare dso_local %struct.mid_q_entry* @AllocMidQEntry(%struct.smb_hdr*, %struct.TCP_Server_Info*) #1

declare dso_local i32 @cifs_sign_rqst(%struct.smb_rqst*, %struct.TCP_Server_Info*, i32*) #1

declare dso_local i32 @DeleteMidQEntry(%struct.mid_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
