; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_fscrypt_verify_key_added.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_fscrypt_verify_key_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fscrypt_key_specifier = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fscrypt_master_key** }
%struct.fscrypt_master_key = type { i32 }

@FSCRYPT_KEY_IDENTIFIER_SIZE = common dso_local global i32 0, align 4
@FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@CAP_FOWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_verify_key_added(%struct.super_block* %0, i32* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fscrypt_key_specifier, align 4
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.fscrypt_master_key*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @FSCRYPT_KEY_IDENTIFIER_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* @FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER, align 4
  %13 = getelementptr inbounds %struct.fscrypt_key_specifier, %struct.fscrypt_key_specifier* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.fscrypt_key_specifier, %struct.fscrypt_key_specifier* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @FSCRYPT_KEY_IDENTIFIER_SIZE, align 4
  %19 = call i32 @memcpy(i32 %16, i32* %17, i32 %18)
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = call %struct.key* @fscrypt_find_master_key(%struct.super_block* %20, %struct.fscrypt_key_specifier* %5)
  store %struct.key* %21, %struct.key** %6, align 8
  %22 = load %struct.key*, %struct.key** %6, align 8
  %23 = call i64 @IS_ERR(%struct.key* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.key*, %struct.key** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.key* %26)
  store i32 %27, i32* %9, align 4
  br label %49

28:                                               ; preds = %2
  %29 = load %struct.key*, %struct.key** %6, align 8
  %30 = getelementptr inbounds %struct.key, %struct.key* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.fscrypt_master_key**, %struct.fscrypt_master_key*** %31, align 8
  %33 = getelementptr inbounds %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %32, i64 0
  %34 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %33, align 8
  store %struct.fscrypt_master_key* %34, %struct.fscrypt_master_key** %8, align 8
  %35 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %8, align 8
  %36 = call %struct.key* @find_master_key_user(%struct.fscrypt_master_key* %35)
  store %struct.key* %36, %struct.key** %7, align 8
  %37 = load %struct.key*, %struct.key** %7, align 8
  %38 = call i64 @IS_ERR(%struct.key* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load %struct.key*, %struct.key** %7, align 8
  %42 = call i32 @PTR_ERR(%struct.key* %41)
  store i32 %42, i32* %9, align 4
  br label %46

43:                                               ; preds = %28
  %44 = load %struct.key*, %struct.key** %7, align 8
  %45 = call i32 @key_put(%struct.key* %44)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.key*, %struct.key** %6, align 8
  %48 = call i32 @key_put(%struct.key* %47)
  br label %49

49:                                               ; preds = %46, %25
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ENOKEY, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @CAP_FOWNER, align 4
  %56 = call i64 @capable(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %54, %49
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.key* @fscrypt_find_master_key(%struct.super_block*, %struct.fscrypt_key_specifier*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local %struct.key* @find_master_key_user(%struct.fscrypt_master_key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
