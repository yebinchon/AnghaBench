; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_set_encryption_policy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_set_encryption_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.inode = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.inode*, %union.fscrypt_context*, i32, i32*)* }
%union.fscrypt_context = type { i32 }
%union.fscrypt_policy = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"%s (pid %d) is setting deprecated v1 encryption policy; recommend upgrading to v2.\0A\00", align 1
@current = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %union.fscrypt_policy*)* @set_encryption_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_encryption_policy(%struct.inode* %0, %union.fscrypt_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %union.fscrypt_policy*, align 8
  %6 = alloca %union.fscrypt_context, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %union.fscrypt_policy* %1, %union.fscrypt_policy** %5, align 8
  %9 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @fscrypt_supported_policy(%union.fscrypt_policy* %9, %struct.inode* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %18 = bitcast %union.fscrypt_policy* %17 to i32*
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %42 [
    i32 129, label %20
    i32 128, label %28
  ]

20:                                               ; preds = %16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_warn_once(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  br label %46

28:                                               ; preds = %16
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %33 = bitcast %union.fscrypt_policy* %32 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fscrypt_verify_key_added(%struct.TYPE_7__* %31, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %28
  br label %46

42:                                               ; preds = %16
  %43 = call i32 @WARN_ON(i32 1)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %59

46:                                               ; preds = %41, %20
  %47 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %48 = call i32 @fscrypt_new_context_from_policy(%union.fscrypt_context* %6, %union.fscrypt_policy* %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32 (%struct.inode*, %union.fscrypt_context*, i32, i32*)*, i32 (%struct.inode*, %union.fscrypt_context*, i32, i32*)** %54, align 8
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 %55(%struct.inode* %56, %union.fscrypt_context* %6, i32 %57, i32* null)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %46, %42, %39, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @fscrypt_supported_policy(%union.fscrypt_policy*, %struct.inode*) #1

declare dso_local i32 @pr_warn_once(i8*, i32, i32) #1

declare dso_local i32 @fscrypt_verify_key_added(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fscrypt_new_context_from_policy(%union.fscrypt_context*, %union.fscrypt_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
