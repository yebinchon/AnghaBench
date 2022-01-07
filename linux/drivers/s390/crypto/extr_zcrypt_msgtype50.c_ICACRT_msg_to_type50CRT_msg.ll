; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype50.c_ICACRT_msg_to_type50CRT_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype50.c_ICACRT_msg_to_type50CRT_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_queue = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ap_message = type { i32, %struct.type50_crb3_msg* }
%struct.type50_crb3_msg = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.ica_rsa_modexpo_crt = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.type50_crb1_msg = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_4__ }
%struct.type50_crb2_msg = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_4__ }

@TYPE50_TYPE_CODE = common dso_local global i8* null, align 8
@TYPE50_CRB1_FMT = common dso_local global i32 0, align 4
@TYPE50_CRB2_FMT = common dso_local global i32 0, align 4
@CEX3A_MAX_MOD_SIZE = common dso_local global i64 0, align 8
@TYPE50_CRB3_FMT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSGTYPE_ADJUSTMENT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_queue*, %struct.ap_message*, %struct.ica_rsa_modexpo_crt*)* @ICACRT_msg_to_type50CRT_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ICACRT_msg_to_type50CRT_msg(%struct.zcrypt_queue* %0, %struct.ap_message* %1, %struct.ica_rsa_modexpo_crt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zcrypt_queue*, align 8
  %6 = alloca %struct.ap_message*, align 8
  %7 = alloca %struct.ica_rsa_modexpo_crt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.type50_crb1_msg*, align 8
  %17 = alloca %struct.type50_crb2_msg*, align 8
  %18 = alloca %struct.type50_crb3_msg*, align 8
  store %struct.zcrypt_queue* %0, %struct.zcrypt_queue** %5, align 8
  store %struct.ap_message* %1, %struct.ap_message** %6, align 8
  store %struct.ica_rsa_modexpo_crt* %2, %struct.ica_rsa_modexpo_crt** %7, align 8
  %19 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %20 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %25, 128
  br i1 %26, label %27, label %95

27:                                               ; preds = %3
  %28 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %29 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %28, i32 0, i32 1
  %30 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %29, align 8
  %31 = bitcast %struct.type50_crb3_msg* %30 to %struct.type50_crb1_msg*
  store %struct.type50_crb1_msg* %31, %struct.type50_crb1_msg** %16, align 8
  %32 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %33 = bitcast %struct.type50_crb1_msg* %32 to %struct.type50_crb3_msg*
  %34 = call i32 @memset(%struct.type50_crb3_msg* %33, i32 0, i32 72)
  %35 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %36 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %35, i32 0, i32 0
  store i32 72, i32* %36, align 8
  %37 = load i8*, i8** @TYPE50_TYPE_CODE, align 8
  %38 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %39 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  %41 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %42 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 72, i32* %43, align 8
  %44 = load i32, i32* @TYPE50_CRB1_FMT, align 4
  %45 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %46 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %48 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8* %54, i8** %10, align 8
  %55 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %56 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8* %62, i8** %11, align 8
  %63 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %64 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8* %70, i8** %12, align 8
  %71 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %72 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  store i8* %78, i8** %13, align 8
  %79 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %80 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  store i8* %86, i8** %14, align 8
  %87 = load %struct.type50_crb1_msg*, %struct.type50_crb1_msg** %16, align 8
  %88 = getelementptr inbounds %struct.type50_crb1_msg, %struct.type50_crb1_msg* %87, i32 0, i32 5
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 0, %92
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  store i8* %94, i8** %15, align 8
  br label %248

95:                                               ; preds = %3
  %96 = load i32, i32* %8, align 4
  %97 = icmp sle i32 %96, 256
  br i1 %97, label %98, label %166

98:                                               ; preds = %95
  %99 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %100 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %99, i32 0, i32 1
  %101 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %100, align 8
  %102 = bitcast %struct.type50_crb3_msg* %101 to %struct.type50_crb2_msg*
  store %struct.type50_crb2_msg* %102, %struct.type50_crb2_msg** %17, align 8
  %103 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %104 = bitcast %struct.type50_crb2_msg* %103 to %struct.type50_crb3_msg*
  %105 = call i32 @memset(%struct.type50_crb3_msg* %104, i32 0, i32 72)
  %106 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %107 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %106, i32 0, i32 0
  store i32 72, i32* %107, align 8
  %108 = load i8*, i8** @TYPE50_TYPE_CODE, align 8
  %109 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %110 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i8* %108, i8** %111, align 8
  %112 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %113 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 72, i32* %114, align 8
  %115 = load i32, i32* @TYPE50_CRB2_FMT, align 4
  %116 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %117 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %119 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = sub i64 0, %123
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  store i8* %125, i8** %10, align 8
  %126 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %127 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = sub i64 0, %131
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8* %133, i8** %11, align 8
  %134 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %135 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = sub i64 0, %139
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  store i8* %141, i8** %12, align 8
  %142 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %143 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = sub i64 0, %147
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  store i8* %149, i8** %13, align 8
  %150 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %151 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %150, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = sub i64 0, %155
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  store i8* %157, i8** %14, align 8
  %158 = load %struct.type50_crb2_msg*, %struct.type50_crb2_msg** %17, align 8
  %159 = getelementptr inbounds %struct.type50_crb2_msg, %struct.type50_crb2_msg* %158, i32 0, i32 5
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = sub i64 0, %163
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  store i8* %165, i8** %15, align 8
  br label %247

166:                                              ; preds = %95
  %167 = load i32, i32* %8, align 4
  %168 = icmp sle i32 %167, 512
  br i1 %168, label %169, label %243

169:                                              ; preds = %166
  %170 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %171 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @CEX3A_MAX_MOD_SIZE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %243

177:                                              ; preds = %169
  %178 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %179 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %178, i32 0, i32 1
  %180 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %179, align 8
  store %struct.type50_crb3_msg* %180, %struct.type50_crb3_msg** %18, align 8
  %181 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %182 = call i32 @memset(%struct.type50_crb3_msg* %181, i32 0, i32 72)
  %183 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %184 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %183, i32 0, i32 0
  store i32 72, i32* %184, align 8
  %185 = load i8*, i8** @TYPE50_TYPE_CODE, align 8
  %186 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %187 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %186, i32 0, i32 7
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  store i8* %185, i8** %188, align 8
  %189 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %190 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %189, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  store i32 72, i32* %191, align 8
  %192 = load i32, i32* @TYPE50_CRB3_FMT, align 4
  %193 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %194 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  %195 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %196 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = sub i64 0, %200
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  store i8* %202, i8** %10, align 8
  %203 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %204 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = sub i64 0, %208
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  store i8* %210, i8** %11, align 8
  %211 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %212 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = sub i64 0, %216
  %218 = getelementptr inbounds i8, i8* %214, i64 %217
  store i8* %218, i8** %12, align 8
  %219 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %220 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %219, i32 0, i32 3
  %221 = load i8*, i8** %220, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = sub i64 0, %224
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  store i8* %226, i8** %13, align 8
  %227 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %228 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %227, i32 0, i32 4
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = sub i64 0, %232
  %234 = getelementptr inbounds i8, i8* %230, i64 %233
  store i8* %234, i8** %14, align 8
  %235 = load %struct.type50_crb3_msg*, %struct.type50_crb3_msg** %18, align 8
  %236 = getelementptr inbounds %struct.type50_crb3_msg, %struct.type50_crb3_msg* %235, i32 0, i32 5
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = sub i64 0, %240
  %242 = getelementptr inbounds i8, i8* %238, i64 %241
  store i8* %242, i8** %15, align 8
  br label %246

243:                                              ; preds = %169, %166
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %4, align 4
  br label %306

246:                                              ; preds = %177
  br label %247

247:                                              ; preds = %246, %98
  br label %248

248:                                              ; preds = %247, %27
  %249 = load i8*, i8** %10, align 8
  %250 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %251 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %250, i32 0, i32 6
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @MSGTYPE_ADJUSTMENT, align 8
  %254 = add nsw i64 %252, %253
  %255 = load i32, i32* %9, align 4
  %256 = call i64 @copy_from_user(i8* %249, i64 %254, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %302, label %258

258:                                              ; preds = %248
  %259 = load i8*, i8** %11, align 8
  %260 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %261 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %260, i32 0, i32 5
  %262 = load i64, i64* %261, align 8
  %263 = load i32, i32* %9, align 4
  %264 = call i64 @copy_from_user(i8* %259, i64 %262, i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %302, label %266

266:                                              ; preds = %258
  %267 = load i8*, i8** %12, align 8
  %268 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %269 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @MSGTYPE_ADJUSTMENT, align 8
  %272 = add nsw i64 %270, %271
  %273 = load i32, i32* %9, align 4
  %274 = call i64 @copy_from_user(i8* %267, i64 %272, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %302, label %276

276:                                              ; preds = %266
  %277 = load i8*, i8** %13, align 8
  %278 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %279 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = load i32, i32* %9, align 4
  %282 = call i64 @copy_from_user(i8* %277, i64 %280, i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %302, label %284

284:                                              ; preds = %276
  %285 = load i8*, i8** %14, align 8
  %286 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %287 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @MSGTYPE_ADJUSTMENT, align 8
  %290 = add nsw i64 %288, %289
  %291 = load i32, i32* %9, align 4
  %292 = call i64 @copy_from_user(i8* %285, i64 %290, i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %302, label %294

294:                                              ; preds = %284
  %295 = load i8*, i8** %15, align 8
  %296 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %7, align 8
  %297 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load i32, i32* %8, align 4
  %300 = call i64 @copy_from_user(i8* %295, i64 %298, i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %294, %284, %276, %266, %258, %248
  %303 = load i32, i32* @EFAULT, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %4, align 4
  br label %306

305:                                              ; preds = %294
  store i32 0, i32* %4, align 4
  br label %306

306:                                              ; preds = %305, %302, %243
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local i32 @memset(%struct.type50_crb3_msg*, i32, i32) #1

declare dso_local i64 @copy_from_user(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
