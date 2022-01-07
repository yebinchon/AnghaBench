; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_AllocMidQEntry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_AllocMidQEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mid_q_entry = type { i32, %struct.TYPE_2__*, i32, %struct.TCP_Server_Info*, i32, i32, i32, i32, i32 }
%struct.smb_hdr = type { i32 }
%struct.TCP_Server_Info = type { i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Null TCP session in AllocMidQEntry\0A\00", align 1
@cifs_mid_poolp = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@FYI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"For smb_command %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@cifs_wake_up_task = common dso_local global i32 0, align 4
@midCount = common dso_local global i32 0, align 4
@MID_REQUEST_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mid_q_entry* @AllocMidQEntry(%struct.smb_hdr* %0, %struct.TCP_Server_Info* %1) #0 {
  %3 = alloca %struct.mid_q_entry*, align 8
  %4 = alloca %struct.smb_hdr*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.mid_q_entry*, align 8
  store %struct.smb_hdr* %0, %struct.smb_hdr** %4, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %5, align 8
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %8 = icmp eq %struct.TCP_Server_Info* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @VFS, align 4
  %11 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.mid_q_entry* null, %struct.mid_q_entry** %3, align 8
  br label %58

12:                                               ; preds = %2
  %13 = load i32, i32* @cifs_mid_poolp, align 4
  %14 = load i32, i32* @GFP_NOFS, align 4
  %15 = call %struct.mid_q_entry* @mempool_alloc(i32 %13, i32 %14)
  store %struct.mid_q_entry* %15, %struct.mid_q_entry** %6, align 8
  %16 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %17 = call i32 @memset(%struct.mid_q_entry* %16, i32 0, i32 56)
  %18 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %19 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %18, i32 0, i32 8
  %20 = call i32 @kref_init(i32* %19)
  %21 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %22 = call i32 @get_mid(%struct.smb_hdr* %21)
  %23 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %24 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %29 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %31 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cpu_to_le16(i32 %32)
  %34 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %35 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @FYI, align 4
  %37 = load %struct.smb_hdr*, %struct.smb_hdr** %4, align 8
  %38 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %43 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %45 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %46 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %45, i32 0, i32 3
  store %struct.TCP_Server_Info* %44, %struct.TCP_Server_Info** %46, align 8
  %47 = load i32, i32* @cifs_wake_up_task, align 4
  %48 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %49 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %51 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %52 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %51, i32 0, i32 1
  store %struct.TYPE_2__* %50, %struct.TYPE_2__** %52, align 8
  %53 = call i32 @atomic_inc(i32* @midCount)
  %54 = load i32, i32* @MID_REQUEST_ALLOCATED, align 4
  %55 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  %56 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mid_q_entry*, %struct.mid_q_entry** %6, align 8
  store %struct.mid_q_entry* %57, %struct.mid_q_entry** %3, align 8
  br label %58

58:                                               ; preds = %12, %9
  %59 = load %struct.mid_q_entry*, %struct.mid_q_entry** %3, align 8
  ret %struct.mid_q_entry* %59
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local %struct.mid_q_entry* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.mid_q_entry*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @get_mid(%struct.smb_hdr*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
