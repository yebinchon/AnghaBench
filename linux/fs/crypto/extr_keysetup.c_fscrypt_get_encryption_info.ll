; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_fscrypt_get_encryption_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keysetup.c_fscrypt_get_encryption_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.inode*, %union.fscrypt_context*, i32)*, i32 }
%union.fscrypt_context = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %union.fscrypt_context*, i32, i32 }
%struct.fscrypt_info = type { i32, i32, %struct.fscrypt_mode*, i32, i32, %struct.inode* }
%struct.fscrypt_mode = type { i64 }
%struct.key = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.fscrypt_master_key** }
%struct.fscrypt_master_key = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Error %d getting encryption context\00", align 1
@FSCRYPT_MODE_AES_256_XTS = common dso_local global i32 0, align 4
@FSCRYPT_MODE_AES_256_CTS = common dso_local global i32 0, align 4
@FSCRYPT_KEY_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@fscrypt_info_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Unrecognized or corrupt encryption context\00", align 1
@FS_KEY_DERIVATION_NONCE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FSCRYPT_MAX_IV_SIZE = common dso_local global i64 0, align 8
@ENOKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_get_encryption_info(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.fscrypt_info*, align 8
  %5 = alloca %union.fscrypt_context, align 8
  %6 = alloca %struct.fscrypt_mode*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fscrypt_master_key*, align 8
  %10 = alloca %struct.fscrypt_master_key*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.key* null, %struct.key** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call i64 @fscrypt_has_encryption_key(%struct.inode* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %211

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @fscrypt_initialize(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %211

28:                                               ; preds = %15
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32 (%struct.inode*, %union.fscrypt_context*, i32)*, i32 (%struct.inode*, %union.fscrypt_context*, i32)** %34, align 8
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = call i32 %35(%struct.inode* %36, %union.fscrypt_context* %5, i32 24)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %28
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = call i32 @fscrypt_dummy_context_enabled(%struct.inode* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = call i64 @IS_ENCRYPTED(%struct.inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44, %40
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (%struct.inode*, i8*, ...) @fscrypt_warn(%struct.inode* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %211

53:                                               ; preds = %44
  %54 = call i32 @memset(%union.fscrypt_context* %5, i32 0, i32 24)
  %55 = bitcast %union.fscrypt_context* %5 to i32*
  store i32 129, i32* %55, align 8
  %56 = load i32, i32* @FSCRYPT_MODE_AES_256_XTS, align 4
  %57 = bitcast %union.fscrypt_context* %5 to %struct.TYPE_8__*
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @FSCRYPT_MODE_AES_256_CTS, align 4
  %60 = bitcast %union.fscrypt_context* %5 to %struct.TYPE_8__*
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = bitcast %union.fscrypt_context* %5 to %struct.TYPE_8__*
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %union.fscrypt_context*, %union.fscrypt_context** %63, align 8
  %65 = load i32, i32* @FSCRYPT_KEY_DESCRIPTOR_SIZE, align 4
  %66 = call i32 @memset(%union.fscrypt_context* %64, i32 66, i32 %65)
  store i32 24, i32* %8, align 4
  br label %67

67:                                               ; preds = %53, %28
  %68 = load i32, i32* @fscrypt_info_cachep, align 4
  %69 = load i32, i32* @GFP_NOFS, align 4
  %70 = call %struct.fscrypt_info* @kmem_cache_zalloc(i32 %68, i32 %69)
  store %struct.fscrypt_info* %70, %struct.fscrypt_info** %4, align 8
  %71 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %72 = icmp ne %struct.fscrypt_info* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %211

76:                                               ; preds = %67
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %79 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %78, i32 0, i32 5
  store %struct.inode* %77, %struct.inode** %79, align 8
  %80 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %81 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %80, i32 0, i32 3
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @fscrypt_policy_from_context(i32* %81, %union.fscrypt_context* %5, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.inode*, %struct.inode** %3, align 8
  %88 = call i32 (%struct.inode*, i8*, ...) @fscrypt_warn(%struct.inode* %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %186

89:                                               ; preds = %76
  %90 = bitcast %union.fscrypt_context* %5 to i32*
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %110 [
    i32 129, label %92
    i32 128, label %101
  ]

92:                                               ; preds = %89
  %93 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %94 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = bitcast %union.fscrypt_context* %5 to %struct.TYPE_8__*
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @FS_KEY_DERIVATION_NONCE_SIZE, align 4
  %100 = call i32 @memcpy(i32 %95, i32 %98, i32 %99)
  br label %114

101:                                              ; preds = %89
  %102 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %103 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = bitcast %union.fscrypt_context* %5 to %struct.TYPE_9__*
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @FS_KEY_DERIVATION_NONCE_SIZE, align 4
  %109 = call i32 @memcpy(i32 %104, i32 %107, i32 %108)
  br label %114

110:                                              ; preds = %89
  %111 = call i32 @WARN_ON(i32 1)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %8, align 4
  br label %186

114:                                              ; preds = %101, %92
  %115 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %116 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %115, i32 0, i32 3
  %117 = load %struct.inode*, %struct.inode** %3, align 8
  %118 = call i32 @fscrypt_supported_policy(i32* %116, %struct.inode* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %186

123:                                              ; preds = %114
  %124 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %125 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %124, i32 0, i32 3
  %126 = load %struct.inode*, %struct.inode** %3, align 8
  %127 = call %struct.fscrypt_mode* @select_encryption_mode(i32* %125, %struct.inode* %126)
  store %struct.fscrypt_mode* %127, %struct.fscrypt_mode** %6, align 8
  %128 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %6, align 8
  %129 = call i64 @IS_ERR(%struct.fscrypt_mode* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %6, align 8
  %133 = call i32 @PTR_ERR(%struct.fscrypt_mode* %132)
  store i32 %133, i32* %8, align 4
  br label %186

134:                                              ; preds = %123
  %135 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %6, align 8
  %136 = getelementptr inbounds %struct.fscrypt_mode, %struct.fscrypt_mode* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @FSCRYPT_MAX_IV_SIZE, align 8
  %139 = icmp sgt i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @WARN_ON(i32 %140)
  %142 = load %struct.fscrypt_mode*, %struct.fscrypt_mode** %6, align 8
  %143 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %144 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %143, i32 0, i32 2
  store %struct.fscrypt_mode* %142, %struct.fscrypt_mode** %144, align 8
  %145 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %146 = call i32 @setup_file_encryption_key(%struct.fscrypt_info* %145, %struct.key** %7)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %134
  br label %186

150:                                              ; preds = %134
  %151 = load %struct.inode*, %struct.inode** %3, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 0
  %153 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %154 = call i32* @cmpxchg_release(i32* %152, i32* null, %struct.fscrypt_info* %153)
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %185

156:                                              ; preds = %150
  %157 = load %struct.key*, %struct.key** %7, align 8
  %158 = icmp ne %struct.key* %157, null
  br i1 %158, label %159, label %184

159:                                              ; preds = %156
  %160 = load %struct.key*, %struct.key** %7, align 8
  %161 = getelementptr inbounds %struct.key, %struct.key* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load %struct.fscrypt_master_key**, %struct.fscrypt_master_key*** %162, align 8
  %164 = getelementptr inbounds %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %163, i64 0
  %165 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %164, align 8
  store %struct.fscrypt_master_key* %165, %struct.fscrypt_master_key** %9, align 8
  %166 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %9, align 8
  %167 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %166, i32 0, i32 3
  %168 = call i32 @refcount_inc(i32* %167)
  %169 = load %struct.key*, %struct.key** %7, align 8
  %170 = call i32 @key_get(%struct.key* %169)
  %171 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %172 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %9, align 8
  %174 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %173, i32 0, i32 1
  %175 = call i32 @spin_lock(i32* %174)
  %176 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %177 = getelementptr inbounds %struct.fscrypt_info, %struct.fscrypt_info* %176, i32 0, i32 0
  %178 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %9, align 8
  %179 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %178, i32 0, i32 2
  %180 = call i32 @list_add(i32* %177, i32* %179)
  %181 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %9, align 8
  %182 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %181, i32 0, i32 1
  %183 = call i32 @spin_unlock(i32* %182)
  br label %184

184:                                              ; preds = %159, %156
  store %struct.fscrypt_info* null, %struct.fscrypt_info** %4, align 8
  br label %185

185:                                              ; preds = %184, %150
  store i32 0, i32* %8, align 4
  br label %186

186:                                              ; preds = %185, %149, %131, %120, %110, %86
  %187 = load %struct.key*, %struct.key** %7, align 8
  %188 = icmp ne %struct.key* %187, null
  br i1 %188, label %189, label %201

189:                                              ; preds = %186
  %190 = load %struct.key*, %struct.key** %7, align 8
  %191 = getelementptr inbounds %struct.key, %struct.key* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load %struct.fscrypt_master_key**, %struct.fscrypt_master_key*** %192, align 8
  %194 = getelementptr inbounds %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %193, i64 0
  %195 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %194, align 8
  store %struct.fscrypt_master_key* %195, %struct.fscrypt_master_key** %10, align 8
  %196 = load %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %10, align 8
  %197 = getelementptr inbounds %struct.fscrypt_master_key, %struct.fscrypt_master_key* %196, i32 0, i32 0
  %198 = call i32 @up_read(i32* %197)
  %199 = load %struct.key*, %struct.key** %7, align 8
  %200 = call i32 @key_put(%struct.key* %199)
  br label %201

201:                                              ; preds = %189, %186
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @ENOKEY, align 4
  %204 = sub nsw i32 0, %203
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  store i32 0, i32* %8, align 4
  br label %207

207:                                              ; preds = %206, %201
  %208 = load %struct.fscrypt_info*, %struct.fscrypt_info** %4, align 8
  %209 = call i32 @put_crypt_info(%struct.fscrypt_info* %208)
  %210 = load i32, i32* %8, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %207, %73, %48, %26, %14
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i64 @fscrypt_has_encryption_key(%struct.inode*) #1

declare dso_local i32 @fscrypt_initialize(i32) #1

declare dso_local i32 @fscrypt_dummy_context_enabled(%struct.inode*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @fscrypt_warn(%struct.inode*, i8*, ...) #1

declare dso_local i32 @memset(%union.fscrypt_context*, i32, i32) #1

declare dso_local %struct.fscrypt_info* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @fscrypt_policy_from_context(i32*, %union.fscrypt_context*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fscrypt_supported_policy(i32*, %struct.inode*) #1

declare dso_local %struct.fscrypt_mode* @select_encryption_mode(i32*, %struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.fscrypt_mode*) #1

declare dso_local i32 @PTR_ERR(%struct.fscrypt_mode*) #1

declare dso_local i32 @setup_file_encryption_key(%struct.fscrypt_info*, %struct.key**) #1

declare dso_local i32* @cmpxchg_release(i32*, i32*, %struct.fscrypt_info*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @key_get(%struct.key*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @put_crypt_info(%struct.fscrypt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
