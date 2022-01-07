; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_get_policy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_get_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.inode*, %union.fscrypt_context*, i32)* }
%union.fscrypt_context = type { i32 }
%union.fscrypt_policy = type { i32 }
%struct.fscrypt_info = type { %union.fscrypt_policy }

@ENODATA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %union.fscrypt_policy*)* @fscrypt_get_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscrypt_get_policy(%struct.inode* %0, %union.fscrypt_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %union.fscrypt_policy*, align 8
  %6 = alloca %struct.fscrypt_info*, align 8
  %7 = alloca %union.fscrypt_context, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %union.fscrypt_policy* %1, %union.fscrypt_policy** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.fscrypt_info* @READ_ONCE(i32 %11)
  store %struct.fscrypt_info* %12, %struct.fscrypt_info** %6, align 8
  %13 = load %struct.fscrypt_info*, %struct.fscrypt_info** %6, align 8
  %14 = icmp ne %struct.fscrypt_info* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %17 = load %struct.fscrypt_info*, %struct.fscrypt_info** %6, align 8
  %18 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %17, i32 0, i32 0
  %19 = bitcast %union.fscrypt_policy* %16 to i8*
  %20 = bitcast %union.fscrypt_policy* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %56

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @IS_ENCRYPTED(%struct.inode* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENODATA, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.inode*, %union.fscrypt_context*, i32)*, i32 (%struct.inode*, %union.fscrypt_context*, i32)** %34, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i32 %35(%struct.inode* %36, %union.fscrypt_context* %7, i32 4)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ERANGE, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %47, %45 ], [ %49, %48 ]
  store i32 %51, i32* %3, align 4
  br label %56

52:                                               ; preds = %28
  %53 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @fscrypt_policy_from_context(%union.fscrypt_policy* %53, %union.fscrypt_context* %7, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %50, %25, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.fscrypt_info* @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @fscrypt_policy_from_context(%union.fscrypt_policy*, %union.fscrypt_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
