; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_fscrypt_setup_v2_file_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_fscrypt_setup_v2_file_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_info = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.fscrypt_master_key = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FSCRYPT_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@FSCRYPT_POLICY_FLAG_DIRECT_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Direct key flag not allowed with %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HKDF_CONTEXT_PER_FILE_KEY = common dso_local global i32 0, align 4
@FS_KEY_DERIVATION_NONCE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fscrypt_info*, %struct.fscrypt_master_key*)* @fscrypt_setup_v2_file_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscrypt_setup_v2_file_key(%struct.fscrypt_info* %0, %struct.fscrypt_master_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fscrypt_info*, align 8
  %5 = alloca %struct.fscrypt_master_key*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fscrypt_info* %0, %struct.fscrypt_info** %4, align 8
  store %struct.fscrypt_master_key* %1, %struct.fscrypt_master_key** %5, align 8
  %10 = load i32, i32* @FSCRYPT_MAX_KEY_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %15 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FSCRYPT_POLICY_FLAG_DIRECT_KEY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %2
  %23 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %24 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call i32 @fscrypt_mode_supports_direct_key(%struct.TYPE_8__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %30 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %33 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @fscrypt_warn(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %73

40:                                               ; preds = %22
  %41 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %42 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %5, align 8
  %43 = call i32 @setup_per_mode_key(%struct.fscrypt_info* %41, %struct.fscrypt_master_key* %42)
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %73

44:                                               ; preds = %2
  %45 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %5, align 8
  %46 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* @HKDF_CONTEXT_PER_FILE_KEY, align 4
  %49 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %50 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FS_KEY_DERIVATION_NONCE_SIZE, align 4
  %53 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %54 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fscrypt_hkdf_expand(i32* %47, i32 %48, i32 %51, i32 %52, i32* %13, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %44
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %73

63:                                               ; preds = %44
  %64 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %65 = call i32 @fscrypt_set_derived_key(%struct.fscrypt_info* %64, i32* %13)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %67 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memzero_explicit(i32* %13, i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %63, %61, %40, %28
  %74 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fscrypt_mode_supports_direct_key(%struct.TYPE_8__*) #2

declare dso_local i32 @fscrypt_warn(i32, i8*, i32) #2

declare dso_local i32 @setup_per_mode_key(%struct.fscrypt_info*, %struct.fscrypt_master_key*) #2

declare dso_local i32 @fscrypt_hkdf_expand(i32*, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @fscrypt_set_derived_key(%struct.fscrypt_info*, i32*) #2

declare dso_local i32 @memzero_explicit(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
