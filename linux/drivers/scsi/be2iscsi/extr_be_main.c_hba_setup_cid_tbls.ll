; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hba_setup_cid_tbls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hba_setup_cid_tbls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.ulp_cid_info**, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__, %struct.ulp_cid_info*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.ulp_cid_info }
%struct.ulp_cid_info = type { i64, %struct.ulp_cid_info*, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@BEISCSI_ULP_COUNT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"BM_%d : Failed to allocate memoryfor ULP_CID_INFO for ULP : %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"BM_%d : Failed to allocate memoryfor CID_ARRAY for ULP : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"BM_%d : Failed to allocate memory in hba_setup_cid_tbls\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"BM_%d : Failed to allocate memory inhba_setup_cid_tbls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @hba_setup_cid_tbls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hba_setup_cid_tbls(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ulp_cid_info*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store %struct.ulp_cid_info* null, %struct.ulp_cid_info** %7, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %69, %1
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @BEISCSI_ULP_COUNT, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %72

12:                                               ; preds = %8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %15 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to i8*
  %18 = call i64 @test_bit(i64 %13, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %12
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.ulp_cid_info* @kzalloc(i32 32, i32 %21)
  store %struct.ulp_cid_info* %22, %struct.ulp_cid_info** %7, align 8
  %23 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %24 = icmp ne %struct.ulp_cid_info* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %27 = load i32, i32* @KERN_ERR, align 4
  %28 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %193

33:                                               ; preds = %20
  %34 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba* %34, i64 %35)
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kcalloc(i64 %36, i32 32, i32 %37)
  %39 = bitcast i8* %38 to %struct.ulp_cid_info*
  %40 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %41 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %40, i32 0, i32 1
  store %struct.ulp_cid_info* %39, %struct.ulp_cid_info** %41, align 8
  %42 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %43 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %42, i32 0, i32 1
  %44 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %43, align 8
  %45 = icmp ne %struct.ulp_cid_info* %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %33
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %48 = load i32, i32* @KERN_ERR, align 4
  %49 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %50 = load i64, i64* %6, align 8
  %51 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %53 = call i32 @kfree(%struct.ulp_cid_info* %52)
  store %struct.ulp_cid_info* null, %struct.ulp_cid_info** %7, align 8
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %193

56:                                               ; preds = %33
  %57 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba* %57, i64 %58)
  %60 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %61 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %63 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %64 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %63, i32 0, i32 0
  %65 = load %struct.ulp_cid_info**, %struct.ulp_cid_info*** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.ulp_cid_info*, %struct.ulp_cid_info** %65, i64 %66
  store %struct.ulp_cid_info* %62, %struct.ulp_cid_info** %67, align 8
  br label %68

68:                                               ; preds = %56, %12
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %6, align 8
  br label %8

72:                                               ; preds = %8
  %73 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %74 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @kcalloc(i64 %76, i32 8, i32 %77)
  %79 = bitcast i8* %78 to %struct.ulp_cid_info*
  %80 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %81 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %80, i32 0, i32 4
  store %struct.ulp_cid_info* %79, %struct.ulp_cid_info** %81, align 8
  %82 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %83 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %82, i32 0, i32 4
  %84 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %83, align 8
  %85 = icmp ne %struct.ulp_cid_info* %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %72
  %87 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %88 = load i32, i32* @KERN_ERR, align 4
  %89 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %90 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %193

93:                                               ; preds = %72
  %94 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %95 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @kcalloc(i64 %97, i32 8, i32 %98)
  %100 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %101 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %103 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %102, i32 0, i32 5
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %119, label %106

106:                                              ; preds = %93
  %107 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %108 = load i32, i32* @KERN_ERR, align 4
  %109 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %110 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %111 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %112 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %111, i32 0, i32 4
  %113 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %112, align 8
  %114 = call i32 @kfree(%struct.ulp_cid_info* %113)
  %115 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %116 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %115, i32 0, i32 4
  store %struct.ulp_cid_info* null, %struct.ulp_cid_info** %116, align 8
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %193

119:                                              ; preds = %93
  store i64 0, i64* %5, align 8
  br label %120

120:                                              ; preds = %161, %119
  %121 = load i64, i64* %5, align 8
  %122 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %123 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ult i64 %121, %125
  br i1 %126, label %127, label %164

127:                                              ; preds = %120
  %128 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %129 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %128, i32 0, i32 2
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load i64, i64* %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %6, align 8
  %137 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %138 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %137, i32 0, i32 0
  %139 = load %struct.ulp_cid_info**, %struct.ulp_cid_info*** %138, align 8
  %140 = load i64, i64* %6, align 8
  %141 = getelementptr inbounds %struct.ulp_cid_info*, %struct.ulp_cid_info** %139, i64 %140
  %142 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %141, align 8
  store %struct.ulp_cid_info* %142, %struct.ulp_cid_info** %7, align 8
  %143 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %144 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %143, i32 0, i32 1
  %145 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %144, align 8
  %146 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %147 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %147, align 8
  %150 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %145, i64 %148
  %151 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %152 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %151, i32 0, i32 2
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i64, i64* %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = bitcast %struct.ulp_cid_info* %150 to i8*
  %160 = bitcast %struct.ulp_cid_info* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 32, i1 false)
  br label %161

161:                                              ; preds = %127
  %162 = load i64, i64* %5, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %5, align 8
  br label %120

164:                                              ; preds = %120
  store i64 0, i64* %6, align 8
  br label %165

165:                                              ; preds = %189, %164
  %166 = load i64, i64* %6, align 8
  %167 = load i64, i64* @BEISCSI_ULP_COUNT, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %192

169:                                              ; preds = %165
  %170 = load i64, i64* %6, align 8
  %171 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %172 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = bitcast i32* %173 to i8*
  %175 = call i64 @test_bit(i64 %170, i8* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %169
  %178 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %179 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %178, i32 0, i32 0
  %180 = load %struct.ulp_cid_info**, %struct.ulp_cid_info*** %179, align 8
  %181 = load i64, i64* %6, align 8
  %182 = getelementptr inbounds %struct.ulp_cid_info*, %struct.ulp_cid_info** %180, i64 %181
  %183 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %182, align 8
  store %struct.ulp_cid_info* %183, %struct.ulp_cid_info** %7, align 8
  %184 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %185 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %184, i32 0, i32 3
  store i64 0, i64* %185, align 8
  %186 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %187 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %186, i32 0, i32 2
  store i64 0, i64* %187, align 8
  br label %188

188:                                              ; preds = %177, %169
  br label %189

189:                                              ; preds = %188
  %190 = load i64, i64* %6, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %6, align 8
  br label %165

192:                                              ; preds = %165
  store i32 0, i32* %2, align 4
  br label %234

193:                                              ; preds = %106, %86, %46, %25
  store i64 0, i64* %6, align 8
  br label %194

194:                                              ; preds = %229, %193
  %195 = load i64, i64* %6, align 8
  %196 = load i64, i64* @BEISCSI_ULP_COUNT, align 8
  %197 = icmp ult i64 %195, %196
  br i1 %197, label %198, label %232

198:                                              ; preds = %194
  %199 = load i64, i64* %6, align 8
  %200 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %201 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = bitcast i32* %202 to i8*
  %204 = call i64 @test_bit(i64 %199, i8* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %228

206:                                              ; preds = %198
  %207 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %208 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %207, i32 0, i32 0
  %209 = load %struct.ulp_cid_info**, %struct.ulp_cid_info*** %208, align 8
  %210 = load i64, i64* %6, align 8
  %211 = getelementptr inbounds %struct.ulp_cid_info*, %struct.ulp_cid_info** %209, i64 %210
  %212 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %211, align 8
  store %struct.ulp_cid_info* %212, %struct.ulp_cid_info** %7, align 8
  %213 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %214 = icmp ne %struct.ulp_cid_info* %213, null
  br i1 %214, label %215, label %227

215:                                              ; preds = %206
  %216 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %217 = getelementptr inbounds %struct.ulp_cid_info, %struct.ulp_cid_info* %216, i32 0, i32 1
  %218 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %217, align 8
  %219 = call i32 @kfree(%struct.ulp_cid_info* %218)
  %220 = load %struct.ulp_cid_info*, %struct.ulp_cid_info** %7, align 8
  %221 = call i32 @kfree(%struct.ulp_cid_info* %220)
  %222 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %223 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %222, i32 0, i32 0
  %224 = load %struct.ulp_cid_info**, %struct.ulp_cid_info*** %223, align 8
  %225 = load i64, i64* %6, align 8
  %226 = getelementptr inbounds %struct.ulp_cid_info*, %struct.ulp_cid_info** %224, i64 %225
  store %struct.ulp_cid_info* null, %struct.ulp_cid_info** %226, align 8
  br label %227

227:                                              ; preds = %215, %206
  br label %228

228:                                              ; preds = %227, %198
  br label %229

229:                                              ; preds = %228
  %230 = load i64, i64* %6, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %6, align 8
  br label %194

232:                                              ; preds = %194
  %233 = load i32, i32* %4, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %232, %192
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local i64 @test_bit(i64, i8*) #1

declare dso_local %struct.ulp_cid_info* @kzalloc(i32, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i64 @BEISCSI_GET_CID_COUNT(%struct.beiscsi_hba*, i64) #1

declare dso_local i32 @kfree(%struct.ulp_cid_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
