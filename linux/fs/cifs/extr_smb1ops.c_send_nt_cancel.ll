; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_send_nt_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb1ops.c_send_nt_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32 }
%struct.smb_rqst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mid_q_entry = type { i32 }
%struct.smb_hdr = type { i32, i64, i32 }

@SMB_COM_NT_CANCEL = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"issued NT_CANCEL for mid %u, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.smb_rqst*, %struct.mid_q_entry*)* @send_nt_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_nt_cancel(%struct.TCP_Server_Info* %0, %struct.smb_rqst* %1, %struct.mid_q_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.smb_rqst*, align 8
  %7 = alloca %struct.mid_q_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.smb_hdr*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %5, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %6, align 8
  store %struct.mid_q_entry* %2, %struct.mid_q_entry** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.smb_rqst*, %struct.smb_rqst** %6, align 8
  %11 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.smb_hdr*
  store %struct.smb_hdr* %16, %struct.smb_hdr** %9, align 8
  %17 = call i32 @cpu_to_be32(i32 22)
  %18 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %19 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @SMB_COM_NT_CANCEL, align 4
  %21 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %22 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %24 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %26 = call i32 @put_bcc(i32 0, %struct.smb_hdr* %25)
  %27 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %28 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %31 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %32 = load %struct.mid_q_entry*, %struct.mid_q_entry** %7, align 8
  %33 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %32, i32 0, i32 0
  %34 = call i32 @cifs_sign_smb(%struct.smb_hdr* %30, %struct.TCP_Server_Info* %31, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %39 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %71

42:                                               ; preds = %3
  %43 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %44 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %48 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %49 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %50 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @be32_to_cpu(i32 %51)
  %53 = call i32 @smb_send(%struct.TCP_Server_Info* %47, %struct.smb_hdr* %48, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %58 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %42
  %62 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %63 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* @FYI, align 4
  %66 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %67 = call i32 @get_mid(%struct.smb_hdr* %66)
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @cifs_dbg(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %61, %37
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @put_bcc(i32, %struct.smb_hdr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cifs_sign_smb(%struct.smb_hdr*, %struct.TCP_Server_Info*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smb_send(%struct.TCP_Server_Info*, %struct.smb_hdr*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @get_mid(%struct.smb_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
