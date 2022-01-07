; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_alloc_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_misc.c_cifs_alloc_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.sdesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.crypto_shash* }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate crypto %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"no memory left to allocate crypto %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_alloc_hash(i8* %0, %struct.crypto_shash** %1, %struct.sdesc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.crypto_shash**, align 8
  %7 = alloca %struct.sdesc**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.crypto_shash** %1, %struct.crypto_shash*** %6, align 8
  store %struct.sdesc** %2, %struct.sdesc*** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.sdesc**, %struct.sdesc*** %7, align 8
  %11 = load %struct.sdesc*, %struct.sdesc** %10, align 8
  %12 = icmp ne %struct.sdesc* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.crypto_shash* @crypto_alloc_shash(i8* %15, i32 0, i32 0)
  %17 = load %struct.crypto_shash**, %struct.crypto_shash*** %6, align 8
  store %struct.crypto_shash* %16, %struct.crypto_shash** %17, align 8
  %18 = load %struct.crypto_shash**, %struct.crypto_shash*** %6, align 8
  %19 = load %struct.crypto_shash*, %struct.crypto_shash** %18, align 8
  %20 = call i64 @IS_ERR(%struct.crypto_shash* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load i32, i32* @VFS, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @cifs_dbg(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.crypto_shash**, %struct.crypto_shash*** %6, align 8
  %27 = load %struct.crypto_shash*, %struct.crypto_shash** %26, align 8
  %28 = call i32 @PTR_ERR(%struct.crypto_shash* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.crypto_shash**, %struct.crypto_shash*** %6, align 8
  store %struct.crypto_shash* null, %struct.crypto_shash** %29, align 8
  %30 = load %struct.sdesc**, %struct.sdesc*** %7, align 8
  store %struct.sdesc* null, %struct.sdesc** %30, align 8
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %62

32:                                               ; preds = %14
  %33 = load %struct.crypto_shash**, %struct.crypto_shash*** %6, align 8
  %34 = load %struct.crypto_shash*, %struct.crypto_shash** %33, align 8
  %35 = call i32 @crypto_shash_descsize(%struct.crypto_shash* %34)
  %36 = sext i32 %35 to i64
  %37 = add i64 4, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.sdesc* @kmalloc(i64 %38, i32 %39)
  %41 = load %struct.sdesc**, %struct.sdesc*** %7, align 8
  store %struct.sdesc* %40, %struct.sdesc** %41, align 8
  %42 = load %struct.sdesc**, %struct.sdesc*** %7, align 8
  %43 = load %struct.sdesc*, %struct.sdesc** %42, align 8
  %44 = icmp eq %struct.sdesc* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %32
  %46 = load i32, i32* @VFS, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @cifs_dbg(i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load %struct.crypto_shash**, %struct.crypto_shash*** %6, align 8
  %50 = load %struct.crypto_shash*, %struct.crypto_shash** %49, align 8
  %51 = call i32 @crypto_free_shash(%struct.crypto_shash* %50)
  %52 = load %struct.crypto_shash**, %struct.crypto_shash*** %6, align 8
  store %struct.crypto_shash* null, %struct.crypto_shash** %52, align 8
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %62

55:                                               ; preds = %32
  %56 = load %struct.crypto_shash**, %struct.crypto_shash*** %6, align 8
  %57 = load %struct.crypto_shash*, %struct.crypto_shash** %56, align 8
  %58 = load %struct.sdesc**, %struct.sdesc*** %7, align 8
  %59 = load %struct.sdesc*, %struct.sdesc** %58, align 8
  %60 = getelementptr inbounds %struct.sdesc, %struct.sdesc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store %struct.crypto_shash* %57, %struct.crypto_shash** %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %55, %45, %22, %13
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local %struct.sdesc* @kmalloc(i64, i32) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
