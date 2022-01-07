; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_add_existing_master_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_add_existing_master_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_master_key = type { i32, i32, i32, i64 }
%struct.fscrypt_master_key_secret = type { i32 }
%struct.key = type { i32 }

@ENOKEY = common dso_local global i32 0, align 4
@KEY_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fscrypt_master_key*, %struct.fscrypt_master_key_secret*)* @add_existing_master_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_existing_master_key(%struct.fscrypt_master_key* %0, %struct.fscrypt_master_key_secret* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fscrypt_master_key*, align 8
  %5 = alloca %struct.fscrypt_master_key_secret*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fscrypt_master_key* %0, %struct.fscrypt_master_key** %4, align 8
  store %struct.fscrypt_master_key_secret* %1, %struct.fscrypt_master_key_secret** %5, align 8
  %9 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %10 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %15 = call %struct.key* @find_master_key_user(%struct.fscrypt_master_key* %14)
  store %struct.key* %15, %struct.key** %6, align 8
  %16 = load %struct.key*, %struct.key** %6, align 8
  %17 = load i32, i32* @ENOKEY, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.key* @ERR_PTR(i32 %18)
  %20 = icmp ne %struct.key* %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load %struct.key*, %struct.key** %6, align 8
  %23 = call i64 @IS_ERR(%struct.key* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.key*, %struct.key** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.key* %26)
  store i32 %27, i32* %3, align 4
  br label %86

28:                                               ; preds = %21
  %29 = load %struct.key*, %struct.key** %6, align 8
  %30 = call i32 @key_put(%struct.key* %29)
  store i32 0, i32* %3, align 4
  br label %86

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %34 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %33, i32 0, i32 1
  %35 = call i32 @is_master_key_secret_present(i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %43 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %42, i32 0, i32 2
  %44 = call i32 @refcount_inc_not_zero(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @KEY_DEAD, align 4
  store i32 %47, i32* %3, align 4
  br label %86

48:                                               ; preds = %41, %32
  %49 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %50 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %55 = call i32 @add_master_key_user(%struct.fscrypt_master_key* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %63 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %62, i32 0, i32 2
  %64 = call i64 @refcount_dec_and_test(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @KEY_DEAD, align 4
  store i32 %67, i32* %3, align 4
  br label %86

68:                                               ; preds = %61, %58
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %86

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %48
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %76 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %75, i32 0, i32 0
  %77 = call i32 @down_write(i32* %76)
  %78 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %79 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %78, i32 0, i32 1
  %80 = load %struct.fscrypt_master_key_secret*, %struct.fscrypt_master_key_secret** %5, align 8
  %81 = call i32 @move_master_key_secret(i32* %79, %struct.fscrypt_master_key_secret* %80)
  %82 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %4, align 8
  %83 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %82, i32 0, i32 0
  %84 = call i32 @up_write(i32* %83)
  br label %85

85:                                               ; preds = %74, %71
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %68, %66, %46, %28, %25
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.key* @find_master_key_user(%struct.fscrypt_master_key*) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @is_master_key_secret_present(i32*) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @add_master_key_user(%struct.fscrypt_master_key*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @move_master_key_secret(i32*, %struct.fscrypt_master_key_secret*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
