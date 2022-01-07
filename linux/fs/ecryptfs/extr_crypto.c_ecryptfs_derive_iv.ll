; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_derive_iv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_derive_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i8*, i32 }

@MD5_DIGEST_SIZE = common dso_local global i32 0, align 4
@ECRYPTFS_MAX_IV_BYTES = common dso_local global i32 0, align 4
@ecryptfs_verbosity = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"root iv:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"source:\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"Error attempting to compute MD5 while generating IV for a page\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"derived iv:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_derive_iv(i8* %0, %struct.ecryptfs_crypt_stat* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ecryptfs_crypt_stat* %1, %struct.ecryptfs_crypt_stat** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @MD5_DIGEST_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @ECRYPTFS_MAX_IV_BYTES, align 4
  %16 = add nsw i32 %15, 16
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = load i64, i64* @ecryptfs_verbosity, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load i32, i32* @KERN_DEBUG, align 4
  %26 = call i32 @ecryptfs_printk(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %28 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %31 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ecryptfs_dump_hex(i8* %29, i32 %32)
  br label %34

34:                                               ; preds = %24, %3
  %35 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %36 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %39 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memcpy(i8* %18, i8* %37, i32 %40)
  %42 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %43 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %18, i64 %45
  %47 = call i32 @memset(i8* %46, i32 0, i32 16)
  %48 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %49 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %18, i64 %51
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @snprintf(i8* %52, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* @ecryptfs_verbosity, align 8
  %56 = icmp sgt i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %34
  %61 = load i32, i32* @KERN_DEBUG, align 4
  %62 = call i32 @ecryptfs_printk(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %64 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 16
  %67 = call i32 @ecryptfs_dump_hex(i8* %18, i32 %66)
  br label %68

68:                                               ; preds = %60, %34
  %69 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %70 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %71 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 16
  %74 = call i32 @ecryptfs_calculate_md5(i8* %14, %struct.ecryptfs_crypt_stat* %69, i8* %18, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* @KERN_WARNING, align 4
  %79 = call i32 @ecryptfs_printk(i32 %78, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %100

80:                                               ; preds = %68
  %81 = load i8*, i8** %4, align 8
  %82 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %83 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @memcpy(i8* %81, i8* %14, i32 %84)
  %86 = load i64, i64* @ecryptfs_verbosity, align 8
  %87 = icmp sgt i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %80
  %92 = load i32, i32* @KERN_DEBUG, align 4
  %93 = call i32 @ecryptfs_printk(i32 %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i8*, i8** %4, align 8
  %95 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %5, align 8
  %96 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ecryptfs_dump_hex(i8* %94, i32 %97)
  br label %99

99:                                               ; preds = %91, %80
  br label %100

100:                                              ; preds = %99, %77
  %101 = load i32, i32* %7, align 4
  %102 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %102)
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @ecryptfs_printk(i32, i8*) #2

declare dso_local i32 @ecryptfs_dump_hex(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @ecryptfs_calculate_md5(i8*, %struct.ecryptfs_crypt_stat*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
