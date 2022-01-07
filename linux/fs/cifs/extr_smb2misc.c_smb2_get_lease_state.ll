; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2misc.c_smb2_get_lease_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2misc.c_smb2_get_lease_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsInodeInfo = type { i32 }

@SMB2_LEASE_WRITE_CACHING = common dso_local global i32 0, align 4
@SMB2_LEASE_HANDLE_CACHING = common dso_local global i32 0, align 4
@SMB2_LEASE_READ_CACHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb2_get_lease_state(%struct.cifsInodeInfo* %0) #0 {
  %2 = alloca %struct.cifsInodeInfo*, align 8
  %3 = alloca i32, align 4
  store %struct.cifsInodeInfo* %0, %struct.cifsInodeInfo** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %2, align 8
  %5 = call i64 @CIFS_CACHE_WRITE(%struct.cifsInodeInfo* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @SMB2_LEASE_WRITE_CACHING, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %2, align 8
  %13 = call i64 @CIFS_CACHE_HANDLE(%struct.cifsInodeInfo* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @SMB2_LEASE_HANDLE_CACHING, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %2, align 8
  %21 = call i64 @CIFS_CACHE_READ(%struct.cifsInodeInfo* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @SMB2_LEASE_READ_CACHING, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @CIFS_CACHE_WRITE(%struct.cifsInodeInfo*) #1

declare dso_local i64 @CIFS_CACHE_HANDLE(%struct.cifsInodeInfo*) #1

declare dso_local i64 @CIFS_CACHE_READ(%struct.cifsInodeInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
