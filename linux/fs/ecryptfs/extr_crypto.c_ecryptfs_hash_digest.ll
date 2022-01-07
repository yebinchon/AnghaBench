; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_hash_digest.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_hash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@desc = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i8*, i32, i8*)* @ecryptfs_hash_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_hash_digest(%struct.crypto_shash* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @desc, align 8
  %11 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %12 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_5__* %10, %struct.crypto_shash* %11)
  %13 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @desc, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.crypto_shash* %13, %struct.crypto_shash** %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @desc, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @crypto_shash_digest(%struct.TYPE_5__* %16, i8* %17, i32 %18, i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @desc, align 8
  %22 = call i32 @shash_desc_zero(%struct.TYPE_5__* %21)
  %23 = load i32, i32* %9, align 4
  ret i32 %23
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_5__*, %struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_5__*, i8*, i32, i8*) #1

declare dso_local i32 @shash_desc_zero(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
