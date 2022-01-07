; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_fscrypt_find_master_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_fscrypt_find_master_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.super_block = type { i32 }
%struct.fscrypt_key_specifier = type { i32 }

@FSCRYPT_MK_DESCRIPTION_SIZE = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@key_type_fscrypt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @fscrypt_find_master_key(%struct.super_block* %0, %struct.fscrypt_key_specifier* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fscrypt_key_specifier*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fscrypt_key_specifier* %1, %struct.fscrypt_key_specifier** %5, align 8
  %10 = load i32, i32* @FSCRYPT_MK_DESCRIPTION_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.key* @READ_ONCE(i32 %16)
  store %struct.key* %17, %struct.key** %6, align 8
  %18 = load %struct.key*, %struct.key** %6, align 8
  %19 = icmp eq %struct.key* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOKEY, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.key* @ERR_PTR(i32 %22)
  store %struct.key* %23, %struct.key** %3, align 8
  store i32 1, i32* %9, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.fscrypt_key_specifier*, %struct.fscrypt_key_specifier** %5, align 8
  %26 = call i32 @format_mk_description(i8* %13, %struct.fscrypt_key_specifier* %25)
  %27 = load %struct.key*, %struct.key** %6, align 8
  %28 = call %struct.key* @search_fscrypt_keyring(%struct.key* %27, i32* @key_type_fscrypt, i8* %13)
  store %struct.key* %28, %struct.key** %3, align 8
  store i32 1, i32* %9, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %30)
  %31 = load %struct.key*, %struct.key** %3, align 8
  ret %struct.key* %31
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.key* @READ_ONCE(i32) #2

declare dso_local %struct.key* @ERR_PTR(i32) #2

declare dso_local i32 @format_mk_description(i8*, %struct.fscrypt_key_specifier*) #2

declare dso_local %struct.key* @search_fscrypt_keyring(%struct.key*, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
