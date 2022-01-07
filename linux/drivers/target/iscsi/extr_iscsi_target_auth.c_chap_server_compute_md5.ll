; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_auth.c_chap_server_compute_md5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_auth.c_chap_server_compute_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_chap* }
%struct.iscsi_chap = type { i8, i8* }
%struct.iscsi_node_auth = type { i8*, i8*, i8*, i8*, i32 }
%struct.crypto_shash = type { i32 }
%struct.shash_desc = type { %struct.crypto_shash* }

@MD5_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@MAX_CHAP_N_SIZE = common dso_local global i32 0, align 4
@MAX_RESPONSE_LENGTH = common dso_local global i32 0, align 4
@CHAP_CHALLENGE_STR_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate challenge buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to allocate challenge_binhex buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CHAP_N\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Could not find CHAP_N.\0A\00", align 1
@HEX = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"CHAP_N values do not match!\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"[server] Got CHAP_N=%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"CHAP_R\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Could not find CHAP_R.\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Malformed CHAP_R\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"[server] Got CHAP_R=%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Unable to allocate struct crypto_shash\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Unable to allocate struct shash_desc\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"crypto_shash_init() failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"crypto_shash_update() failed for id\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"crypto_shash_update() failed for password\0A\00", align 1
@CHAP_CHALLENGE_LENGTH = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"crypto_shash_finup() failed for challenge\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"[server] MD5 Server Digest: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"[server] MD5 Digests do not match!\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"[server] MD5 Digests match, CHAP connection successful.\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"CHAP_I\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Could not find CHAP_I.\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"kstrtoul() failed for CHAP identifier: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"chap identifier: %lu greater than 255\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"[server] Got CHAP_I=%lu\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"CHAP_C\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Could not find CHAP_C.\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"Unable to convert incoming challenge\0A\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"CHAP_C exceeds maximum binary size of 1024 bytes\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Malformed CHAP_C\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"[server] Got CHAP_C=%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"initiator CHAP_C matches target CHAP_C, failing login attempt\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"crypto_shash_update() failed for password_mutual\0A\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"crypto_shash_finup() failed for ma challenge\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"CHAP_N=%s\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"[server] Sending CHAP_N=%s\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"CHAP_R=0x%s\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"[server] Sending CHAP_R=0x%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_node_auth*, i8*, i8*, i32*)* @chap_server_compute_md5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chap_server_compute_md5(%struct.iscsi_conn* %0, %struct.iscsi_node_auth* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_node_auth*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca [10 x i8], align 1
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.iscsi_chap*, align 8
  %26 = alloca %struct.crypto_shash*, align 8
  %27 = alloca %struct.shash_desc*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_node_auth* %1, %struct.iscsi_node_auth** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %31 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %13, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %35 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %36 = mul nsw i32 %35, 2
  %37 = add nsw i32 %36, 2
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %16, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %40 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %20, align 8
  %43 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %21, align 8
  %46 = load i32, i32* @MAX_CHAP_N_SIZE, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %22, align 8
  %49 = load i32, i32* @MAX_RESPONSE_LENGTH, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %23, align 8
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %52, i32 0, i32 0
  %54 = load %struct.iscsi_chap*, %struct.iscsi_chap** %53, align 8
  store %struct.iscsi_chap* %54, %struct.iscsi_chap** %25, align 8
  store %struct.crypto_shash* null, %struct.crypto_shash** %26, align 8
  store %struct.shash_desc* null, %struct.shash_desc** %27, align 8
  store i32 -1, i32* %28, align 4
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %56 = call i32 @memset(i8* %55, i32 0, i32 10)
  %57 = load i32, i32* @MAX_CHAP_N_SIZE, align 4
  %58 = call i32 @memset(i8* %48, i32 0, i32 %57)
  %59 = load i32, i32* @MAX_RESPONSE_LENGTH, align 4
  %60 = call i32 @memset(i8* %51, i32 0, i32 %59)
  %61 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %62 = call i32 @memset(i8* %34, i32 0, i32 %61)
  %63 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %64 = mul nsw i32 %63, 2
  %65 = add nsw i32 %64, 2
  %66 = call i32 @memset(i8* %39, i32 0, i32 %65)
  %67 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %68 = call i32 @memset(i8* %42, i32 0, i32 %67)
  %69 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %70 = call i32 @memset(i8* %45, i32 0, i32 %69)
  %71 = load i32, i32* @CHAP_CHALLENGE_STR_LEN, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @kzalloc(i32 %71, i32 %72)
  store i8* %73, i8** %18, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %5
  %77 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %374

78:                                               ; preds = %5
  %79 = load i32, i32* @CHAP_CHALLENGE_STR_LEN, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @kzalloc(i32 %79, i32 %80)
  store i8* %81, i8** %19, align 8
  %82 = load i8*, i8** %19, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %374

86:                                               ; preds = %78
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* @MAX_CHAP_N_SIZE, align 4
  %89 = call i64 @extract_param(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %88, i8* %48, i8* %15)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %374

93:                                               ; preds = %86
  %94 = load i8, i8* %15, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* @HEX, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %374

101:                                              ; preds = %93
  %102 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %7, align 8
  %103 = getelementptr inbounds %struct.iscsi_node_auth, %struct.iscsi_node_auth* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %24, align 8
  %108 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %7, align 8
  %109 = getelementptr inbounds %struct.iscsi_node_auth, %struct.iscsi_node_auth* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i64, i64* %24, align 8
  %112 = call i64 @strncmp(i8* %48, i8* %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %101
  %115 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %374

116:                                              ; preds = %101
  %117 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %48)
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* @MAX_RESPONSE_LENGTH, align 4
  %120 = call i64 @extract_param(i8* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %119, i8* %51, i8* %15)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %374

124:                                              ; preds = %116
  %125 = load i8, i8* %15, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8, i8* @HEX, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp ne i32 %126, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %374

132:                                              ; preds = %124
  %133 = call i32 @strlen(i8* %51)
  %134 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %135 = mul nsw i32 %134, 2
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %374

139:                                              ; preds = %132
  %140 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %141 = call i64 @hex2bin(i8* %42, i8* %51, i32 %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %374

145:                                              ; preds = %139
  %146 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %51)
  %147 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %147, %struct.crypto_shash** %26, align 8
  %148 = load %struct.crypto_shash*, %struct.crypto_shash** %26, align 8
  %149 = call i64 @IS_ERR(%struct.crypto_shash* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  store %struct.crypto_shash* null, %struct.crypto_shash** %26, align 8
  %152 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %374

153:                                              ; preds = %145
  %154 = load %struct.crypto_shash*, %struct.crypto_shash** %26, align 8
  %155 = call i64 @crypto_shash_descsize(%struct.crypto_shash* %154)
  %156 = add i64 8, %155
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call %struct.shash_desc* @kmalloc(i64 %156, i32 %157)
  store %struct.shash_desc* %158, %struct.shash_desc** %27, align 8
  %159 = load %struct.shash_desc*, %struct.shash_desc** %27, align 8
  %160 = icmp ne %struct.shash_desc* %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %153
  %162 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  br label %374

163:                                              ; preds = %153
  %164 = load %struct.crypto_shash*, %struct.crypto_shash** %26, align 8
  %165 = load %struct.shash_desc*, %struct.shash_desc** %27, align 8
  %166 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %165, i32 0, i32 0
  store %struct.crypto_shash* %164, %struct.crypto_shash** %166, align 8
  %167 = load %struct.shash_desc*, %struct.shash_desc** %27, align 8
  %168 = call i32 @crypto_shash_init(%struct.shash_desc* %167)
  store i32 %168, i32* %29, align 4
  %169 = load i32, i32* %29, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %163
  %172 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %374

173:                                              ; preds = %163
  %174 = load %struct.shash_desc*, %struct.shash_desc** %27, align 8
  %175 = load %struct.iscsi_chap*, %struct.iscsi_chap** %25, align 8
  %176 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %175, i32 0, i32 0
  %177 = call i32 (%struct.shash_desc*, ...) @crypto_shash_update(%struct.shash_desc* %174, i8* %176, i32 1)
  store i32 %177, i32* %29, align 4
  %178 = load i32, i32* %29, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %173
  %181 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  br label %374

182:                                              ; preds = %173
  %183 = load %struct.shash_desc*, %struct.shash_desc** %27, align 8
  %184 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %7, align 8
  %185 = getelementptr inbounds %struct.iscsi_node_auth, %struct.iscsi_node_auth* %184, i32 0, i32 1
  %186 = bitcast i8** %185 to i8*
  %187 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %7, align 8
  %188 = getelementptr inbounds %struct.iscsi_node_auth, %struct.iscsi_node_auth* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @strlen(i8* %189)
  %191 = call i32 (%struct.shash_desc*, ...) @crypto_shash_update(%struct.shash_desc* %183, i8* %186, i32 %190)
  store i32 %191, i32* %29, align 4
  %192 = load i32, i32* %29, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %182
  %195 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0))
  br label %374

196:                                              ; preds = %182
  %197 = load %struct.shash_desc*, %struct.shash_desc** %27, align 8
  %198 = load %struct.iscsi_chap*, %struct.iscsi_chap** %25, align 8
  %199 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* @CHAP_CHALLENGE_LENGTH, align 4
  %202 = call i32 @crypto_shash_finup(%struct.shash_desc* %197, i8* %200, i32 %201, i8* %45)
  store i32 %202, i32* %29, align 4
  %203 = load i32, i32* %29, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %196
  %206 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  br label %374

207:                                              ; preds = %196
  %208 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %209 = call i32 @bin2hex(i8* %39, i8* %45, i32 %208)
  %210 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* %39)
  %211 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %212 = call i64 @memcmp(i8* %45, i8* %42, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %207
  %215 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  br label %374

216:                                              ; preds = %207
  %217 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216
  %219 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %7, align 8
  %220 = getelementptr inbounds %struct.iscsi_node_auth, %struct.iscsi_node_auth* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %218
  store i32 0, i32* %28, align 4
  br label %374

224:                                              ; preds = %218
  %225 = load i8*, i8** %8, align 8
  %226 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %227 = call i64 @extract_param(i8* %225, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 10, i8* %226, i8* %15)
  %228 = icmp slt i64 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %374

231:                                              ; preds = %224
  %232 = load i8, i8* %15, align 1
  %233 = zext i8 %232 to i32
  %234 = load i8, i8* @HEX, align 1
  %235 = zext i8 %234 to i32
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 2
  %239 = call i32 @kstrtoul(i8* %238, i32 0, i64* %11)
  store i32 %239, i32* %29, align 4
  br label %243

240:                                              ; preds = %231
  %241 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %242 = call i32 @kstrtoul(i8* %241, i32 0, i64* %11)
  store i32 %242, i32* %29, align 4
  br label %243

243:                                              ; preds = %240, %237
  %244 = load i32, i32* %29, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i32, i32* %29, align 4
  %248 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i32 %247)
  br label %374

249:                                              ; preds = %243
  %250 = load i64, i64* %11, align 8
  %251 = icmp ugt i64 %250, 255
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i64, i64* %11, align 8
  %254 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i64 %253)
  br label %374

255:                                              ; preds = %249
  %256 = load i64, i64* %11, align 8
  %257 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i64 %256)
  %258 = load i8*, i8** %8, align 8
  %259 = load i32, i32* @CHAP_CHALLENGE_STR_LEN, align 4
  %260 = load i8*, i8** %18, align 8
  %261 = call i64 @extract_param(i8* %258, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 %259, i8* %260, i8* %15)
  %262 = icmp slt i64 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %255
  %264 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  br label %374

265:                                              ; preds = %255
  %266 = load i8, i8* %15, align 1
  %267 = zext i8 %266 to i32
  %268 = load i8, i8* @HEX, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp ne i32 %267, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  br label %374

273:                                              ; preds = %265
  %274 = load i8*, i8** %18, align 8
  %275 = call i32 @strlen(i8* %274)
  %276 = call i32 @DIV_ROUND_UP(i32 %275, i32 2)
  store i32 %276, i32* %30, align 4
  %277 = load i32, i32* %30, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %273
  %280 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0))
  br label %374

281:                                              ; preds = %273
  %282 = load i32, i32* %30, align 4
  %283 = icmp sgt i32 %282, 1024
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.28, i64 0, i64 0))
  br label %374

286:                                              ; preds = %281
  %287 = load i8*, i8** %19, align 8
  %288 = load i8*, i8** %18, align 8
  %289 = load i32, i32* %30, align 4
  %290 = call i64 @hex2bin(i8* %287, i8* %288, i32 %289)
  %291 = icmp slt i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %286
  %293 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  br label %374

294:                                              ; preds = %286
  %295 = load i8*, i8** %18, align 8
  %296 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* %295)
  %297 = load i8*, i8** %19, align 8
  %298 = load %struct.iscsi_chap*, %struct.iscsi_chap** %25, align 8
  %299 = getelementptr inbounds %struct.iscsi_chap, %struct.iscsi_chap* %298, i32 0, i32 1
  %300 = load i8*, i8** %299, align 8
  %301 = load i32, i32* @CHAP_CHALLENGE_LENGTH, align 4
  %302 = call i64 @memcmp(i8* %297, i8* %300, i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %294
  %305 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.31, i64 0, i64 0))
  br label %374

306:                                              ; preds = %294
  %307 = load %struct.shash_desc*, %struct.shash_desc** %27, align 8
  %308 = call i32 @crypto_shash_init(%struct.shash_desc* %307)
  store i32 %308, i32* %29, align 4
  %309 = load i32, i32* %29, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %306
  %312 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %374

313:                                              ; preds = %306
  %314 = load i64, i64* %11, align 8
  %315 = trunc i64 %314 to i8
  store i8 %315, i8* %12, align 1
  %316 = load %struct.shash_desc*, %struct.shash_desc** %27, align 8
  %317 = call i32 (%struct.shash_desc*, ...) @crypto_shash_update(%struct.shash_desc* %316, i8* %12, i32 1)
  store i32 %317, i32* %29, align 4
  %318 = load i32, i32* %29, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %313
  %321 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  br label %374

322:                                              ; preds = %313
  %323 = load %struct.shash_desc*, %struct.shash_desc** %27, align 8
  %324 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %7, align 8
  %325 = getelementptr inbounds %struct.iscsi_node_auth, %struct.iscsi_node_auth* %324, i32 0, i32 2
  %326 = load i8*, i8** %325, align 8
  %327 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %7, align 8
  %328 = getelementptr inbounds %struct.iscsi_node_auth, %struct.iscsi_node_auth* %327, i32 0, i32 2
  %329 = load i8*, i8** %328, align 8
  %330 = call i32 @strlen(i8* %329)
  %331 = call i32 (%struct.shash_desc*, ...) @crypto_shash_update(%struct.shash_desc* %323, i8* %326, i32 %330)
  store i32 %331, i32* %29, align 4
  %332 = load i32, i32* %29, align 4
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %322
  %335 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0))
  br label %374

336:                                              ; preds = %322
  %337 = load %struct.shash_desc*, %struct.shash_desc** %27, align 8
  %338 = load i8*, i8** %19, align 8
  %339 = load i32, i32* %30, align 4
  %340 = call i32 @crypto_shash_finup(%struct.shash_desc* %337, i8* %338, i32 %339, i8* %34)
  store i32 %340, i32* %29, align 4
  %341 = load i32, i32* %29, align 4
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %336
  %344 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0))
  br label %374

345:                                              ; preds = %336
  %346 = load i8*, i8** %9, align 8
  %347 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %7, align 8
  %348 = getelementptr inbounds %struct.iscsi_node_auth, %struct.iscsi_node_auth* %347, i32 0, i32 3
  %349 = load i8*, i8** %348, align 8
  %350 = call i32 @sprintf(i8* %346, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* %349)
  %351 = load i32*, i32** %10, align 8
  store i32 %350, i32* %351, align 4
  %352 = load i32*, i32** %10, align 8
  %353 = load i32, i32* %352, align 4
  %354 = add i32 %353, 1
  store i32 %354, i32* %352, align 4
  %355 = load %struct.iscsi_node_auth*, %struct.iscsi_node_auth** %7, align 8
  %356 = getelementptr inbounds %struct.iscsi_node_auth, %struct.iscsi_node_auth* %355, i32 0, i32 3
  %357 = load i8*, i8** %356, align 8
  %358 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i64 0, i64 0), i8* %357)
  %359 = load i32, i32* @MD5_SIGNATURE_SIZE, align 4
  %360 = call i32 @bin2hex(i8* %39, i8* %34, i32 %359)
  %361 = load i8*, i8** %9, align 8
  %362 = load i32*, i32** %10, align 8
  %363 = load i32, i32* %362, align 4
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %361, i64 %364
  %366 = call i32 @sprintf(i8* %365, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* %39)
  %367 = load i32*, i32** %10, align 8
  %368 = load i32, i32* %367, align 4
  %369 = add i32 %368, %366
  store i32 %369, i32* %367, align 4
  %370 = load i32*, i32** %10, align 8
  %371 = load i32, i32* %370, align 4
  %372 = add i32 %371, 1
  store i32 %372, i32* %370, align 4
  %373 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i8* %39)
  store i32 0, i32* %28, align 4
  br label %374

374:                                              ; preds = %345, %343, %334, %320, %311, %304, %292, %284, %279, %271, %263, %252, %246, %229, %223, %214, %205, %194, %180, %171, %161, %151, %143, %137, %130, %122, %114, %99, %91, %84, %76
  %375 = load %struct.shash_desc*, %struct.shash_desc** %27, align 8
  %376 = call i32 @kzfree(%struct.shash_desc* %375)
  %377 = load %struct.crypto_shash*, %struct.crypto_shash** %26, align 8
  %378 = icmp ne %struct.crypto_shash* %377, null
  br i1 %378, label %379, label %382

379:                                              ; preds = %374
  %380 = load %struct.crypto_shash*, %struct.crypto_shash** %26, align 8
  %381 = call i32 @crypto_free_shash(%struct.crypto_shash* %380)
  br label %382

382:                                              ; preds = %379, %374
  %383 = load i8*, i8** %18, align 8
  %384 = call i32 @kfree(i8* %383)
  %385 = load i8*, i8** %19, align 8
  %386 = call i32 @kfree(i8* %385)
  %387 = load i32, i32* %28, align 4
  %388 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %388)
  ret i32 %387
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i64 @extract_param(i8*, i8*, i32, i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i64 @hex2bin(i8*, i8*, i32) #2

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #2

declare dso_local %struct.shash_desc* @kmalloc(i64, i32) #2

declare dso_local i64 @crypto_shash_descsize(%struct.crypto_shash*) #2

declare dso_local i32 @crypto_shash_init(%struct.shash_desc*) #2

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, ...) #2

declare dso_local i32 @crypto_shash_finup(%struct.shash_desc*, i8*, i32, i8*) #2

declare dso_local i32 @bin2hex(i8*, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @kzfree(%struct.shash_desc*) #2

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #2

declare dso_local i32 @kfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
