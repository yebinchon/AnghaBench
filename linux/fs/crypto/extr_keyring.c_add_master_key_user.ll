; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_add_master_key_user.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_add_master_key_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_master_key = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.key = type { i32 }

@FSCRYPT_MK_USER_DESCRIPTION_SIZE = common dso_local global i32 0, align 4
@key_type_fscrypt_user = common dso_local global i32 0, align 4
@KEY_POS_SEARCH = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fscrypt_master_key*)* @add_master_key_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_master_key_user(%struct.fscrypt_master_key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fscrypt_master_key*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fscrypt_master_key* %0, %struct.fscrypt_master_key** %3, align 8
  %9 = load i32, i32* @FSCRYPT_MK_USER_DESCRIPTION_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %3, align 8
  %14 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @format_mk_user_description(i8* %12, i32 %17)
  %19 = call i32 (...) @current_fsuid()
  %20 = call i32 (...) @current_gid()
  %21 = call i32 (...) @current_cred()
  %22 = load i32, i32* @KEY_POS_SEARCH, align 4
  %23 = load i32, i32* @KEY_USR_VIEW, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.key* @key_alloc(i32* @key_type_fscrypt_user, i8* %12, i32 %19, i32 %20, i32 %21, i32 %24, i32 0, i32* null)
  store %struct.key* %25, %struct.key** %6, align 8
  %26 = load %struct.key*, %struct.key** %6, align 8
  %27 = call i64 @IS_ERR(%struct.key* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.key*, %struct.key** %6, align 8
  %31 = call i32 @PTR_ERR(%struct.key* %30)
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %41

32:                                               ; preds = %1
  %33 = load %struct.key*, %struct.key** %6, align 8
  %34 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %3, align 8
  %35 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @key_instantiate_and_link(%struct.key* %33, i32* null, i32 0, i32 %36, i32* null)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.key*, %struct.key** %6, align 8
  %39 = call i32 @key_put(%struct.key* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %41

41:                                               ; preds = %32, %29
  %42 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @format_mk_user_description(i8*, i32) #2

declare dso_local %struct.key* @key_alloc(i32*, i8*, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @current_fsuid(...) #2

declare dso_local i32 @current_gid(...) #2

declare dso_local i32 @current_cred(...) #2

declare dso_local i64 @IS_ERR(%struct.key*) #2

declare dso_local i32 @PTR_ERR(%struct.key*) #2

declare dso_local i32 @key_instantiate_and_link(%struct.key*, i32*, i32, i32, i32*) #2

declare dso_local i32 @key_put(%struct.key*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
