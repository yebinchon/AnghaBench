; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_allocate_mid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_allocate_mid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.smb_hdr = type { i64 }
%struct.mid_q_entry = type { i32 }

@CifsExiting = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CifsNeedReconnect = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"tcp session dead - return to caller to retry\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@CifsNew = common dso_local global i64 0, align 8
@SMB_COM_SESSION_SETUP_ANDX = common dso_local global i64 0, align 8
@SMB_COM_NEGOTIATE = common dso_local global i64 0, align 8
@SMB_COM_LOGOFF_ANDX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_ses*, %struct.smb_hdr*, %struct.mid_q_entry**)* @allocate_mid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_mid(%struct.cifs_ses* %0, %struct.smb_hdr* %1, %struct.mid_q_entry** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_ses*, align 8
  %6 = alloca %struct.smb_hdr*, align 8
  %7 = alloca %struct.mid_q_entry**, align 8
  store %struct.cifs_ses* %0, %struct.cifs_ses** %5, align 8
  store %struct.smb_hdr* %1, %struct.smb_hdr** %6, align 8
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
  br label %93

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
  br label %93

31:                                               ; preds = %18
  %32 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %33 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CifsNew, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %39 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SMB_COM_SESSION_SETUP_ANDX, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %45 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SMB_COM_NEGOTIATE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %93

52:                                               ; preds = %43, %37
  br label %53

53:                                               ; preds = %52, %31
  %54 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %55 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CifsExiting, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %61 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SMB_COM_LOGOFF_ANDX, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %93

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %53
  %70 = load %struct.smb_hdr*, %struct.smb_hdr** %6, align 8
  %71 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %72 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = call %struct.mid_q_entry* @AllocMidQEntry(%struct.smb_hdr* %70, %struct.TYPE_2__* %73)
  %75 = load %struct.mid_q_entry**, %struct.mid_q_entry*** %7, align 8
  store %struct.mid_q_entry* %74, %struct.mid_q_entry** %75, align 8
  %76 = load %struct.mid_q_entry**, %struct.mid_q_entry*** %7, align 8
  %77 = load %struct.mid_q_entry*, %struct.mid_q_entry** %76, align 8
  %78 = icmp eq %struct.mid_q_entry* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %93

82:                                               ; preds = %69
  %83 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %84 = load %struct.mid_q_entry**, %struct.mid_q_entry*** %7, align 8
  %85 = load %struct.mid_q_entry*, %struct.mid_q_entry** %84, align 8
  %86 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %85, i32 0, i32 0
  %87 = load %struct.cifs_ses*, %struct.cifs_ses** %5, align 8
  %88 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = call i32 @list_add_tail(i32* %86, i32* %90)
  %92 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %82, %79, %65, %49, %26, %15
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local %struct.mid_q_entry* @AllocMidQEntry(%struct.smb_hdr*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
