; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_find_boot_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_find_boot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32 }
%struct.qed_mfw_tlv_iscsi = type { i32, i32, i32, i32, i32, i32 }
%struct.nvm_iscsi_block = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qedi_boot_target = type { i32, i32 }
%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i8*, i32 }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i64, i64 }
%struct.qedi_conn = type { %struct.iscsi_cls_conn*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@NVM_ISCSI_CFG_TARGET_ENABLED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TCP_IPV4 = common dso_local global i64 0, align 8
@IPV4_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@IPV6_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*, %struct.qed_mfw_tlv_iscsi*, %struct.nvm_iscsi_block*)* @qedi_find_boot_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_find_boot_info(%struct.qedi_ctx* %0, %struct.qed_mfw_tlv_iscsi* %1, %struct.nvm_iscsi_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca %struct.qed_mfw_tlv_iscsi*, align 8
  %7 = alloca %struct.nvm_iscsi_block*, align 8
  %8 = alloca %struct.qedi_boot_target*, align 8
  %9 = alloca %struct.qedi_boot_target*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iscsi_cls_session*, align 8
  %14 = alloca %struct.iscsi_cls_conn*, align 8
  %15 = alloca %struct.qedi_conn*, align 8
  %16 = alloca %struct.iscsi_session*, align 8
  %17 = alloca %struct.iscsi_conn*, align 8
  %18 = alloca [64 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %5, align 8
  store %struct.qed_mfw_tlv_iscsi* %1, %struct.qed_mfw_tlv_iscsi** %6, align 8
  store %struct.nvm_iscsi_block* %2, %struct.nvm_iscsi_block** %7, align 8
  store %struct.qedi_boot_target* null, %struct.qedi_boot_target** %8, align 8
  store %struct.qedi_boot_target* null, %struct.qedi_boot_target** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %7, align 8
  %22 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NVM_ISCSI_CFG_TARGET_ENABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %3
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.qedi_boot_target* @kzalloc(i32 8, i32 %36)
  store %struct.qedi_boot_target* %37, %struct.qedi_boot_target** %8, align 8
  %38 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %8, align 8
  %39 = icmp ne %struct.qedi_boot_target* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %225

41:                                               ; preds = %35
  %42 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %7, align 8
  %43 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %8, align 8
  %44 = call i32 @qedi_get_boot_tgt_info(%struct.nvm_iscsi_block* %42, %struct.qedi_boot_target* %43, i32 0)
  br label %45

45:                                               ; preds = %41, %3
  %46 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %7, align 8
  %47 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NVM_ISCSI_CFG_TARGET_ENABLED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %45
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.qedi_boot_target* @kzalloc(i32 8, i32 %61)
  store %struct.qedi_boot_target* %62, %struct.qedi_boot_target** %9, align 8
  %63 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %9, align 8
  %64 = icmp ne %struct.qedi_boot_target* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 -1, i32* %20, align 4
  br label %217

66:                                               ; preds = %60
  %67 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %7, align 8
  %68 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %9, align 8
  %69 = call i32 @qedi_get_boot_tgt_info(%struct.nvm_iscsi_block* %67, %struct.qedi_boot_target* %68, i32 1)
  br label %70

70:                                               ; preds = %66, %45
  store i32 0, i32* %19, align 4
  br label %71

71:                                               ; preds = %175, %70
  %72 = load i32, i32* %19, align 4
  %73 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %178

77:                                               ; preds = %71
  %78 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %79 = load i32, i32* %19, align 4
  %80 = call %struct.qedi_conn* @qedi_get_conn_from_id(%struct.qedi_ctx* %78, i32 %79)
  store %struct.qedi_conn* %80, %struct.qedi_conn** %15, align 8
  %81 = load %struct.qedi_conn*, %struct.qedi_conn** %15, align 8
  %82 = icmp ne %struct.qedi_conn* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %175

84:                                               ; preds = %77
  %85 = load %struct.qedi_conn*, %struct.qedi_conn** %15, align 8
  %86 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TCP_IPV4, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %94 = load i32, i32* @IPV4_LEN, align 4
  %95 = load %struct.qedi_conn*, %struct.qedi_conn** %15, align 8
  %96 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @snprintf(i8* %93, i32 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %110

101:                                              ; preds = %84
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %103 = load i32, i32* @IPV6_LEN, align 4
  %104 = load %struct.qedi_conn*, %struct.qedi_conn** %15, align 8
  %105 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @snprintf(i8* %102, i32 %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %101, %92
  %111 = load %struct.qedi_conn*, %struct.qedi_conn** %15, align 8
  %112 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %111, i32 0, i32 0
  %113 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %112, align 8
  store %struct.iscsi_cls_conn* %113, %struct.iscsi_cls_conn** %14, align 8
  %114 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %14, align 8
  %115 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %114, i32 0, i32 0
  %116 = load %struct.iscsi_conn*, %struct.iscsi_conn** %115, align 8
  store %struct.iscsi_conn* %116, %struct.iscsi_conn** %17, align 8
  %117 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %14, align 8
  %118 = call %struct.iscsi_cls_session* @iscsi_conn_to_session(%struct.iscsi_cls_conn* %117)
  store %struct.iscsi_cls_session* %118, %struct.iscsi_cls_session** %13, align 8
  %119 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %13, align 8
  %120 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %119, i32 0, i32 0
  %121 = load %struct.iscsi_session*, %struct.iscsi_session** %120, align 8
  store %struct.iscsi_session* %121, %struct.iscsi_session** %16, align 8
  %122 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %13, align 8
  %123 = call i32 @iscsi_is_session_online(%struct.iscsi_cls_session* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %110
  br label %175

126:                                              ; preds = %110
  %127 = load %struct.iscsi_session*, %struct.iscsi_session** %16, align 8
  %128 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  br label %175

132:                                              ; preds = %126
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %132
  %136 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %8, align 8
  %137 = getelementptr inbounds %struct.qedi_boot_target, %struct.qedi_boot_target* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.iscsi_session*, %struct.iscsi_session** %16, align 8
  %140 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strcmp(i32 %138, i8* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %135
  %145 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %8, align 8
  %146 = getelementptr inbounds %struct.qedi_boot_target, %struct.qedi_boot_target* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %149 = call i32 @strcmp(i32 %147, i8* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %144
  store i32 1, i32* %12, align 4
  br label %178

152:                                              ; preds = %144, %135
  br label %153

153:                                              ; preds = %152, %132
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %174

156:                                              ; preds = %153
  %157 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %9, align 8
  %158 = getelementptr inbounds %struct.qedi_boot_target, %struct.qedi_boot_target* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.iscsi_session*, %struct.iscsi_session** %16, align 8
  %161 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @strcmp(i32 %159, i8* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %156
  %166 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %9, align 8
  %167 = getelementptr inbounds %struct.qedi_boot_target, %struct.qedi_boot_target* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %170 = call i32 @strcmp(i32 %168, i8* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %165
  store i32 1, i32* %12, align 4
  br label %178

173:                                              ; preds = %165, %156
  br label %174

174:                                              ; preds = %173, %153
  br label %175

175:                                              ; preds = %174, %131, %125, %83
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %19, align 4
  br label %71

178:                                              ; preds = %172, %151, %71
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %209

181:                                              ; preds = %178
  %182 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  %183 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %6, align 8
  %188 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %187, i32 0, i32 0
  store i32 1, i32* %188, align 4
  %189 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %6, align 8
  %190 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %189, i32 0, i32 1
  store i32 1, i32* %190, align 4
  br label %191

191:                                              ; preds = %186, %181
  %192 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  %193 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %6, align 8
  %198 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %197, i32 0, i32 2
  store i32 1, i32* %198, align 4
  %199 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %6, align 8
  %200 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %199, i32 0, i32 3
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %196, %191
  %202 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %6, align 8
  %203 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %202, i32 0, i32 4
  store i32 1, i32* %203, align 4
  %204 = load %struct.iscsi_session*, %struct.iscsi_session** %16, align 8
  %205 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.qed_mfw_tlv_iscsi*, %struct.qed_mfw_tlv_iscsi** %6, align 8
  %208 = getelementptr inbounds %struct.qed_mfw_tlv_iscsi, %struct.qed_mfw_tlv_iscsi* %207, i32 0, i32 5
  store i32 %206, i32* %208, align 4
  br label %210

209:                                              ; preds = %178
  store i32 -1, i32* %20, align 4
  br label %210

210:                                              ; preds = %209, %201
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %9, align 8
  %215 = call i32 @kfree(%struct.qedi_boot_target* %214)
  br label %216

216:                                              ; preds = %213, %210
  br label %217

217:                                              ; preds = %216, %65
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %8, align 8
  %222 = call i32 @kfree(%struct.qedi_boot_target* %221)
  br label %223

223:                                              ; preds = %220, %217
  %224 = load i32, i32* %20, align 4
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %223, %40
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local %struct.qedi_boot_target* @kzalloc(i32, i32) #1

declare dso_local i32 @qedi_get_boot_tgt_info(%struct.nvm_iscsi_block*, %struct.qedi_boot_target*, i32) #1

declare dso_local %struct.qedi_conn* @qedi_get_conn_from_id(%struct.qedi_ctx*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.iscsi_cls_session* @iscsi_conn_to_session(%struct.iscsi_cls_conn*) #1

declare dso_local i32 @iscsi_is_session_online(%struct.iscsi_cls_session*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @kfree(%struct.qedi_boot_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
