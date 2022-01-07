; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_ecryptfs_verify_version.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_ecryptfs_verify_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECRYPTFS_VERSION_MAJOR = common dso_local global i8 0, align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Major version number mismatch. Expected [%d]; got [%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ECRYPTFS_VERSION_MINOR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Minor version number mismatch. Expected [%d]; got [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ecryptfs_verify_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_verify_version(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 8
  %8 = and i32 %7, 255
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %4, align 1
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 255
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %5, align 1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @ECRYPTFS_VERSION_MAJOR, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @KERN_ERR, align 4
  %20 = load i8, i8* @ECRYPTFS_VERSION_MAJOR, align 1
  %21 = load i8, i8* %4, align 1
  %22 = call i32 @ecryptfs_printk(i32 %19, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8 zeroext %20, i8 zeroext %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %1
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @ECRYPTFS_VERSION_MINOR, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = load i8, i8* @ECRYPTFS_VERSION_MINOR, align 1
  %34 = load i8, i8* %5, align 1
  %35 = call i32 @ecryptfs_printk(i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %33, i8 zeroext %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %31, %18
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @ecryptfs_printk(i32, i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
