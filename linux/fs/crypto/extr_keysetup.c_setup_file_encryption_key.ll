; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_setup_file_encryption_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_setup_file_encryption_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscrypt_info = type { %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.key = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.fscrypt_master_key** }
%struct.fscrypt_master_key = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.fscrypt_key_specifier = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR = common dso_local global i32 0, align 4
@FSCRYPT_KEY_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER = common dso_local global i32 0, align 4
@FSCRYPT_KEY_IDENTIFIER_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"key with %s %*phN is too short (got %u bytes, need %u+ bytes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fscrypt_info*, %struct.key**)* @setup_file_encryption_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_file_encryption_key(%struct.fscrypt_info* %0, %struct.key** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fscrypt_info*, align 8
  %5 = alloca %struct.key**, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.fscrypt_master_key*, align 8
  %8 = alloca %struct.fscrypt_key_specifier, align 4
  %9 = alloca i32, align 4
  store %struct.fscrypt_info* %0, %struct.fscrypt_info** %4, align 8
  store %struct.key** %1, %struct.key*** %5, align 8
  store %struct.fscrypt_master_key* null, %struct.fscrypt_master_key** %7, align 8
  %10 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %11 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %40 [
    i32 129, label %14
    i32 128, label %27
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR, align 4
  %16 = getelementptr inbounds %struct.fscrypt_key_specifier, %struct.fscrypt_key_specifier* %8, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.fscrypt_key_specifier, %struct.fscrypt_key_specifier* %8, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %21 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FSCRYPT_KEY_DESCRIPTOR_SIZE, align 4
  %26 = call i32 @memcpy(i32 %19, i32 %24, i32 %25)
  br label %44

27:                                               ; preds = %2
  %28 = load i32, i32* @FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER, align 4
  %29 = getelementptr inbounds %struct.fscrypt_key_specifier, %struct.fscrypt_key_specifier* %8, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.fscrypt_key_specifier, %struct.fscrypt_key_specifier* %8, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %34 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FSCRYPT_KEY_IDENTIFIER_SIZE, align 4
  %39 = call i32 @memcpy(i32 %32, i32 %37, i32 %38)
  br label %44

40:                                               ; preds = %2
  %41 = call i32 @WARN_ON(i32 1)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %151

44:                                               ; preds = %27, %14
  %45 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %46 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %45, i32 0, i32 2
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.key* @fscrypt_find_master_key(i32 %49, %struct.fscrypt_key_specifier* %8)
  store %struct.key* %50, %struct.key** %6, align 8
  %51 = load %struct.key*, %struct.key** %6, align 8
  %52 = call i64 @IS_ERR(%struct.key* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %44
  %55 = load %struct.key*, %struct.key** %6, align 8
  %56 = load i32, i32* @ENOKEY, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.key* @ERR_PTR(i32 %57)
  %59 = icmp ne %struct.key* %55, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %62 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 129
  br i1 %65, label %66, label %69

66:                                               ; preds = %60, %54
  %67 = load %struct.key*, %struct.key** %6, align 8
  %68 = call i32 @PTR_ERR(%struct.key* %67)
  store i32 %68, i32* %3, align 4
  br label %151

69:                                               ; preds = %60
  %70 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %71 = call i32 @fscrypt_setup_v1_file_key_via_subscribed_keyrings(%struct.fscrypt_info* %70)
  store i32 %71, i32* %3, align 4
  br label %151

72:                                               ; preds = %44
  %73 = load %struct.key*, %struct.key** %6, align 8
  %74 = getelementptr inbounds %struct.key, %struct.key* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.fscrypt_master_key**, %struct.fscrypt_master_key*** %75, align 8
  %77 = getelementptr inbounds %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %76, i64 0
  %78 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %77, align 8
  store %struct.fscrypt_master_key* %78, %struct.fscrypt_master_key** %7, align 8
  %79 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %7, align 8
  %80 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %79, i32 0, i32 0
  %81 = call i32 @down_read(i32* %80)
  %82 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %7, align 8
  %83 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %82, i32 0, i32 1
  %84 = call i32 @is_master_key_secret_present(%struct.TYPE_16__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %72
  %87 = load i32, i32* @ENOKEY, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  br label %144

89:                                               ; preds = %72
  %90 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %7, align 8
  %91 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %95 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %89
  %101 = call i32 @master_key_spec_type(%struct.fscrypt_key_specifier* %8)
  %102 = call i32 @master_key_spec_len(%struct.fscrypt_key_specifier* %8)
  %103 = getelementptr inbounds %struct.fscrypt_key_specifier, %struct.fscrypt_key_specifier* %8, i32 0, i32 0
  %104 = bitcast %struct.TYPE_13__* %103 to i32*
  %105 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %7, align 8
  %106 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %110 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %109, i32 0, i32 1
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @fscrypt_warn(i32* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102, i32* %104, i32 %108, i32 %113)
  %115 = load i32, i32* @ENOKEY, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %9, align 4
  br label %144

117:                                              ; preds = %89
  %118 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %119 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  switch i32 %121, label %133 [
    i32 129, label %122
    i32 128, label %129
  ]

122:                                              ; preds = %117
  %123 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %124 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %7, align 8
  %125 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @fscrypt_setup_v1_file_key(%struct.fscrypt_info* %123, i32 %127)
  store i32 %128, i32* %9, align 4
  br label %137

129:                                              ; preds = %117
  %130 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %131 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %7, align 8
  %132 = call i32 @fscrypt_setup_v2_file_key(%struct.fscrypt_info* %130, %struct.fscrypt_master_key* %131)
  store i32 %132, i32* %9, align 4
  br label %137

133:                                              ; preds = %117
  %134 = call i32 @WARN_ON(i32 1)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %133, %129, %122
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %144

141:                                              ; preds = %137
  %142 = load %struct.key*, %struct.key** %6, align 8
  %143 = load %struct.key**, %struct.key*** %5, align 8
  store %struct.key* %142, %struct.key** %143, align 8
  store i32 0, i32* %3, align 4
  br label %151

144:                                              ; preds = %140, %100, %86
  %145 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %7, align 8
  %146 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %145, i32 0, i32 0
  %147 = call i32 @up_read(i32* %146)
  %148 = load %struct.key*, %struct.key** %6, align 8
  %149 = call i32 @key_put(%struct.key* %148)
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %144, %141, %69, %66, %40
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.key* @fscrypt_find_master_key(i32, %struct.fscrypt_key_specifier*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @fscrypt_setup_v1_file_key_via_subscribed_keyrings(%struct.fscrypt_info*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @is_master_key_secret_present(%struct.TYPE_16__*) #1

declare dso_local i32 @fscrypt_warn(i32*, i8*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @master_key_spec_type(%struct.fscrypt_key_specifier*) #1

declare dso_local i32 @master_key_spec_len(%struct.fscrypt_key_specifier*) #1

declare dso_local i32 @fscrypt_setup_v1_file_key(%struct.fscrypt_info*, i32) #1

declare dso_local i32 @fscrypt_setup_v2_file_key(%struct.fscrypt_info*, %struct.fscrypt_master_key*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
