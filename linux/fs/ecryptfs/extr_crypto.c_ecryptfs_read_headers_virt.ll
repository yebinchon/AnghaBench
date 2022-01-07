; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_read_headers_virt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_ecryptfs_read_headers_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i32, i64, i32* }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ECRYPTFS_FILE_SIZE_BYTES = common dso_local global i32 0, align 4
@ECRYPTFS_I_SIZE_INITIALIZED = common dso_local global i32 0, align 4
@MAGIC_ECRYPTFS_MARKER_SIZE_BYTES = common dso_local global i64 0, align 8
@ECRYPTFS_SUPPORTED_FILE_VERSION = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"File version is [%d]; only file version [%d] is supported by this version of eCryptfs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Error reading header metadata; rc = [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ecryptfs_crypt_stat*, %struct.dentry*, i32)* @ecryptfs_read_headers_virt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_read_headers_virt(i8* %0, %struct.ecryptfs_crypt_stat* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ecryptfs_crypt_stat* %1, %struct.ecryptfs_crypt_stat** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %13 = call i32 @ecryptfs_set_default_sizes(%struct.ecryptfs_crypt_stat* %12)
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_2__* @ecryptfs_superblock_to_private(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %20 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load i32, i32* @ECRYPTFS_FILE_SIZE_BYTES, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = call i32 @ecryptfs_validate_marker(i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %106

30:                                               ; preds = %4
  %31 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %32 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ECRYPTFS_I_SIZE_INITIALIZED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = call i32 @d_inode(%struct.dentry* %39)
  %41 = call i32 @ecryptfs_i_size_init(i8* %38, i32 %40)
  br label %42

42:                                               ; preds = %37, %30
  %43 = load i64, i64* @MAGIC_ECRYPTFS_MARKER_SIZE_BYTES, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = call i32 @ecryptfs_process_flags(%struct.ecryptfs_crypt_stat* %48, i8* %52, i32* %11)
  %54 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %55 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ECRYPTFS_SUPPORTED_FILE_VERSION, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %42
  %60 = load i32, i32* @KERN_WARNING, align 4
  %61 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %62 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* @ECRYPTFS_SUPPORTED_FILE_VERSION, align 8
  %66 = call i32 (i32, i8*, i32, ...) @ecryptfs_printk(i32 %60, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %64, i64 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %106

69:                                               ; preds = %42
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %74 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %75, 1
  br i1 %76, label %77, label %95

77:                                               ; preds = %69
  %78 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @parse_header_metadata(%struct.ecryptfs_crypt_stat* %78, i8* %82, i32* %11, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load i32, i32* @KERN_WARNING, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (i32, i8*, i32, ...) @ecryptfs_printk(i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %77
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %10, align 4
  br label %98

95:                                               ; preds = %69
  %96 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %97 = call i32 @set_default_header_data(%struct.ecryptfs_crypt_stat* %96)
  br label %98

98:                                               ; preds = %95, %91
  %99 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %6, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load %struct.dentry*, %struct.dentry** %7, align 8
  %105 = call i32 @ecryptfs_parse_packet_set(%struct.ecryptfs_crypt_stat* %99, i8* %103, %struct.dentry* %104)
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %98, %59, %29
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @ecryptfs_set_default_sizes(%struct.ecryptfs_crypt_stat*) #1

declare dso_local %struct.TYPE_2__* @ecryptfs_superblock_to_private(i32) #1

declare dso_local i32 @ecryptfs_validate_marker(i8*) #1

declare dso_local i32 @ecryptfs_i_size_init(i8*, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @ecryptfs_process_flags(%struct.ecryptfs_crypt_stat*, i8*, i32*) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*, i32, ...) #1

declare dso_local i32 @parse_header_metadata(%struct.ecryptfs_crypt_stat*, i8*, i32*, i32) #1

declare dso_local i32 @set_default_header_data(%struct.ecryptfs_crypt_stat*) #1

declare dso_local i32 @ecryptfs_parse_packet_set(%struct.ecryptfs_crypt_stat*, i8*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
