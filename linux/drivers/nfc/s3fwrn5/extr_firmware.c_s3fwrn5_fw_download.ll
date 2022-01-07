; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_firmware.c_s3fwrn5_fw_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_firmware.c_s3fwrn5_fw_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.s3fwrn5_fw_info = type { i32, %struct.TYPE_8__*, i64, i32, i32, i32, %struct.s3fwrn5_fw_image }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.s3fwrn5_fw_image = type { i32, i64 }

@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot allocate shash (code=%d)\0A\00", align 1
@desc = common dso_local global %struct.TYPE_9__* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot compute hash (code=%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Firmware update: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to enter update mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Firmware update error (code=%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Unable to complete update mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Firmware update: success\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3fwrn5_fw_download(%struct.s3fwrn5_fw_info* %0) #0 {
  %2 = alloca %struct.s3fwrn5_fw_info*, align 8
  %3 = alloca %struct.s3fwrn5_fw_image*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.crypto_shash*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s3fwrn5_fw_info* %0, %struct.s3fwrn5_fw_info** %2, align 8
  %10 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %11 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %10, i32 0, i32 6
  store %struct.s3fwrn5_fw_image* %11, %struct.s3fwrn5_fw_image** %3, align 8
  %12 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %17 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.s3fwrn5_fw_image*, %struct.s3fwrn5_fw_image** %3, align 8
  %20 = getelementptr inbounds %struct.s3fwrn5_fw_image, %struct.s3fwrn5_fw_image* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %23, %struct.crypto_shash** %6, align 8
  %24 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %25 = call i64 @IS_ERR(%struct.crypto_shash* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %1
  %28 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %29 = call i32 @PTR_ERR(%struct.crypto_shash* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %31 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %155

38:                                               ; preds = %1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @desc, align 8
  %40 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %41 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_9__* %39, %struct.crypto_shash* %40)
  %42 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** @desc, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store %struct.crypto_shash* %42, %struct.crypto_shash** %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @desc, align 8
  %46 = load %struct.s3fwrn5_fw_image*, %struct.s3fwrn5_fw_image** %3, align 8
  %47 = getelementptr inbounds %struct.s3fwrn5_fw_image, %struct.s3fwrn5_fw_image* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @crypto_shash_digest(%struct.TYPE_9__* %45, i64 %48, i32 %49, i32* %15)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @desc, align 8
  %52 = call i32 @shash_desc_zero(%struct.TYPE_9__* %51)
  %53 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %54 = call i32 @crypto_free_shash(%struct.crypto_shash* %53)
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %38
  %58 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %59 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %155

66:                                               ; preds = %38
  %67 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %68 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %74 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32*, i8*, ...) @dev_info(i32* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %78 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %79 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %80 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %83 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @s3fwrn5_fw_enter_update_mode(%struct.s3fwrn5_fw_info* %77, i32* %15, i32 %78, i32 %81, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %66
  %89 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %90 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = call i32 (i32*, i8*, ...) @dev_err(i32* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %155

96:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %128, %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %134

101:                                              ; preds = %97
  %102 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %103 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %104 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load %struct.s3fwrn5_fw_image*, %struct.s3fwrn5_fw_image** %3, align 8
  %110 = getelementptr inbounds %struct.s3fwrn5_fw_image, %struct.s3fwrn5_fw_image* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = call i32 @s3fwrn5_fw_update_sector(%struct.s3fwrn5_fw_info* %102, i64 %108, i64 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %101
  %119 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %120 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %9, align 4
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  br label %155

127:                                              ; preds = %101
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %130 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %8, align 4
  br label %97

134:                                              ; preds = %97
  %135 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %136 = call i32 @s3fwrn5_fw_complete_update_mode(%struct.s3fwrn5_fw_info* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %141 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = call i32 (i32*, i8*, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %155

147:                                              ; preds = %134
  %148 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %2, align 8
  %149 = getelementptr inbounds %struct.s3fwrn5_fw_info, %struct.s3fwrn5_fw_info* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = call i32 (i32*, i8*, ...) @dev_info(i32* %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %155

155:                                              ; preds = %147, %139, %118, %88, %57, %27
  %156 = load i32, i32* %9, align 4
  %157 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %157)
  ret i32 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #2

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_9__*, %struct.crypto_shash*) #2

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_9__*, i64, i32, i32*) #2

declare dso_local i32 @shash_desc_zero(%struct.TYPE_9__*) #2

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #2

declare dso_local i32 @dev_info(i32*, i8*, ...) #2

declare dso_local i32 @s3fwrn5_fw_enter_update_mode(%struct.s3fwrn5_fw_info*, i32*, i32, i32, i32) #2

declare dso_local i32 @s3fwrn5_fw_update_sector(%struct.s3fwrn5_fw_info*, i64, i64) #2

declare dso_local i32 @s3fwrn5_fw_complete_update_mode(%struct.s3fwrn5_fw_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
