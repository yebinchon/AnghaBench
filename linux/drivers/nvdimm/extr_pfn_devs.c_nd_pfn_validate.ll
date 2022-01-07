; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_nd_pfn_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pfn_devs.c_nd_pfn_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_pfn = type { i64, i32, %struct.TYPE_5__, i64, %struct.nd_namespace_common*, %struct.nd_pfn_sb* }
%struct.TYPE_5__ = type { i32 }
%struct.nd_namespace_common = type { i32 }
%struct.nd_pfn_sb = type { i8*, i64, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64 }
%struct.nd_namespace_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.nd_gen_sb = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PFN_SIG_LEN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"init failed, page size mismatch %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"init failed, struct page size mismatch %d\0A\00", align 1
@DAX_SIG = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"init failed, alignment mismatch: %ld:%ld\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"init failed, settings mismatch\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"align: %lx:%lx mode: %d:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"alignment: %lx exceeds capacity %llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"pfn array size exceeds capacity of %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"bad offset: %#llx dax disabled align: %#lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_pfn_validate(%struct.nd_pfn* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nd_pfn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nd_namespace_io*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.nd_pfn_sb*, align 8
  %13 = alloca %struct.nd_namespace_common*, align 8
  %14 = alloca i8*, align 8
  store %struct.nd_pfn* %0, %struct.nd_pfn** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %16 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %15, i32 0, i32 5
  %17 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %16, align 8
  store %struct.nd_pfn_sb* %17, %struct.nd_pfn_sb** %12, align 8
  %18 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %19 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %18, i32 0, i32 4
  %20 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %19, align 8
  store %struct.nd_namespace_common* %20, %struct.nd_namespace_common** %13, align 8
  %21 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %13, align 8
  %22 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %21, i32 0, i32 0
  %23 = call i8* @nd_dev_to_uuid(i32* %22)
  store i8* %23, i8** %14, align 8
  %24 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %25 = icmp ne %struct.nd_pfn_sb* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %13, align 8
  %28 = icmp ne %struct.nd_namespace_common* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %352

32:                                               ; preds = %26
  %33 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %34 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @is_memory(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %352

42:                                               ; preds = %32
  %43 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %13, align 8
  %44 = load i32, i32* @SZ_4K, align 4
  %45 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %46 = call i64 @nvdimm_read_bytes(%struct.nd_namespace_common* %43, i32 %44, %struct.nd_pfn_sb* %45, i32 72, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %352

51:                                               ; preds = %42
  %52 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %53 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* @PFN_SIG_LEN, align 4
  %57 = call i64 @memcmp(i64 %54, i8* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %352

62:                                               ; preds = %51
  %63 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %64 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %63, i32 0, i32 11
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @le64_to_cpu(i64 %65)
  store i64 %66, i64* %6, align 8
  %67 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %68 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %67, i32 0, i32 11
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %71 = bitcast %struct.nd_pfn_sb* %70 to %struct.nd_gen_sb*
  %72 = call i64 @nd_sb_checksum(%struct.nd_gen_sb* %71)
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %352

77:                                               ; preds = %62
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @cpu_to_le64(i64 %78)
  %80 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %81 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %80, i32 0, i32 11
  store i64 %79, i64* %81, align 8
  %82 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %83 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %82, i32 0, i32 10
  %84 = load i64, i64* %83, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = call i64 @memcmp(i64 %84, i8* %85, i32 16)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %352

91:                                               ; preds = %77
  %92 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %93 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @__le16_to_cpu(i32 %94)
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %99 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %98, i32 0, i32 5
  store i32 0, i32* %99, align 4
  %100 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %101 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %100, i32 0, i32 9
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %97, %91
  %103 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %104 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @__le16_to_cpu(i32 %105)
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %110 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %109, i32 0, i32 7
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %102
  %112 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %113 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @__le16_to_cpu(i32 %114)
  %116 = icmp slt i32 %115, 4
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = call i32 @cpu_to_le16(i32 64)
  %119 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %120 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i64, i64* @PAGE_SIZE, align 8
  %122 = call i32 @cpu_to_le32(i64 %121)
  %123 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %124 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %117, %111
  %126 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %127 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @le32_to_cpu(i32 %128)
  switch i64 %129, label %131 [
    i64 128, label %130
    i64 129, label %130
  ]

130:                                              ; preds = %125, %125
  br label %134

131:                                              ; preds = %125
  %132 = load i32, i32* @ENXIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %352

134:                                              ; preds = %130
  %135 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %136 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @le32_to_cpu(i32 %137)
  store i64 %138, i64* %10, align 8
  %139 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %140 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @le64_to_cpu(i64 %141)
  store i64 %142, i64* %7, align 8
  %143 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %144 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @le32_to_cpu(i32 %145)
  store i64 %146, i64* %11, align 8
  %147 = load i64, i64* %10, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %134
  %150 = load i64, i64* %7, align 8
  %151 = call i64 @ilog2(i64 %150)
  %152 = shl i64 1, %151
  store i64 %152, i64* %10, align 8
  br label %153

153:                                              ; preds = %149, %134
  %154 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %155 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @le32_to_cpu(i32 %156)
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %8, align 4
  %159 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %160 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @le32_to_cpu(i32 %161)
  %163 = load i64, i64* @PAGE_SIZE, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %153
  %166 = load i32, i32* %8, align 4
  %167 = icmp eq i32 %166, 129
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %170 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %169, i32 0, i32 2
  %171 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %172 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @le32_to_cpu(i32 %173)
  %175 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %170, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %174)
  %176 = load i32, i32* @EOPNOTSUPP, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %352

178:                                              ; preds = %165, %153
  %179 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %180 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @le16_to_cpu(i32 %181)
  %183 = sext i32 %182 to i64
  %184 = icmp ult i64 %183, 4
  br i1 %184, label %185, label %198

185:                                              ; preds = %178
  %186 = load i32, i32* %8, align 4
  %187 = icmp eq i32 %186, 129
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %190 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %189, i32 0, i32 2
  %191 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %192 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @le16_to_cpu(i32 %193)
  %195 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %190, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* @EOPNOTSUPP, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %352

198:                                              ; preds = %185, %178
  %199 = load i64, i64* %10, align 8
  %200 = call i32 @nd_supported_alignment(i64 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %220, label %202

202:                                              ; preds = %198
  %203 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %204 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i8*, i8** @DAX_SIG, align 8
  %207 = load i32, i32* @PFN_SIG_LEN, align 4
  %208 = call i64 @memcmp(i64 %205, i8* %206, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %202
  %211 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %212 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %211, i32 0, i32 2
  %213 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %214 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %10, align 8
  %217 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %212, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %215, i64 %216)
  %218 = load i32, i32* @EOPNOTSUPP, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %3, align 4
  br label %352

220:                                              ; preds = %202, %198
  %221 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %222 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %247, label %225

225:                                              ; preds = %220
  %226 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %227 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load i32, i32* @GFP_KERNEL, align 4
  %230 = call i64 @kmemdup(i8* %228, i32 16, i32 %229)
  %231 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %232 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %231, i32 0, i32 3
  store i64 %230, i64* %232, align 8
  %233 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %234 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %225
  %238 = load i32, i32* @ENOMEM, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %3, align 4
  br label %352

240:                                              ; preds = %225
  %241 = load i64, i64* %10, align 8
  %242 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %243 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %242, i32 0, i32 0
  store i64 %241, i64* %243, align 8
  %244 = load i32, i32* %8, align 4
  %245 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %246 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 8
  br label %289

247:                                              ; preds = %220
  %248 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %249 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.nd_pfn_sb*, %struct.nd_pfn_sb** %12, align 8
  %252 = getelementptr inbounds %struct.nd_pfn_sb, %struct.nd_pfn_sb* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = call i64 @memcmp(i64 %250, i8* %253, i32 16)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %247
  %257 = load i32, i32* @ENODEV, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %3, align 4
  br label %352

259:                                              ; preds = %247
  %260 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %261 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* %10, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %271, label %265

265:                                              ; preds = %259
  %266 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %267 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %288

271:                                              ; preds = %265, %259
  %272 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %273 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %272, i32 0, i32 2
  %274 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %273, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %275 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %276 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %275, i32 0, i32 2
  %277 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %278 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* %10, align 8
  %281 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %282 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %8, align 4
  %285 = call i32 @dev_dbg(%struct.TYPE_5__* %276, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %279, i64 %280, i32 %283, i32 %284)
  %286 = load i32, i32* @EINVAL, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %3, align 4
  br label %352

288:                                              ; preds = %265
  br label %289

289:                                              ; preds = %288, %240
  %290 = load i64, i64* %10, align 8
  %291 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %13, align 8
  %292 = call i64 @nvdimm_namespace_capacity(%struct.nd_namespace_common* %291)
  %293 = icmp ugt i64 %290, %292
  br i1 %293, label %294, label %303

294:                                              ; preds = %289
  %295 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %296 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %295, i32 0, i32 2
  %297 = load i64, i64* %10, align 8
  %298 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %13, align 8
  %299 = call i64 @nvdimm_namespace_capacity(%struct.nd_namespace_common* %298)
  %300 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %296, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %297, i64 %299)
  %301 = load i32, i32* @EINVAL, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %3, align 4
  br label %352

303:                                              ; preds = %289
  %304 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %13, align 8
  %305 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %304, i32 0, i32 0
  %306 = call %struct.nd_namespace_io* @to_nd_namespace_io(i32* %305)
  store %struct.nd_namespace_io* %306, %struct.nd_namespace_io** %9, align 8
  %307 = load i64, i64* %7, align 8
  %308 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %9, align 8
  %309 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %308, i32 0, i32 0
  %310 = call i64 @resource_size(%struct.TYPE_4__* %309)
  %311 = icmp sge i64 %307, %310
  br i1 %311, label %312, label %321

312:                                              ; preds = %303
  %313 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %314 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %313, i32 0, i32 2
  %315 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %13, align 8
  %316 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %315, i32 0, i32 0
  %317 = call i32 @dev_name(i32* %316)
  %318 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %314, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %317)
  %319 = load i32, i32* @EBUSY, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %3, align 4
  br label %352

321:                                              ; preds = %303
  %322 = load i64, i64* %10, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %336

324:                                              ; preds = %321
  %325 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %9, align 8
  %326 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* %7, align 8
  %330 = add nsw i64 %328, %329
  %331 = load i64, i64* %11, align 8
  %332 = add i64 %330, %331
  %333 = load i64, i64* %10, align 8
  %334 = call i32 @IS_ALIGNED(i64 %332, i64 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %324, %321
  %337 = load i64, i64* %7, align 8
  %338 = load i64, i64* @PAGE_SIZE, align 8
  %339 = call i32 @IS_ALIGNED(i64 %337, i64 %338)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %349, label %341

341:                                              ; preds = %336, %324
  %342 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %343 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %342, i32 0, i32 2
  %344 = load i64, i64* %7, align 8
  %345 = load i64, i64* %10, align 8
  %346 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %343, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i64 %344, i64 %345)
  %347 = load i32, i32* @ENXIO, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %3, align 4
  br label %352

349:                                              ; preds = %336
  %350 = load %struct.nd_pfn*, %struct.nd_pfn** %4, align 8
  %351 = call i32 @nd_pfn_clear_memmap_errors(%struct.nd_pfn* %350)
  store i32 %351, i32* %3, align 4
  br label %352

352:                                              ; preds = %349, %341, %312, %294, %271, %256, %237, %210, %188, %168, %131, %88, %74, %59, %48, %39, %29
  %353 = load i32, i32* %3, align 4
  ret i32 %353
}

declare dso_local i8* @nd_dev_to_uuid(i32*) #1

declare dso_local i32 @is_memory(i32) #1

declare dso_local i64 @nvdimm_read_bytes(%struct.nd_namespace_common*, i32, %struct.nd_pfn_sb*, i32, i32) #1

declare dso_local i64 @memcmp(i64, i8*, i32) #1

declare dso_local i64 @le64_to_cpu(i64) #1

declare dso_local i64 @nd_sb_checksum(%struct.nd_gen_sb*) #1

declare dso_local i64 @cpu_to_le64(i64) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ilog2(i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @nd_supported_alignment(i64) #1

declare dso_local i64 @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i64, i64, i32, i32) #1

declare dso_local i64 @nvdimm_namespace_capacity(%struct.nd_namespace_common*) #1

declare dso_local %struct.nd_namespace_io* @to_nd_namespace_io(i32*) #1

declare dso_local i64 @resource_size(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i32 @nd_pfn_clear_memmap_errors(%struct.nd_pfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
