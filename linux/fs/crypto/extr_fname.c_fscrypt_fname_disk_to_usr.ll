; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_fname.c_fscrypt_fname_disk_to_usr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_fname.c_fscrypt_fname_disk_to_usr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fscrypt_str = type { i8*, i32 }
%struct.qstr = type { i32 }
%struct.fscrypt_digested_name = type { i32, i8*, i8* }

@FS_CRYPTO_BLOCK_SIZE = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@FSCRYPT_FNAME_MAX_UNDIGESTED_SIZE = common dso_local global i32 0, align 4
@FSCRYPT_FNAME_DIGEST_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_fname_disk_to_usr(%struct.inode* %0, i8* %1, i8* %2, %struct.fscrypt_str* %3, %struct.fscrypt_str* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fscrypt_str*, align 8
  %11 = alloca %struct.fscrypt_str*, align 8
  %12 = alloca %struct.qstr, align 4
  %13 = alloca %struct.fscrypt_digested_name, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.fscrypt_str* %3, %struct.fscrypt_str** %10, align 8
  store %struct.fscrypt_str* %4, %struct.fscrypt_str** %11, align 8
  %14 = load %struct.fscrypt_str*, %struct.fscrypt_str** %10, align 8
  %15 = call i32 @FSTR_TO_QSTR(%struct.fscrypt_str* %14)
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = call i64 @fscrypt_is_dot_dotdot(%struct.qstr* %12)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %5
  %20 = load %struct.fscrypt_str*, %struct.fscrypt_str** %11, align 8
  %21 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 46, i8* %23, align 1
  %24 = load %struct.fscrypt_str*, %struct.fscrypt_str** %11, align 8
  %25 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.fscrypt_str*, %struct.fscrypt_str** %10, align 8
  %28 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %26, i64 %31
  store i8 46, i8* %32, align 1
  %33 = load %struct.fscrypt_str*, %struct.fscrypt_str** %10, align 8
  %34 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fscrypt_str*, %struct.fscrypt_str** %11, align 8
  %37 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %6, align 4
  br label %113

38:                                               ; preds = %5
  %39 = load %struct.fscrypt_str*, %struct.fscrypt_str** %10, align 8
  %40 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FS_CRYPTO_BLOCK_SIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EUCLEAN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %113

47:                                               ; preds = %38
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call i64 @fscrypt_has_encryption_key(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = load %struct.fscrypt_str*, %struct.fscrypt_str** %10, align 8
  %54 = load %struct.fscrypt_str*, %struct.fscrypt_str** %11, align 8
  %55 = call i32 @fname_decrypt(%struct.inode* %52, %struct.fscrypt_str* %53, %struct.fscrypt_str* %54)
  store i32 %55, i32* %6, align 4
  br label %113

56:                                               ; preds = %47
  %57 = load %struct.fscrypt_str*, %struct.fscrypt_str** %10, align 8
  %58 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FSCRYPT_FNAME_MAX_UNDIGESTED_SIZE, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load %struct.fscrypt_str*, %struct.fscrypt_str** %10, align 8
  %64 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.fscrypt_str*, %struct.fscrypt_str** %10, align 8
  %67 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fscrypt_str*, %struct.fscrypt_str** %11, align 8
  %70 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @base64_encode(i8* %65, i32 %68, i8* %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.fscrypt_str*, %struct.fscrypt_str** %11, align 8
  %75 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %6, align 4
  br label %113

76:                                               ; preds = %56
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds %struct.fscrypt_digested_name, %struct.fscrypt_digested_name* %13, i32 0, i32 2
  store i8* %80, i8** %81, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds %struct.fscrypt_digested_name, %struct.fscrypt_digested_name* %13, i32 0, i32 1
  store i8* %82, i8** %83, align 8
  br label %87

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.fscrypt_digested_name, %struct.fscrypt_digested_name* %13, i32 0, i32 2
  store i8* null, i8** %85, align 8
  %86 = getelementptr inbounds %struct.fscrypt_digested_name, %struct.fscrypt_digested_name* %13, i32 0, i32 1
  store i8* null, i8** %86, align 8
  br label %87

87:                                               ; preds = %84, %79
  %88 = getelementptr inbounds %struct.fscrypt_digested_name, %struct.fscrypt_digested_name* %13, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.fscrypt_str*, %struct.fscrypt_str** %10, align 8
  %91 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.fscrypt_str*, %struct.fscrypt_str** %10, align 8
  %94 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @FSCRYPT_FNAME_DIGEST(i8* %92, i32 %95)
  %97 = load i32, i32* @FSCRYPT_FNAME_DIGEST_SIZE, align 4
  %98 = call i32 @memcpy(i32 %89, i32 %96, i32 %97)
  %99 = load %struct.fscrypt_str*, %struct.fscrypt_str** %11, align 8
  %100 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  store i8 95, i8* %102, align 1
  %103 = bitcast %struct.fscrypt_digested_name* %13 to i8*
  %104 = load %struct.fscrypt_str*, %struct.fscrypt_str** %11, align 8
  %105 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = call i8* @base64_encode(i8* %103, i32 24, i8* %107)
  %109 = getelementptr i8, i8* %108, i64 1
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.fscrypt_str*, %struct.fscrypt_str** %11, align 8
  %112 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %87, %62, %51, %44, %19
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @FSTR_TO_QSTR(%struct.fscrypt_str*) #1

declare dso_local i64 @fscrypt_is_dot_dotdot(%struct.qstr*) #1

declare dso_local i64 @fscrypt_has_encryption_key(%struct.inode*) #1

declare dso_local i32 @fname_decrypt(%struct.inode*, %struct.fscrypt_str*, %struct.fscrypt_str*) #1

declare dso_local i8* @base64_encode(i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @FSCRYPT_FNAME_DIGEST(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
