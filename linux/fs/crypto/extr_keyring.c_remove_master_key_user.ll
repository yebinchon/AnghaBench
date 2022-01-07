; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_remove_master_key_user.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_remove_master_key_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_master_key = type { i32 }
%struct.key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fscrypt_master_key*)* @remove_master_key_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_master_key_user(%struct.fscrypt_master_key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fscrypt_master_key*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca i32, align 4
  store %struct.fscrypt_master_key* %0, %struct.fscrypt_master_key** %3, align 8
  %6 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %3, align 8
  %7 = call %struct.key* @find_master_key_user(%struct.fscrypt_master_key* %6)
  store %struct.key* %7, %struct.key** %4, align 8
  %8 = load %struct.key*, %struct.key** %4, align 8
  %9 = call i64 @IS_ERR(%struct.key* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.key*, %struct.key** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.key* %12)
  store i32 %13, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %3, align 8
  %16 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.key*, %struct.key** %4, align 8
  %19 = call i32 @key_unlink(i32 %17, %struct.key* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.key*, %struct.key** %4, align 8
  %21 = call i32 @key_put(%struct.key* %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %14, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.key* @find_master_key_user(%struct.fscrypt_master_key*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @key_unlink(i32, %struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
