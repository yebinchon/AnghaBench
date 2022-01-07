; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_crypt_scatterlist.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_crypt_scatterlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_crypt_stat = type { i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.skcipher_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.extent_crypt_result* }
%struct.extent_crypt_result = type { i32, i32 }

@ECRYPTFS_STRUCT_INITIALIZED = common dso_local global i32 0, align 4
@ecryptfs_verbosity = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Key size [%zd]; key:\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@extent_crypt_complete = common dso_local global i32 0, align 4
@ECRYPTFS_KEY_SET = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error setting key; rc = [%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENCRYPT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecryptfs_crypt_stat*, %struct.scatterlist*, %struct.scatterlist*, i32, i8*, i32)* @crypt_scatterlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_scatterlist(%struct.ecryptfs_crypt_stat* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.ecryptfs_crypt_stat*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.skcipher_request*, align 8
  %14 = alloca %struct.extent_crypt_result, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.extent_crypt_result*, align 8
  store %struct.ecryptfs_crypt_stat* %0, %struct.ecryptfs_crypt_stat** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.skcipher_request* null, %struct.skcipher_request** %13, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %18 = icmp ne %struct.ecryptfs_crypt_stat* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %6
  %20 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %21 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %26 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ECRYPTFS_STRUCT_INITIALIZED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %24, %19, %6
  %33 = phi i1 [ true, %19 ], [ true, %6 ], [ %31, %24 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i64, i64* @ecryptfs_verbosity, align 8
  %37 = icmp sgt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %32
  %42 = load i32, i32* @KERN_DEBUG, align 4
  %43 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %44 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ecryptfs_printk(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %48 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %51 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ecryptfs_dump_hex(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %41, %32
  %55 = getelementptr inbounds %struct.extent_crypt_result, %struct.extent_crypt_result* %14, i32 0, i32 1
  %56 = call i32 @init_completion(i32* %55)
  %57 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %58 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %57, i32 0, i32 2
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %61 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GFP_NOFS, align 4
  %64 = call %struct.skcipher_request* @skcipher_request_alloc(i32 %62, i32 %63)
  store %struct.skcipher_request* %64, %struct.skcipher_request** %13, align 8
  %65 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %66 = icmp ne %struct.skcipher_request* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %54
  %68 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %69 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %15, align 4
  br label %159

73:                                               ; preds = %54
  %74 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %75 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %76 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @extent_crypt_complete, align 4
  %79 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %74, i32 %77, i32 %78, %struct.extent_crypt_result* %14)
  %80 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %81 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ECRYPTFS_KEY_SET, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %114, label %86

86:                                               ; preds = %73
  %87 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %88 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %91 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %94 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @crypto_skcipher_setkey(i32 %89, i32 %92, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %86
  %100 = load i32, i32* @KERN_ERR, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @ecryptfs_printk(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %104 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %103, i32 0, i32 2
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %15, align 4
  br label %159

108:                                              ; preds = %86
  %109 = load i32, i32* @ECRYPTFS_KEY_SET, align 4
  %110 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %111 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %73
  %115 = load %struct.ecryptfs_crypt_stat*, %struct.ecryptfs_crypt_stat** %7, align 8
  %116 = getelementptr inbounds %struct.ecryptfs_crypt_stat, %struct.ecryptfs_crypt_stat* %115, i32 0, i32 2
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %119 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %120 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %118, %struct.scatterlist* %119, %struct.scatterlist* %120, i32 %121, i8* %122)
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @ENCRYPT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %114
  %128 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %129 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %128)
  br label %133

130:                                              ; preds = %114
  %131 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %132 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i32 [ %129, %127 ], [ %132, %130 ]
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* @EINPROGRESS, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* @EBUSY, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %139, %133
  %145 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %146 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load %struct.extent_crypt_result*, %struct.extent_crypt_result** %147, align 8
  store %struct.extent_crypt_result* %148, %struct.extent_crypt_result** %16, align 8
  %149 = load %struct.extent_crypt_result*, %struct.extent_crypt_result** %16, align 8
  %150 = getelementptr inbounds %struct.extent_crypt_result, %struct.extent_crypt_result* %149, i32 0, i32 1
  %151 = call i32 @wait_for_completion(i32* %150)
  %152 = load %struct.extent_crypt_result*, %struct.extent_crypt_result** %16, align 8
  %153 = getelementptr inbounds %struct.extent_crypt_result, %struct.extent_crypt_result* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %15, align 4
  %155 = load %struct.extent_crypt_result*, %struct.extent_crypt_result** %16, align 8
  %156 = getelementptr inbounds %struct.extent_crypt_result, %struct.extent_crypt_result* %155, i32 0, i32 1
  %157 = call i32 @reinit_completion(i32* %156)
  br label %158

158:                                              ; preds = %144, %139
  br label %159

159:                                              ; preds = %158, %99, %67
  %160 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %161 = call i32 @skcipher_request_free(%struct.skcipher_request* %160)
  %162 = load i32, i32* %15, align 4
  ret i32 %162
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*, i32) #1

declare dso_local i32 @ecryptfs_dump_hex(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.skcipher_request* @skcipher_request_alloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, %struct.extent_crypt_result*) #1

declare dso_local i32 @crypto_skcipher_setkey(i32, i32, i32) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i8*) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @skcipher_request_free(%struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
