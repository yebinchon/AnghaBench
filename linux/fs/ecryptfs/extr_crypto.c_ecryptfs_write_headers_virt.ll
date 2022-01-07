; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_write_headers_virt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_write_headers_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i32 }
%struct.dentry = type { i32 }

@ECRYPTFS_FILE_SIZE_BYTES = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error generating key packet set; rc = [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, %struct.ecryptfs_crypt_stat*, %struct.dentry*)* @ecryptfs_write_headers_virt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_write_headers_virt(i8* %0, i64 %1, i64* %2, %struct.ecryptfs_crypt_stat* %3, %struct.dentry* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.ecryptfs_crypt_stat* %3, %struct.ecryptfs_crypt_stat** %9, align 8
  store %struct.dentry* %4, %struct.dentry** %10, align 8
  %14 = load i64, i64* @ECRYPTFS_FILE_SIZE_BYTES, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %13, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = call i32 @write_ecryptfs_marker(i8* %17, i64* %12)
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %13, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %13, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %13, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %9, align 8
  %26 = call i32 @ecryptfs_write_crypt_stat_flags(i8* %24, %struct.ecryptfs_crypt_stat* %25, i64* %12)
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %13, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %13, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %9, align 8
  %34 = call i32 @ecryptfs_write_header_metadata(i8* %32, %struct.ecryptfs_crypt_stat* %33, i64* %12)
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %13, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %9, align 8
  %42 = load %struct.dentry*, %struct.dentry** %10, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %13, align 8
  %45 = sub i64 %43, %44
  %46 = call i32 @ecryptfs_generate_key_packet_set(i8* %40, %struct.ecryptfs_crypt_stat* %41, %struct.dentry* %42, i64* %12, i64 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %5
  %50 = load i32, i32* @KERN_WARNING, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @ecryptfs_printk(i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %5
  %54 = load i64*, i64** %8, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64*, i64** %8, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local i32 @write_ecryptfs_marker(i8*, i64*) #1

declare dso_local i32 @ecryptfs_write_crypt_stat_flags(i8*, %struct.ecryptfs_crypt_stat*, i64*) #1

declare dso_local i32 @ecryptfs_write_header_metadata(i8*, %struct.ecryptfs_crypt_stat*, i64*) #1

declare dso_local i32 @ecryptfs_generate_key_packet_set(i8*, %struct.ecryptfs_crypt_stat*, %struct.dentry*, i64*, i64) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
