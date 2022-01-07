; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_show_boot_tgt_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_show_boot_tgt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32 }
%struct.nvm_iscsi_block = type { %struct.TYPE_13__*, %struct.TYPE_17__, %struct.TYPE_16__, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i8* }

@QEDI_LOG_EVT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Port:%d, tgt_idx:%d\0A\00", align 1
@NVM_ISCSI_CFG_BLK_MAPPED_PF_ID = common dso_local global i32 0, align 4
@NVM_ISCSI_CFG_TARGET_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Target disabled\0A\00", align 1
@NVM_ISCSI_CFG_GEN_IPV6_ENABLED = common dso_local global i32 0, align 4
@IPV6_LEN = common dso_local global i32 0, align 4
@IPV4_LEN = common dso_local global i32 0, align 4
@NVM_ISCSI_CFG_GEN_CHAP_ENABLED = common dso_local global i32 0, align 4
@NVM_ISCSI_CFG_GEN_CHAP_MUTUAL_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@NVM_ISCSI_CFG_ISCSI_NAME_MAX_LEN = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%pI6\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@NVM_ISCSI_CFG_TARGET_TCP_PORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%.*d\0A\00", align 1
@NVM_ISCSI_CFG_CHAP_NAME_MAX_LEN = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"%hhd\0A\00", align 1
@SYSFS_FLAG_FW_SEL_BOOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*, i32, i8*, i32)* @qedi_show_boot_tgt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_show_boot_tgt_info(%struct.qedi_ctx* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nvm_iscsi_block*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %20 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %21 = call %struct.nvm_iscsi_block* @qedi_get_nvram_block(%struct.qedi_ctx* %20)
  store %struct.nvm_iscsi_block* %21, %struct.nvm_iscsi_block** %15, align 8
  %22 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %23 = icmp ne %struct.nvm_iscsi_block* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %243

25:                                               ; preds = %4
  %26 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* @QEDI_LOG_EVT, align 4
  %29 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %30 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NVM_ISCSI_CFG_BLK_MAPPED_PF_ID, align 4
  %33 = call i32 @GET_FIELD2(i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i32*, i32, i8*, ...) @QEDI_INFO(i32* %27, i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %37 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NVM_ISCSI_CFG_TARGET_ENABLED, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %25
  %49 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* @QEDI_LOG_EVT, align 4
  %52 = call i32 (i32*, i32, i8*, ...) @QEDI_INFO(i32* %50, i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %243

53:                                               ; preds = %25
  %54 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %55 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @NVM_ISCSI_CFG_GEN_IPV6_ENABLED, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @IPV6_LEN, align 4
  br label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @IPV4_LEN, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %14, align 4
  %68 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %69 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NVM_ISCSI_CFG_GEN_CHAP_ENABLED, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %78 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  br label %83

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %76
  %84 = phi i8* [ %81, %76 ], [ null, %82 ]
  store i8* %84, i8** %16, align 8
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %89 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  br label %94

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %87
  %95 = phi i8* [ %92, %87 ], [ null, %93 ]
  store i8* %95, i8** %17, align 8
  %96 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %97 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @NVM_ISCSI_CFG_GEN_CHAP_MUTUAL_ENABLED, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %94
  %105 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %106 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  br label %115

114:                                              ; preds = %94
  br label %115

115:                                              ; preds = %114, %104
  %116 = phi i8* [ %113, %104 ], [ null, %114 ]
  store i8* %116, i8** %18, align 8
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %121 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %120, i32 0, i32 0
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  br label %130

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %119
  %131 = phi i8* [ %128, %119 ], [ null, %129 ]
  store i8* %131, i8** %19, align 8
  %132 = load i32, i32* %6, align 4
  switch i32 %132, label %241 [
    i32 132, label %133
    i32 134, label %146
    i32 130, label %176
    i32 133, label %189
    i32 137, label %214
    i32 136, label %219
    i32 129, label %224
    i32 128, label %229
    i32 135, label %234
    i32 131, label %238
  ]

133:                                              ; preds = %130
  %134 = load i8*, i8** %7, align 8
  %135 = load i8*, i8** @NVM_ISCSI_CFG_ISCSI_NAME_MAX_LEN, align 8
  %136 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %137 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %136, i32 0, i32 0
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @sprintf(i8* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %135, i8* %144)
  store i32 %145, i32* %9, align 4
  br label %242

146:                                              ; preds = %130
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load i8*, i8** %7, align 8
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %153 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %152, i32 0, i32 0
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %150, i32 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  store i32 %161, i32* %9, align 4
  br label %175

162:                                              ; preds = %146
  %163 = load i8*, i8** %7, align 8
  %164 = load i32, i32* %14, align 4
  %165 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %166 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %165, i32 0, i32 0
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %163, i32 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %162, %149
  br label %242

176:                                              ; preds = %130
  %177 = load i8*, i8** %7, align 8
  %178 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %179 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %178, i32 0, i32 0
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @NVM_ISCSI_CFG_TARGET_TCP_PORT, align 4
  %187 = call i32 @GET_FIELD2(i32 %185, i32 %186)
  %188 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %177, i32 12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  store i32 %188, i32* %9, align 4
  br label %242

189:                                              ; preds = %130
  %190 = load i8*, i8** %7, align 8
  %191 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %192 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %191, i32 0, i32 0
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %15, align 8
  %203 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %202, i32 0, i32 0
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %190, i32 22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %201, i32 %212)
  store i32 %213, i32* %9, align 4
  br label %242

214:                                              ; preds = %130
  %215 = load i8*, i8** %7, align 8
  %216 = load i8*, i8** @NVM_ISCSI_CFG_CHAP_NAME_MAX_LEN, align 8
  %217 = load i8*, i8** %16, align 8
  %218 = call i32 @sprintf(i8* %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %216, i8* %217)
  store i32 %218, i32* %9, align 4
  br label %242

219:                                              ; preds = %130
  %220 = load i8*, i8** %7, align 8
  %221 = load i8*, i8** @NVM_ISCSI_CFG_CHAP_NAME_MAX_LEN, align 8
  %222 = load i8*, i8** %17, align 8
  %223 = call i32 @sprintf(i8* %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %221, i8* %222)
  store i32 %223, i32* %9, align 4
  br label %242

224:                                              ; preds = %130
  %225 = load i8*, i8** %7, align 8
  %226 = load i8*, i8** @NVM_ISCSI_CFG_CHAP_NAME_MAX_LEN, align 8
  %227 = load i8*, i8** %18, align 8
  %228 = call i32 @sprintf(i8* %225, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %226, i8* %227)
  store i32 %228, i32* %9, align 4
  br label %242

229:                                              ; preds = %130
  %230 = load i8*, i8** %7, align 8
  %231 = load i8*, i8** @NVM_ISCSI_CFG_CHAP_NAME_MAX_LEN, align 8
  %232 = load i8*, i8** %19, align 8
  %233 = call i32 @sprintf(i8* %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %231, i8* %232)
  store i32 %233, i32* %9, align 4
  br label %242

234:                                              ; preds = %130
  %235 = load i8*, i8** %7, align 8
  %236 = load i32, i32* @SYSFS_FLAG_FW_SEL_BOOT, align 4
  %237 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %235, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %236)
  store i32 %237, i32* %9, align 4
  br label %242

238:                                              ; preds = %130
  %239 = load i8*, i8** %7, align 8
  %240 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %239, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 %240, i32* %9, align 4
  br label %242

241:                                              ; preds = %130
  store i32 0, i32* %9, align 4
  br label %242

242:                                              ; preds = %241, %238, %234, %229, %224, %219, %214, %189, %176, %175, %133
  br label %243

243:                                              ; preds = %242, %48, %24
  %244 = load i32, i32* %9, align 4
  ret i32 %244
}

declare dso_local %struct.nvm_iscsi_block* @qedi_get_nvram_block(%struct.qedi_ctx*) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, ...) #1

declare dso_local i32 @GET_FIELD2(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
