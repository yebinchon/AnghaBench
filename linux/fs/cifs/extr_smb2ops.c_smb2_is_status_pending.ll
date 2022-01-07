; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_is_status_pending.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_smb2_is_status_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, i32 }
%struct.smb2_sync_hdr = type { i64, i64 }

@STATUS_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TCP_Server_Info*)* @smb2_is_status_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb2_is_status_pending(i8* %0, %struct.TCP_Server_Info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.smb2_sync_hdr*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TCP_Server_Info* %1, %struct.TCP_Server_Info** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.smb2_sync_hdr*
  store %struct.smb2_sync_hdr* %8, %struct.smb2_sync_hdr** %6, align 8
  %9 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %10 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STATUS_PENDING, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %17 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %22 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.smb2_sync_hdr*, %struct.smb2_sync_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.smb2_sync_hdr, %struct.smb2_sync_hdr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @le16_to_cpu(i64 %26)
  %28 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %29 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %35 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %38 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %37, i32 0, i32 0
  %39 = call i32 @wake_up(i32* %38)
  br label %40

40:                                               ; preds = %20, %15
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
