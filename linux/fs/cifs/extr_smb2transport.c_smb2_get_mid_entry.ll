; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_get_mid_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2transport.c_smb2_get_mid_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.smb2_sync_hdr = type { i64 }
%struct.mid_q_entry = type { i32 }

@CifsExiting = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CifsNeedReconnect = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"tcp session dead - return to caller to retry\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@CifsNeedNegotiate = common dso_local global i64 0, align 8
@SMB2_NEGOTIATE = common dso_local global i64 0, align 8
@CifsNew = common dso_local global i64 0, align 8
@SMB2_SESSION_SETUP = common dso_local global i64 0, align 8
@SMB2_LOGOFF = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.smb2_sync_hdr*, %struct.mid_q_entry**)* @smb2_get_mid_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_get_mid_entry(%struct.cifs_ses* %0, %struct.smb2_sync_hdr* %1, %struct.mid_q_entry** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca %struct.smb2_sync_hdr*, align 8
  %7 = alloca %struct.mid_q_entry**, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %5, align 8
  store %struct.smb2_sync_hdr* %1, %struct.smb2_sync_hdr** %6, align 8
  store %struct.mid_q_entry** %2, %struct.mid_q_entry*** %7, align 8
  %8 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %9 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CifsExiting, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %110

18:                                               ; preds = %3
  %19 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %20 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CifsNeedReconnect, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32, i32* @FYI, align 4
  %28 = call i32 @cifs_dbg(i32 %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %110

31:                                               ; preds = %18
  %32 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %33 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CifsNeedNegotiate, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %41 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SMB2_NEGOTIATE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %110

48:                                               ; preds = %39, %31
  %49 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %50 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CifsNew, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %56 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SMB2_SESSION_SETUP, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %62 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SMB2_NEGOTIATE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %110

69:                                               ; preds = %60, %54
  br label %70

70:                                               ; preds = %69, %48
  %71 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %72 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CifsExiting, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %78 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SMB2_LOGOFF, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %110

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %70
  %87 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %88 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %89 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = call %struct.mid_q_entry* @smb2_mid_entry_alloc(%struct.smb2_sync_hdr* %87, %struct.TYPE_2__* %90)
  %92 = load %struct.mid_q_entry**, %struct.mid_q_entry*** %7, align 8
  store %struct.mid_q_entry* %91, %struct.mid_q_entry** %92, align 8
  %93 = load %struct.mid_q_entry**, %struct.mid_q_entry*** %7, align 8
  %94 = load %struct.mid_q_entry*, %struct.mid_q_entry** %93, align 8
  %95 = icmp eq %struct.mid_q_entry* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %110

99:                                               ; preds = %86
  %100 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %101 = load %struct.mid_q_entry**, %struct.mid_q_entry*** %7, align 8
  %102 = load %struct.mid_q_entry*, %struct.mid_q_entry** %101, align 8
  %103 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %102, i32 0, i32 0
  %104 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %105 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = call i32 @list_add_tail(i32* %103, i32* %107)
  %109 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %99, %96, %82, %66, %45, %26, %15
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local %struct.mid_q_entry* @smb2_mid_entry_alloc(%struct.smb2_sync_hdr*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
