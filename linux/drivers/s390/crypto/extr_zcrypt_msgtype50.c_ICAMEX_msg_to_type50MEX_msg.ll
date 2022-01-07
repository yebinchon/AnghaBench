; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype50.c_ICAMEX_msg_to_type50MEX_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype50.c_ICAMEX_msg_to_type50MEX_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_queue = type { i32 }
%struct.ap_message = type { i32, %struct.type50_meb3_msg* }
%struct.type50_meb3_msg = type { i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }
%struct.ica_rsa_modexpo = type { i32, i32, i32, i32 }
%struct.type50_meb1_msg = type { i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.type50_meb2_msg = type { i8*, i8*, i8*, i32, %struct.TYPE_2__ }

@TYPE50_TYPE_CODE = common dso_local global i8* null, align 8
@TYPE50_MEB1_FMT = common dso_local global i32 0, align 4
@TYPE50_MEB2_FMT = common dso_local global i32 0, align 4
@TYPE50_MEB3_FMT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_queue*, %struct.ap_message*, %struct.ica_rsa_modexpo*)* @ICAMEX_msg_to_type50MEX_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ICAMEX_msg_to_type50MEX_msg(%struct.zcrypt_queue* %0, %struct.ap_message* %1, %struct.ica_rsa_modexpo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zcrypt_queue*, align 8
  %6 = alloca %struct.ap_message*, align 8
  %7 = alloca %struct.ica_rsa_modexpo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.type50_meb1_msg*, align 8
  %13 = alloca %struct.type50_meb2_msg*, align 8
  %14 = alloca %struct.type50_meb3_msg*, align 8
  store %struct.zcrypt_queue* %0, %struct.zcrypt_queue** %5, align 8
  store %struct.ap_message* %1, %struct.ap_message** %6, align 8
  store %struct.ica_rsa_modexpo* %2, %struct.ica_rsa_modexpo** %7, align 8
  %15 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %7, align 8
  %16 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp sle i32 %18, 128
  br i1 %19, label %20, label %64

20:                                               ; preds = %3
  %21 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %22 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %21, i32 0, i32 1
  %23 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %22, align 8
  %24 = bitcast %struct.type50_meb3_msg* %23 to %struct.type50_meb1_msg*
  store %struct.type50_meb1_msg* %24, %struct.type50_meb1_msg** %12, align 8
  %25 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %26 = bitcast %struct.type50_meb1_msg* %25 to %struct.type50_meb3_msg*
  %27 = call i32 @memset(%struct.type50_meb3_msg* %26, i32 0, i32 48)
  %28 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %29 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %28, i32 0, i32 0
  store i32 48, i32* %29, align 8
  %30 = load i8*, i8** @TYPE50_TYPE_CODE, align 8
  %31 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %32 = getelementptr inbounds %struct.type50_meb1_msg, %struct.type50_meb1_msg* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %35 = getelementptr inbounds %struct.type50_meb1_msg, %struct.type50_meb1_msg* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 48, i32* %36, align 8
  %37 = load i32, i32* @TYPE50_MEB1_FMT, align 4
  %38 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %39 = getelementptr inbounds %struct.type50_meb1_msg, %struct.type50_meb1_msg* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %41 = getelementptr inbounds %struct.type50_meb1_msg, %struct.type50_meb1_msg* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8* %47, i8** %8, align 8
  %48 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %49 = getelementptr inbounds %struct.type50_meb1_msg, %struct.type50_meb1_msg* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8* %55, i8** %9, align 8
  %56 = load %struct.type50_meb1_msg*, %struct.type50_meb1_msg** %12, align 8
  %57 = getelementptr inbounds %struct.type50_meb1_msg, %struct.type50_meb1_msg* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8* %63, i8** %10, align 8
  br label %161

64:                                               ; preds = %3
  %65 = load i32, i32* %11, align 4
  %66 = icmp sle i32 %65, 256
  br i1 %66, label %67, label %111

67:                                               ; preds = %64
  %68 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %69 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %68, i32 0, i32 1
  %70 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %69, align 8
  %71 = bitcast %struct.type50_meb3_msg* %70 to %struct.type50_meb2_msg*
  store %struct.type50_meb2_msg* %71, %struct.type50_meb2_msg** %13, align 8
  %72 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %73 = bitcast %struct.type50_meb2_msg* %72 to %struct.type50_meb3_msg*
  %74 = call i32 @memset(%struct.type50_meb3_msg* %73, i32 0, i32 48)
  %75 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %76 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %75, i32 0, i32 0
  store i32 48, i32* %76, align 8
  %77 = load i8*, i8** @TYPE50_TYPE_CODE, align 8
  %78 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %79 = getelementptr inbounds %struct.type50_meb2_msg, %struct.type50_meb2_msg* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %82 = getelementptr inbounds %struct.type50_meb2_msg, %struct.type50_meb2_msg* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 48, i32* %83, align 8
  %84 = load i32, i32* @TYPE50_MEB2_FMT, align 4
  %85 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %86 = getelementptr inbounds %struct.type50_meb2_msg, %struct.type50_meb2_msg* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %88 = getelementptr inbounds %struct.type50_meb2_msg, %struct.type50_meb2_msg* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 0, %92
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  store i8* %94, i8** %8, align 8
  %95 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %96 = getelementptr inbounds %struct.type50_meb2_msg, %struct.type50_meb2_msg* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  store i8* %102, i8** %9, align 8
  %103 = load %struct.type50_meb2_msg*, %struct.type50_meb2_msg** %13, align 8
  %104 = getelementptr inbounds %struct.type50_meb2_msg, %struct.type50_meb2_msg* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 0, %108
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  store i8* %110, i8** %10, align 8
  br label %160

111:                                              ; preds = %64
  %112 = load i32, i32* %11, align 4
  %113 = icmp sle i32 %112, 512
  br i1 %113, label %114, label %156

114:                                              ; preds = %111
  %115 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %116 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %115, i32 0, i32 1
  %117 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %116, align 8
  store %struct.type50_meb3_msg* %117, %struct.type50_meb3_msg** %14, align 8
  %118 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %119 = call i32 @memset(%struct.type50_meb3_msg* %118, i32 0, i32 48)
  %120 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %121 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %120, i32 0, i32 0
  store i32 48, i32* %121, align 8
  %122 = load i8*, i8** @TYPE50_TYPE_CODE, align 8
  %123 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %124 = getelementptr inbounds %struct.type50_meb3_msg, %struct.type50_meb3_msg* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i8* %122, i8** %125, align 8
  %126 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %127 = getelementptr inbounds %struct.type50_meb3_msg, %struct.type50_meb3_msg* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 48, i32* %128, align 8
  %129 = load i32, i32* @TYPE50_MEB3_FMT, align 4
  %130 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %131 = getelementptr inbounds %struct.type50_meb3_msg, %struct.type50_meb3_msg* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %133 = getelementptr inbounds %struct.type50_meb3_msg, %struct.type50_meb3_msg* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = sub i64 0, %137
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  store i8* %139, i8** %8, align 8
  %140 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %141 = getelementptr inbounds %struct.type50_meb3_msg, %struct.type50_meb3_msg* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = sub i64 0, %145
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  store i8* %147, i8** %9, align 8
  %148 = load %struct.type50_meb3_msg*, %struct.type50_meb3_msg** %14, align 8
  %149 = getelementptr inbounds %struct.type50_meb3_msg, %struct.type50_meb3_msg* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = sub i64 0, %153
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  store i8* %155, i8** %10, align 8
  br label %159

156:                                              ; preds = %111
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %189

159:                                              ; preds = %114
  br label %160

160:                                              ; preds = %159, %67
  br label %161

161:                                              ; preds = %160, %20
  %162 = load i8*, i8** %8, align 8
  %163 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %7, align 8
  %164 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i64 @copy_from_user(i8* %162, i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %185, label %169

169:                                              ; preds = %161
  %170 = load i8*, i8** %9, align 8
  %171 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %7, align 8
  %172 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %11, align 4
  %175 = call i64 @copy_from_user(i8* %170, i32 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %169
  %178 = load i8*, i8** %10, align 8
  %179 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %7, align 8
  %180 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i64 @copy_from_user(i8* %178, i32 %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %177, %169, %161
  %186 = load i32, i32* @EFAULT, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %4, align 4
  br label %189

188:                                              ; preds = %177
  store i32 0, i32* %4, align 4
  br label %189

189:                                              ; preds = %188, %185, %156
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @memset(%struct.type50_meb3_msg*, i32, i32) #1

declare dso_local i64 @copy_from_user(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
