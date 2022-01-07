; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup_v1.c_fscrypt_get_direct_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup_v1.c_fscrypt_get_direct_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_direct_key = type { i32, i32, i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fscrypt_info = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSCRYPT_KEY_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscrypt_direct_key* (%struct.fscrypt_info*, i32*)* @fscrypt_get_direct_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscrypt_direct_key* @fscrypt_get_direct_key(%struct.fscrypt_info* %0, i32* %1) #0 {
  %3 = alloca %struct.fscrypt_direct_key*, align 8
  %4 = alloca %struct.fscrypt_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.fscrypt_direct_key*, align 8
  %7 = alloca i32, align 4
  store %struct.fscrypt_info* %0, %struct.fscrypt_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %10 = call %struct.fscrypt_direct_key* @find_or_insert_direct_key(%struct.fscrypt_direct_key* null, i32* %8, %struct.fscrypt_info* %9)
  store %struct.fscrypt_direct_key* %10, %struct.fscrypt_direct_key** %6, align 8
  %11 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  %12 = icmp ne %struct.fscrypt_direct_key* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  store %struct.fscrypt_direct_key* %14, %struct.fscrypt_direct_key** %3, align 8
  br label %85

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_NOFS, align 4
  %17 = call %struct.fscrypt_direct_key* @kzalloc(i32 32, i32 %16)
  store %struct.fscrypt_direct_key* %17, %struct.fscrypt_direct_key** %6, align 8
  %18 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  %19 = icmp ne %struct.fscrypt_direct_key* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.fscrypt_direct_key* @ERR_PTR(i32 %22)
  store %struct.fscrypt_direct_key* %23, %struct.fscrypt_direct_key** %3, align 8
  br label %85

24:                                               ; preds = %15
  %25 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  %26 = getelementptr inbounds %struct.fscrypt_direct_key, %struct.fscrypt_direct_key* %25, i32 0, i32 4
  %27 = call i32 @refcount_set(i32* %26, i32 1)
  %28 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %29 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  %32 = getelementptr inbounds %struct.fscrypt_direct_key, %struct.fscrypt_direct_key* %31, i32 0, i32 3
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %34 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %38 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32* @fscrypt_allocate_skcipher(%struct.TYPE_6__* %35, i32* %36, i32 %39)
  %41 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  %42 = getelementptr inbounds %struct.fscrypt_direct_key, %struct.fscrypt_direct_key* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  %44 = getelementptr inbounds %struct.fscrypt_direct_key, %struct.fscrypt_direct_key* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @IS_ERR(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %24
  %49 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  %50 = getelementptr inbounds %struct.fscrypt_direct_key, %struct.fscrypt_direct_key* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @PTR_ERR(i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  %54 = getelementptr inbounds %struct.fscrypt_direct_key, %struct.fscrypt_direct_key* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  br label %80

55:                                               ; preds = %24
  %56 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  %57 = getelementptr inbounds %struct.fscrypt_direct_key, %struct.fscrypt_direct_key* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %60 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @FSCRYPT_KEY_DESCRIPTOR_SIZE, align 4
  %65 = call i32 @memcpy(i32 %58, i32* %63, i32 %64)
  %66 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  %67 = getelementptr inbounds %struct.fscrypt_direct_key, %struct.fscrypt_direct_key* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %71 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memcpy(i32 %68, i32* %69, i32 %74)
  %76 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %79 = call %struct.fscrypt_direct_key* @find_or_insert_direct_key(%struct.fscrypt_direct_key* %76, i32* %77, %struct.fscrypt_info* %78)
  store %struct.fscrypt_direct_key* %79, %struct.fscrypt_direct_key** %3, align 8
  br label %85

80:                                               ; preds = %48
  %81 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %6, align 8
  %82 = call i32 @free_direct_key(%struct.fscrypt_direct_key* %81)
  %83 = load i32, i32* %7, align 4
  %84 = call %struct.fscrypt_direct_key* @ERR_PTR(i32 %83)
  store %struct.fscrypt_direct_key* %84, %struct.fscrypt_direct_key** %3, align 8
  br label %85

85:                                               ; preds = %80, %55, %20, %13
  %86 = load %struct.fscrypt_direct_key*, %struct.fscrypt_direct_key** %3, align 8
  ret %struct.fscrypt_direct_key* %86
}

declare dso_local %struct.fscrypt_direct_key* @find_or_insert_direct_key(%struct.fscrypt_direct_key*, i32*, %struct.fscrypt_info*) #1

declare dso_local %struct.fscrypt_direct_key* @kzalloc(i32, i32) #1

declare dso_local %struct.fscrypt_direct_key* @ERR_PTR(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32* @fscrypt_allocate_skcipher(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @free_direct_key(%struct.fscrypt_direct_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
