; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup_v1.c_find_and_lock_process_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup_v1.c_find_and_lock_process_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32 }
%struct.fscrypt_key = type { i32 }
%struct.user_key_payload = type { i32, i64 }

@FSCRYPT_KEY_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s%*phN\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@key_type_logon = common dso_local global i32 0, align 4
@FSCRYPT_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"key with description '%s' has invalid payload\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"key with description '%s' is too short (got %u bytes, need %u+ bytes)\00", align 1
@ENOKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key* (i8*, i32*, i32, %struct.fscrypt_key**)* @find_and_lock_process_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key* @find_and_lock_process_key(i8* %0, i32* %1, i32 %2, %struct.fscrypt_key** %3) #0 {
  %5 = alloca %struct.key*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fscrypt_key**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca %struct.user_key_payload*, align 8
  %13 = alloca %struct.fscrypt_key*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fscrypt_key** %3, %struct.fscrypt_key*** %9, align 8
  %14 = load i32, i32* @FSCRYPT_KEY_DESCRIPTOR_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* @GFP_NOFS, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @FSCRYPT_KEY_DESCRIPTOR_SIZE, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i8* @kasprintf(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18, i32* %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.key* @ERR_PTR(i32 %25)
  store %struct.key* %26, %struct.key** %5, align 8
  br label %100

27:                                               ; preds = %4
  %28 = load i8*, i8** %10, align 8
  %29 = call %struct.key* @request_key(i32* @key_type_logon, i8* %28, i32* null)
  store %struct.key* %29, %struct.key** %11, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @kfree(i8* %30)
  %32 = load %struct.key*, %struct.key** %11, align 8
  %33 = call i64 @IS_ERR(%struct.key* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load %struct.key*, %struct.key** %11, align 8
  store %struct.key* %36, %struct.key** %5, align 8
  br label %100

37:                                               ; preds = %27
  %38 = load %struct.key*, %struct.key** %11, align 8
  %39 = getelementptr inbounds %struct.key, %struct.key* %38, i32 0, i32 0
  %40 = call i32 @down_read(i32* %39)
  %41 = load %struct.key*, %struct.key** %11, align 8
  %42 = call %struct.user_key_payload* @user_key_payload_locked(%struct.key* %41)
  store %struct.user_key_payload* %42, %struct.user_key_payload** %12, align 8
  %43 = load %struct.user_key_payload*, %struct.user_key_payload** %12, align 8
  %44 = icmp ne %struct.user_key_payload* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %91

46:                                               ; preds = %37
  %47 = load %struct.user_key_payload*, %struct.user_key_payload** %12, align 8
  %48 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.fscrypt_key*
  store %struct.fscrypt_key* %50, %struct.fscrypt_key** %13, align 8
  %51 = load %struct.user_key_payload*, %struct.user_key_payload** %12, align 8
  %52 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 4
  br i1 %55, label %67, label %56

56:                                               ; preds = %46
  %57 = load %struct.fscrypt_key*, %struct.fscrypt_key** %13, align 8
  %58 = getelementptr inbounds %struct.fscrypt_key, %struct.fscrypt_key* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load %struct.fscrypt_key*, %struct.fscrypt_key** %13, align 8
  %63 = getelementptr inbounds %struct.fscrypt_key, %struct.fscrypt_key* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @FSCRYPT_MAX_KEY_SIZE, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61, %56, %46
  %68 = load %struct.key*, %struct.key** %11, align 8
  %69 = getelementptr inbounds %struct.key, %struct.key* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32*, i8*, i32, ...) @fscrypt_warn(i32* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %91

72:                                               ; preds = %61
  %73 = load %struct.fscrypt_key*, %struct.fscrypt_key** %13, align 8
  %74 = getelementptr inbounds %struct.fscrypt_key, %struct.fscrypt_key* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.key*, %struct.key** %11, align 8
  %80 = getelementptr inbounds %struct.key, %struct.key* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fscrypt_key*, %struct.fscrypt_key** %13, align 8
  %83 = getelementptr inbounds %struct.fscrypt_key, %struct.fscrypt_key* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32*, i8*, i32, ...) @fscrypt_warn(i32* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %84, i32 %85)
  br label %91

87:                                               ; preds = %72
  %88 = load %struct.fscrypt_key*, %struct.fscrypt_key** %13, align 8
  %89 = load %struct.fscrypt_key**, %struct.fscrypt_key*** %9, align 8
  store %struct.fscrypt_key* %88, %struct.fscrypt_key** %89, align 8
  %90 = load %struct.key*, %struct.key** %11, align 8
  store %struct.key* %90, %struct.key** %5, align 8
  br label %100

91:                                               ; preds = %78, %67, %45
  %92 = load %struct.key*, %struct.key** %11, align 8
  %93 = getelementptr inbounds %struct.key, %struct.key* %92, i32 0, i32 0
  %94 = call i32 @up_read(i32* %93)
  %95 = load %struct.key*, %struct.key** %11, align 8
  %96 = call i32 @key_put(%struct.key* %95)
  %97 = load i32, i32* @ENOKEY, align 4
  %98 = sub nsw i32 0, %97
  %99 = call %struct.key* @ERR_PTR(i32 %98)
  store %struct.key* %99, %struct.key** %5, align 8
  br label %100

100:                                              ; preds = %91, %87, %35, %23
  %101 = load %struct.key*, %struct.key** %5, align 8
  ret %struct.key* %101
}

declare dso_local i8* @kasprintf(i32, i8*, i8*, i32, i32*) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local %struct.key* @request_key(i32*, i8*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.user_key_payload* @user_key_payload_locked(%struct.key*) #1

declare dso_local i32 @fscrypt_warn(i32*, i8*, i32, ...) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
