; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_add_new_master_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_add_new_master_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_master_key_secret = type { i32 }
%struct.fscrypt_key_specifier = type { i64 }
%struct.key = type { i32 }
%struct.fscrypt_master_key = type { i32, i32, i32, i32, i32, %struct.fscrypt_key_specifier }

@FSCRYPT_MK_DESCRIPTION_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER = common dso_local global i64 0, align 8
@key_type_fscrypt = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@KEY_POS_SEARCH = common dso_local global i32 0, align 4
@KEY_USR_SEARCH = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_ALLOC_NOT_IN_QUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fscrypt_master_key_secret*, %struct.fscrypt_key_specifier*, %struct.key*)* @add_new_master_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_new_master_key(%struct.fscrypt_master_key_secret* %0, %struct.fscrypt_key_specifier* %1, %struct.key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fscrypt_master_key_secret*, align 8
  %6 = alloca %struct.fscrypt_key_specifier*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.fscrypt_master_key*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fscrypt_master_key_secret* %0, %struct.fscrypt_master_key_secret** %5, align 8
  store %struct.fscrypt_key_specifier* %1, %struct.fscrypt_key_specifier** %6, align 8
  store %struct.key* %2, %struct.key** %7, align 8
  %14 = load i32, i32* @FSCRYPT_MK_DESCRIPTION_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.fscrypt_master_key* @kzalloc(i32 32, i32 %18)
  store %struct.fscrypt_master_key* %19, %struct.fscrypt_master_key** %8, align 8
  %20 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %8, align 8
  %21 = icmp ne %struct.fscrypt_master_key* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %99

25:                                               ; preds = %3
  %26 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %8, align 8
  %27 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %26, i32 0, i32 5
  %28 = load %struct.fscrypt_key_specifier*, %struct.fscrypt_key_specifier** %6, align 8
  %29 = bitcast %struct.fscrypt_key_specifier* %27 to i8*
  %30 = bitcast %struct.fscrypt_key_specifier* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  %31 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %8, align 8
  %32 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %31, i32 0, i32 4
  %33 = load %struct.fscrypt_master_key_secret*, %struct.fscrypt_master_key_secret** %5, align 8
  %34 = call i32 @move_master_key_secret(i32* %32, %struct.fscrypt_master_key_secret* %33)
  %35 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %8, align 8
  %36 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %35, i32 0, i32 3
  %37 = call i32 @init_rwsem(i32* %36)
  %38 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %8, align 8
  %39 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %38, i32 0, i32 2
  %40 = call i32 @refcount_set(i32* %39, i32 1)
  %41 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %8, align 8
  %42 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %41, i32 0, i32 1
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %8, align 8
  %45 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.fscrypt_key_specifier*, %struct.fscrypt_key_specifier** %6, align 8
  %48 = getelementptr inbounds %struct.fscrypt_key_specifier, %struct.fscrypt_key_specifier* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %25
  %53 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %8, align 8
  %54 = call i32 @allocate_master_key_users_keyring(%struct.fscrypt_master_key* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %95

58:                                               ; preds = %52
  %59 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %8, align 8
  %60 = call i32 @add_master_key_user(%struct.fscrypt_master_key* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %95

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %25
  %66 = load %struct.fscrypt_key_specifier*, %struct.fscrypt_key_specifier** %6, align 8
  %67 = call i32 @format_mk_description(i8* %17, %struct.fscrypt_key_specifier* %66)
  %68 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %69 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %70 = call i32 (...) @current_cred()
  %71 = load i32, i32* @KEY_POS_SEARCH, align 4
  %72 = load i32, i32* @KEY_USR_SEARCH, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @KEY_USR_VIEW, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @KEY_ALLOC_NOT_IN_QUOTA, align 4
  %77 = call %struct.key* @key_alloc(i32* @key_type_fscrypt, i8* %17, i32 %68, i32 %69, i32 %70, i32 %75, i32 %76, i32* null)
  store %struct.key* %77, %struct.key** %11, align 8
  %78 = load %struct.key*, %struct.key** %11, align 8
  %79 = call i64 @IS_ERR(%struct.key* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %65
  %82 = load %struct.key*, %struct.key** %11, align 8
  %83 = call i32 @PTR_ERR(%struct.key* %82)
  store i32 %83, i32* %12, align 4
  br label %95

84:                                               ; preds = %65
  %85 = load %struct.key*, %struct.key** %11, align 8
  %86 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %8, align 8
  %87 = load %struct.key*, %struct.key** %7, align 8
  %88 = call i32 @key_instantiate_and_link(%struct.key* %85, %struct.fscrypt_master_key* %86, i32 32, %struct.key* %87, i32* null)
  store i32 %88, i32* %12, align 4
  %89 = load %struct.key*, %struct.key** %11, align 8
  %90 = call i32 @key_put(%struct.key* %89)
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %95

94:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %99

95:                                               ; preds = %93, %81, %63, %57
  %96 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %8, align 8
  %97 = call i32 @free_master_key(%struct.fscrypt_master_key* %96)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %99

99:                                               ; preds = %95, %94, %22
  %100 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.fscrypt_master_key* @kzalloc(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @move_master_key_secret(i32*, %struct.fscrypt_master_key_secret*) #2

declare dso_local i32 @init_rwsem(i32*) #2

declare dso_local i32 @refcount_set(i32*, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @allocate_master_key_users_keyring(%struct.fscrypt_master_key*) #2

declare dso_local i32 @add_master_key_user(%struct.fscrypt_master_key*) #2

declare dso_local i32 @format_mk_description(i8*, %struct.fscrypt_key_specifier*) #2

declare dso_local %struct.key* @key_alloc(i32*, i8*, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @current_cred(...) #2

declare dso_local i64 @IS_ERR(%struct.key*) #2

declare dso_local i32 @PTR_ERR(%struct.key*) #2

declare dso_local i32 @key_instantiate_and_link(%struct.key*, %struct.fscrypt_master_key*, i32, %struct.key*, i32*) #2

declare dso_local i32 @key_put(%struct.key*) #2

declare dso_local i32 @free_master_key(%struct.fscrypt_master_key*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
