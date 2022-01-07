; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_fscrypt_drop_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_fscrypt_drop_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fscrypt_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fscrypt_master_key** }
%struct.fscrypt_master_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_drop_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.fscrypt_info*, align 8
  %5 = alloca %struct.fscrypt_master_key*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.fscrypt_info* @READ_ONCE(i32 %8)
  store %struct.fscrypt_info* %9, %struct.fscrypt_info** %4, align 8
  %10 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %11 = icmp ne %struct.fscrypt_info* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %14 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %33

18:                                               ; preds = %12
  %19 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %20 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.fscrypt_master_key**, %struct.fscrypt_master_key*** %23, align 8
  %25 = getelementptr inbounds %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %24, i64 0
  %26 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %25, align 8
  store %struct.fscrypt_master_key* %26, %struct.fscrypt_master_key** %5, align 8
  %27 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %5, align 8
  %28 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %27, i32 0, i32 0
  %29 = call i32 @is_master_key_secret_present(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %18, %17
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.fscrypt_info* @READ_ONCE(i32) #1

declare dso_local i32 @is_master_key_secret_present(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
