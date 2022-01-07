; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_ecryptfs_kernel.h_ecryptfs_get_key_payload_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_ecryptfs_kernel.h_ecryptfs_get_key_payload_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_auth_tok = type { i32 }
%struct.key = type { i32 }
%struct.user_key_payload = type { i64 }

@EKEYREVOKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ecryptfs_auth_tok* (%struct.key*)* @ecryptfs_get_key_payload_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ecryptfs_auth_tok* @ecryptfs_get_key_payload_data(%struct.key* %0) #0 {
  %2 = alloca %struct.ecryptfs_auth_tok*, align 8
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.ecryptfs_auth_tok*, align 8
  %5 = alloca %struct.user_key_payload*, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  %6 = load %struct.key*, %struct.key** %3, align 8
  %7 = call %struct.ecryptfs_auth_tok* @ecryptfs_get_encrypted_key_payload_data(%struct.key* %6)
  store %struct.ecryptfs_auth_tok* %7, %struct.ecryptfs_auth_tok** %4, align 8
  %8 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %4, align 8
  %9 = icmp ne %struct.ecryptfs_auth_tok* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %4, align 8
  store %struct.ecryptfs_auth_tok* %11, %struct.ecryptfs_auth_tok** %2, align 8
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.key*, %struct.key** %3, align 8
  %14 = call %struct.user_key_payload* @user_key_payload_locked(%struct.key* %13)
  store %struct.user_key_payload* %14, %struct.user_key_payload** %5, align 8
  %15 = load %struct.user_key_payload*, %struct.user_key_payload** %5, align 8
  %16 = icmp ne %struct.user_key_payload* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @EKEYREVOKED, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ecryptfs_auth_tok* @ERR_PTR(i32 %19)
  store %struct.ecryptfs_auth_tok* %20, %struct.ecryptfs_auth_tok** %2, align 8
  br label %26

21:                                               ; preds = %12
  %22 = load %struct.user_key_payload*, %struct.user_key_payload** %5, align 8
  %23 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ecryptfs_auth_tok*
  store %struct.ecryptfs_auth_tok* %25, %struct.ecryptfs_auth_tok** %2, align 8
  br label %26

26:                                               ; preds = %21, %17, %10
  %27 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  ret %struct.ecryptfs_auth_tok* %27
}

declare dso_local %struct.ecryptfs_auth_tok* @ecryptfs_get_encrypted_key_payload_data(%struct.key*) #1

declare dso_local %struct.user_key_payload* @user_key_payload_locked(%struct.key*) #1

declare dso_local %struct.ecryptfs_auth_tok* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
