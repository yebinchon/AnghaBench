; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_map_oplock_to_lease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_map_oplock_to_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMB2_OPLOCK_LEVEL_EXCLUSIVE = common dso_local global i64 0, align 8
@SMB2_LEASE_WRITE_CACHING = common dso_local global i32 0, align 4
@SMB2_LEASE_READ_CACHING = common dso_local global i32 0, align 4
@SMB2_OPLOCK_LEVEL_II = common dso_local global i64 0, align 8
@SMB2_OPLOCK_LEVEL_BATCH = common dso_local global i64 0, align 8
@SMB2_LEASE_HANDLE_CACHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @map_oplock_to_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_oplock_to_lease(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @SMB2_OPLOCK_LEVEL_EXCLUSIVE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @SMB2_LEASE_WRITE_CACHING, align 4
  %9 = load i32, i32* @SMB2_LEASE_READ_CACHING, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @SMB2_OPLOCK_LEVEL_II, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @SMB2_LEASE_READ_CACHING, align 4
  store i32 %16, i32* %2, align 4
  br label %30

17:                                               ; preds = %11
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @SMB2_OPLOCK_LEVEL_BATCH, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @SMB2_LEASE_HANDLE_CACHING, align 4
  %23 = load i32, i32* @SMB2_LEASE_READ_CACHING, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SMB2_LEASE_WRITE_CACHING, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %21, %15, %7
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
