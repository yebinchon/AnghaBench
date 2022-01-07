; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_debug.c_ecryptfs_dump_auth_tok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_debug.c_ecryptfs_dump_auth_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_auth_tok = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ECRYPTFS_SALT_SIZE = common dso_local global i32 0, align 4
@ECRYPTFS_SIG_SIZE_HEX = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Auth tok at mem loc [%p]:\0A\00", align 1
@ECRYPTFS_PRIVATE_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c" * private key type\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" * passphrase type\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c" * salt = [%s]\0A\00", align 1
@ECRYPTFS_PERSISTENT_PASSWORD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c" * persistent\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c" * signature = [%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c" * session_key.flags = [0x%x]\0A\00", align 1
@ECRYPTFS_USERSPACE_SHOULD_TRY_TO_DECRYPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c" * Userspace decrypt request set\0A\00", align 1
@ECRYPTFS_USERSPACE_SHOULD_TRY_TO_ENCRYPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c" * Userspace encrypt request set\0A\00", align 1
@ECRYPTFS_CONTAINS_DECRYPTED_KEY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c" * Contains decrypted key\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c" * session_key.decrypted_key_size = [0x%x]\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c" * Decrypted session key dump:\0A\00", align 1
@ecryptfs_verbosity = common dso_local global i64 0, align 8
@ECRYPTFS_DEFAULT_KEY_BYTES = common dso_local global i32 0, align 4
@ECRYPTFS_CONTAINS_ENCRYPTED_KEY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c" * Contains encrypted key\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c" * session_key.encrypted_key_size = [0x%x]\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c" * Encrypted session key dump:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecryptfs_dump_auth_tok(%struct.ecryptfs_auth_tok* %0) #0 {
  %2 = alloca %struct.ecryptfs_auth_tok*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ecryptfs_auth_tok* %0, %struct.ecryptfs_auth_tok** %2, align 8
  %6 = load i32, i32* @ECRYPTFS_SALT_SIZE, align 4
  %7 = mul nsw i32 %6, 2
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @ECRYPTFS_SIG_SIZE_HEX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load i32, i32* @KERN_DEBUG, align 4
  %17 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %18 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.ecryptfs_auth_tok* %17)
  %19 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %20 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ECRYPTFS_PRIVATE_KEY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @KERN_DEBUG, align 4
  %27 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %68

28:                                               ; preds = %1
  %29 = load i32, i32* @KERN_DEBUG, align 4
  %30 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %32 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ECRYPTFS_SALT_SIZE, align 4
  %37 = call i32 @ecryptfs_to_hex(i8* %11, i32 %35, i32 %36)
  %38 = load i32, i32* @ECRYPTFS_SALT_SIZE, align 4
  %39 = mul nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %11, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* @KERN_DEBUG, align 4
  %43 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %11)
  %44 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %45 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ECRYPTFS_PERSISTENT_PASSWORD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %28
  %53 = load i32, i32* @KERN_DEBUG, align 4
  %54 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %28
  %56 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %57 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ECRYPTFS_SIG_SIZE_HEX, align 4
  %62 = call i32 @memcpy(i8* %15, i32 %60, i32 %61)
  %63 = load i32, i32* @ECRYPTFS_SIG_SIZE_HEX, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %15, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i32, i32* @KERN_DEBUG, align 4
  %67 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %15)
  br label %68

68:                                               ; preds = %55, %25
  %69 = load i32, i32* @KERN_DEBUG, align 4
  %70 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %71 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %76 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ECRYPTFS_USERSPACE_SHOULD_TRY_TO_DECRYPT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %68
  %83 = load i32, i32* @KERN_DEBUG, align 4
  %84 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %68
  %86 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %87 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ECRYPTFS_USERSPACE_SHOULD_TRY_TO_ENCRYPT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @KERN_DEBUG, align 4
  %95 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %85
  %97 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %98 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ECRYPTFS_CONTAINS_DECRYPTED_KEY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %96
  %105 = load i32, i32* @KERN_DEBUG, align 4
  %106 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %107 = load i32, i32* @KERN_DEBUG, align 4
  %108 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %109 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %107, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @KERN_DEBUG, align 4
  %114 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %115 = load i64, i64* @ecryptfs_verbosity, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %104
  %118 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %119 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ECRYPTFS_DEFAULT_KEY_BYTES, align 4
  %123 = call i32 @ecryptfs_dump_hex(i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %117, %104
  br label %125

125:                                              ; preds = %124, %96
  %126 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %127 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ECRYPTFS_CONTAINS_ENCRYPTED_KEY, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %125
  %134 = load i32, i32* @KERN_DEBUG, align 4
  %135 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %136 = load i32, i32* @KERN_DEBUG, align 4
  %137 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %138 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %136, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @KERN_DEBUG, align 4
  %143 = call i32 (i32, i8*, ...) @ecryptfs_printk(i32 %142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %144 = load i64, i64* @ecryptfs_verbosity, align 8
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %133
  %147 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %148 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %2, align 8
  %152 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ecryptfs_dump_hex(i32 %150, i32 %154)
  br label %156

156:                                              ; preds = %146, %133
  br label %157

157:                                              ; preds = %156, %125
  %158 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %158)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ecryptfs_printk(i32, i8*, ...) #2

declare dso_local i32 @ecryptfs_to_hex(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @ecryptfs_dump_hex(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
