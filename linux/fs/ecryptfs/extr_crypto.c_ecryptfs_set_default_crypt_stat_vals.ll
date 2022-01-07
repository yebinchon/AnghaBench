; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_set_default_crypt_stat_vals.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_set_default_crypt_stat_vals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { %struct.ecryptfs_mount_crypt_stat*, i32, i32, i32, i32 }
%struct.ecryptfs_mount_crypt_stat = type { i32 }

@ECRYPTFS_DEFAULT_CIPHER = common dso_local global i32 0, align 4
@ECRYPTFS_DEFAULT_KEY_BYTES = common dso_local global i32 0, align 4
@ECRYPTFS_KEY_VALID = common dso_local global i32 0, align 4
@ECRYPTFS_FILE_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecryptfs_crypt_stat*, %struct.ecryptfs_mount_crypt_stat*)* @ecryptfs_set_default_crypt_stat_vals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecryptfs_set_default_crypt_stat_vals(%struct.ecryptfs_crypt_stat* %0, %struct.ecryptfs_mount_crypt_stat* %1) #0 {
  %3 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %4 = alloca %struct.ecryptfs_mount_crypt_stat*, align 8
  store %struct.ecryptfs_crypt_stat* %0, %struct.ecryptfs_crypt_stat** %3, align 8
  store %struct.ecryptfs_mount_crypt_stat* %1, %struct.ecryptfs_mount_crypt_stat** %4, align 8
  %5 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %6 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %4, align 8
  %7 = call i32 @ecryptfs_copy_mount_wide_flags_to_inode_flags(%struct.ecryptfs_crypt_stat* %5, %struct.ecryptfs_mount_crypt_stat* %6)
  %8 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %9 = call i32 @ecryptfs_set_default_sizes(%struct.ecryptfs_crypt_stat* %8)
  %10 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %11 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ECRYPTFS_DEFAULT_CIPHER, align 4
  %14 = call i32 @strcpy(i32 %12, i32 %13)
  %15 = load i32, i32* @ECRYPTFS_DEFAULT_KEY_BYTES, align 4
  %16 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %17 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @ECRYPTFS_KEY_VALID, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %21 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @ECRYPTFS_FILE_VERSION, align 4
  %25 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %26 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %4, align 8
  %28 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %3, align 8
  %29 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %28, i32 0, i32 0
  store %struct.ecryptfs_mount_crypt_stat* %27, %struct.ecryptfs_mount_crypt_stat** %29, align 8
  ret void
}

declare dso_local i32 @ecryptfs_copy_mount_wide_flags_to_inode_flags(%struct.ecryptfs_crypt_stat*, %struct.ecryptfs_mount_crypt_stat*) #1

declare dso_local i32 @ecryptfs_set_default_sizes(%struct.ecryptfs_crypt_stat*) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
