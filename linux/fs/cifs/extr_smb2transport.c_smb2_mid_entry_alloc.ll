; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_mid_entry_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_mid_entry_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mid_q_entry = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.TCP_Server_Info*, i32, i32, i32, i32 }
%struct.smb2_sync_hdr = type { i32, i32, i32, i32, i32 }
%struct.TCP_Server_Info = type { i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Null TCP session in smb2_mid_entry_alloc\0A\00", align 1
@cifs_mid_poolp = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@jiffies = common dso_local global i32 0, align 4
@cifs_wake_up_task = common dso_local global i32 0, align 4
@midCount = common dso_local global i32 0, align 4
@MID_REQUEST_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mid_q_entry* (%struct.smb2_sync_hdr*, %struct.TCP_Server_Info*)* @smb2_mid_entry_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mid_q_entry* @smb2_mid_entry_alloc(%struct.smb2_sync_hdr* %0, %struct.TCP_Server_Info* %1) #0 {
  %3 = alloca %struct.mid_q_entry*, align 8
  %4 = alloca %struct.smb2_sync_hdr*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.mid_q_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.smb2_sync_hdr* %0, %struct.smb2_sync_hdr** %4, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %5, align 8
  %8 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %9 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le16_to_cpu(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %13 = icmp eq %struct.TCP_Server_Info* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @VFS, align 4
  %16 = call i32 @cifs_dbg(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store %struct.mid_q_entry* null, %struct.mid_q_entry** %3, align 8
  br label %82

17:                                               ; preds = %2
  %18 = load i32, i32* @cifs_mid_poolp, align 4
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.mid_q_entry* @mempool_alloc(i32 %18, i32 %19)
  store %struct.mid_q_entry* %20, %struct.mid_q_entry** %6, align 8
  %21 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %22 = call i32 @memset(%struct.mid_q_entry* %21, i32 0, i32 56)
  %23 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %24 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %23, i32 0, i32 9
  %25 = call i32 @kref_init(i32* %24)
  %26 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le64_to_cpu(i32 %28)
  %30 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %31 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = load i32, i32* %7, align 4
  br label %37

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 1, %36 ]
  %39 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %40 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %45 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %47 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %50 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @jiffies, align 4
  %52 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %53 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %55 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %56 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %55, i32 0, i32 5
  store %struct.TCP_Server_Info* %54, %struct.TCP_Server_Info** %56, align 8
  %57 = load i32, i32* @cifs_wake_up_task, align 4
  %58 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %59 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %61 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %62 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %61, i32 0, i32 3
  store %struct.TYPE_2__* %60, %struct.TYPE_2__** %62, align 8
  %63 = call i32 @atomic_inc(i32* @midCount)
  %64 = load i32, i32* @MID_REQUEST_ALLOCATED, align 4
  %65 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %66 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %68 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %71 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %4, align 8
  %74 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %78 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @trace_smb3_cmd_enter(i32 %69, i32 %72, i32 %76, i32 %79)
  %81 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  store %struct.mid_q_entry* %81, %struct.mid_q_entry** %3, align 8
  br label %82

82:                                               ; preds = %37, %14
  %83 = load %struct.mid_q_entry*, %struct.mid_q_entry** %3, align 8
  ret %struct.mid_q_entry* %83
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local %struct.mid_q_entry* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.mid_q_entry*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @trace_smb3_cmd_enter(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
