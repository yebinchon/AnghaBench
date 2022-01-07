; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup_v1.c_fscrypt_setup_v1_file_key_via_subscribed_keyrings.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup_v1.c_fscrypt_setup_v1_file_key_via_subscribed_keyrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_info = type { %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.key = type { i32 }
%struct.fscrypt_key = type { i32 }

@FSCRYPT_KEY_DESC_PREFIX = common dso_local global i64 0, align 8
@ENOKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_setup_v1_file_key_via_subscribed_keyrings(%struct.fscrypt_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fscrypt_info*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.fscrypt_key*, align 8
  %6 = alloca i32, align 4
  store %struct.fscrypt_info* %0, %struct.fscrypt_info** %3, align 8
  %7 = load i64, i64* @FSCRYPT_KEY_DESC_PREFIX, align 8
  %8 = load %struct.fscrypt_info*, %struct.fscrypt_info** %3, align 8
  %9 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.fscrypt_info*, %struct.fscrypt_info** %3, align 8
  %14 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.key* @find_and_lock_process_key(i64 %7, i32 %12, i32 %17, %struct.fscrypt_key** %5)
  store %struct.key* %18, %struct.key** %4, align 8
  %19 = load %struct.key*, %struct.key** %4, align 8
  %20 = load i32, i32* @ENOKEY, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.key* @ERR_PTR(i32 %21)
  %23 = icmp eq %struct.key* %19, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %1
  %25 = load %struct.fscrypt_info*, %struct.fscrypt_info** %3, align 8
  %26 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %24
  %36 = load %struct.fscrypt_info*, %struct.fscrypt_info** %3, align 8
  %37 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.fscrypt_info*, %struct.fscrypt_info** %3, align 8
  %46 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.fscrypt_info*, %struct.fscrypt_info** %3, align 8
  %51 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.key* @find_and_lock_process_key(i64 %44, i32 %49, i32 %54, %struct.fscrypt_key** %5)
  store %struct.key* %55, %struct.key** %4, align 8
  br label %56

56:                                               ; preds = %35, %24, %1
  %57 = load %struct.key*, %struct.key** %4, align 8
  %58 = call i64 @IS_ERR(%struct.key* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.key*, %struct.key** %4, align 8
  %62 = call i32 @PTR_ERR(%struct.key* %61)
  store i32 %62, i32* %2, align 4
  br label %75

63:                                               ; preds = %56
  %64 = load %struct.fscrypt_info*, %struct.fscrypt_info** %3, align 8
  %65 = load %struct.fscrypt_key*, %struct.fscrypt_key** %5, align 8
  %66 = getelementptr inbounds %struct.fscrypt_key, %struct.fscrypt_key* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @fscrypt_setup_v1_file_key(%struct.fscrypt_info* %64, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.key*, %struct.key** %4, align 8
  %70 = getelementptr inbounds %struct.key, %struct.key* %69, i32 0, i32 0
  %71 = call i32 @up_read(i32* %70)
  %72 = load %struct.key*, %struct.key** %4, align 8
  %73 = call i32 @key_put(%struct.key* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %63, %60
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.key* @find_and_lock_process_key(i64, i32, i32, %struct.fscrypt_key**) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @fscrypt_setup_v1_file_key(%struct.fscrypt_info*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
