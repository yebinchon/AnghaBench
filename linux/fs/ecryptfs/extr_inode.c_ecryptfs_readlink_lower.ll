; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_readlink_lower.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_readlink_lower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, i64*)* @ecryptfs_readlink_lower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ecryptfs_readlink_lower(%struct.dentry* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i32, i32* @done, align 4
  %11 = call i32 @DEFINE_DELAYED_CALL(i32 %10)
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %12)
  store %struct.dentry* %13, %struct.dentry** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = call i8* @vfs_get_link(%struct.dentry* %14, i32* @done)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @IS_ERR(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @ERR_CAST(i8* %20)
  store i8* %21, i8** %3, align 8
  br label %39

22:                                               ; preds = %2
  %23 = load i64*, i64** %5, align 8
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = call i32 @ecryptfs_decode_and_decrypt_filename(i8** %8, i64* %23, i32 %26, i8* %27, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = call i32 @do_delayed_call(i32* @done)
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* %9, align 4
  %36 = call i8* @ERR_PTR(i32 %35)
  store i8* %36, i8** %3, align 8
  br label %39

37:                                               ; preds = %22
  %38 = load i8*, i8** %8, align 8
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %37, %34, %19
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i32 @DEFINE_DELAYED_CALL(i32) #1

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i8* @vfs_get_link(%struct.dentry*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @ERR_CAST(i8*) #1

declare dso_local i32 @ecryptfs_decode_and_decrypt_filename(i8**, i64*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @do_delayed_call(i32*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
