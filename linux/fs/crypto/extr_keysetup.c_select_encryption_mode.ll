; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_select_encryption_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_select_encryption_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_mode = type { i32 }
%union.fscrypt_policy = type { i32 }
%struct.inode = type { i32, i32 }

@available_modes = common dso_local global %struct.fscrypt_mode* null, align 8
@.str = private unnamed_addr constant [106 x i8] c"fscrypt: filesystem tried to load encryption info for inode %lu, which is not encryptable (file type %d)\0A\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscrypt_mode* (%union.fscrypt_policy*, %struct.inode*)* @select_encryption_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscrypt_mode* @select_encryption_mode(%union.fscrypt_policy* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.fscrypt_mode*, align 8
  %4 = alloca %union.fscrypt_policy*, align 8
  %5 = alloca %struct.inode*, align 8
  store %union.fscrypt_policy* %0, %union.fscrypt_policy** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %6 = load %struct.inode*, %struct.inode** %5, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @S_ISREG(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** @available_modes, align 8
  %13 = load %union.fscrypt_policy*, %union.fscrypt_policy** %4, align 8
  %14 = call i64 @fscrypt_policy_contents_mode(%union.fscrypt_policy* %13)
  %15 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %12, i64 %14
  store %struct.fscrypt_mode* %15, %struct.fscrypt_mode** %3, align 8
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @S_ISDIR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISLNK(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22, %16
  %29 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** @available_modes, align 8
  %30 = load %union.fscrypt_policy*, %union.fscrypt_policy** %4, align 8
  %31 = call i64 @fscrypt_policy_fnames_mode(%union.fscrypt_policy* %30)
  %32 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %29, i64 %31
  store %struct.fscrypt_mode* %32, %struct.fscrypt_mode** %3, align 8
  br label %46

33:                                               ; preds = %22
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @S_IFMT, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.fscrypt_mode* @ERR_PTR(i32 %44)
  store %struct.fscrypt_mode* %45, %struct.fscrypt_mode** %3, align 8
  br label %46

46:                                               ; preds = %33, %28, %11
  %47 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %3, align 8
  ret %struct.fscrypt_mode* %47
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @fscrypt_policy_contents_mode(%union.fscrypt_policy*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @fscrypt_policy_fnames_mode(%union.fscrypt_policy*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local %struct.fscrypt_mode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
