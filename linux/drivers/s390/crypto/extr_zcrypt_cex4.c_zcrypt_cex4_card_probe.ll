; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex4.c_zcrypt_cex4_card_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex4.c_zcrypt_cex4_card_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ap_card = type { i32, %struct.zcrypt_card*, %struct.TYPE_3__ }
%struct.zcrypt_card = type { i8*, i32, i8*, i8*, i8*, i32, i8*, %struct.ap_card* }
%struct.TYPE_3__ = type { i64 }

@zcrypt_cex4_card_probe.CEX4A_SPEED_IDX = internal constant [8 x i32] [i32 14, i32 19, i32 249, i32 42, i32 228, i32 1458, i32 0, i32 0], align 16
@zcrypt_cex4_card_probe.CEX5A_SPEED_IDX = internal constant [8 x i32] [i32 8, i32 9, i32 20, i32 18, i32 66, i32 458, i32 0, i32 0], align 16
@zcrypt_cex4_card_probe.CEX6A_SPEED_IDX = internal constant [8 x i32] [i32 6, i32 9, i32 20, i32 17, i32 65, i32 438, i32 0, i32 0], align 16
@zcrypt_cex4_card_probe.CEX7A_SPEED_IDX = internal constant [8 x i32] [i32 6, i32 8, i32 17, i32 15, i32 54, i32 362, i32 0, i32 0], align 16
@zcrypt_cex4_card_probe.CEX4C_SPEED_IDX = internal constant [8 x i32] [i32 59, i32 69, i32 308, i32 83, i32 278, i32 2204, i32 209, i32 40], align 16
@zcrypt_cex4_card_probe.CEX5C_SPEED_IDX = internal constant [8 x i32] [i32 24, i32 31, i32 50, i32 37, i32 90, i32 479, i32 27, i32 10], align 16
@zcrypt_cex4_card_probe.CEX6C_SPEED_IDX = internal constant [8 x i32] [i32 16, i32 20, i32 32, i32 27, i32 77, i32 455, i32 24, i32 9], align 16
@zcrypt_cex4_card_probe.CEX7C_SPEED_IDX = internal constant [8 x i32] [i32 14, i32 16, i32 26, i32 23, i32 64, i32 376, i32 23, i32 8], align 16
@zcrypt_cex4_card_probe.CEX4P_SPEED_IDX = internal constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 50], align 16
@zcrypt_cex4_card_probe.CEX5P_SPEED_IDX = internal constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10], align 16
@zcrypt_cex4_card_probe.CEX6P_SPEED_IDX = internal constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9], align 16
@zcrypt_cex4_card_probe.CEX7P_SPEED_IDX = internal constant [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8], align 16
@ENOMEM = common dso_local global i32 0, align 4
@AP_FUNC_ACCEL = common dso_local global i32 0, align 4
@AP_DEVICE_TYPE_CEX4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"CEX4A\00", align 1
@ZCRYPT_CEX4 = common dso_local global i8* null, align 8
@AP_DEVICE_TYPE_CEX5 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"CEX5A\00", align 1
@ZCRYPT_CEX5 = common dso_local global i8* null, align 8
@AP_DEVICE_TYPE_CEX6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"CEX6A\00", align 1
@ZCRYPT_CEX6 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"CEX7A\00", align 1
@CEX4A_MIN_MOD_SIZE = common dso_local global i8* null, align 8
@AP_FUNC_MEX4K = common dso_local global i32 0, align 4
@AP_FUNC_CRT4K = common dso_local global i32 0, align 4
@CEX4A_MAX_MOD_SIZE_4K = common dso_local global i8* null, align 8
@CEX4A_MAX_MOD_SIZE_2K = common dso_local global i8* null, align 8
@AP_FUNC_COPRO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"CEX4C\00", align 1
@ZCRYPT_CEX3C = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"CEX5C\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"CEX6C\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"CEX7C\00", align 1
@CEX4C_MIN_MOD_SIZE = common dso_local global i8* null, align 8
@CEX4C_MAX_MOD_SIZE = common dso_local global i8* null, align 8
@AP_FUNC_EP11 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"CEX4P\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"CEX5P\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"CEX6P\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"CEX7P\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@cca_card_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*)* @zcrypt_cex4_card_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_cex4_card_probe(%struct.ap_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca %struct.ap_card*, align 8
  %5 = alloca %struct.zcrypt_card*, align 8
  %6 = alloca i32, align 4
  store %struct.ap_device* %0, %struct.ap_device** %3, align 8
  %7 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %8 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %7, i32 0, i32 0
  %9 = call %struct.ap_card* @to_ap_card(%struct.TYPE_4__* %8)
  store %struct.ap_card* %9, %struct.ap_card** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = call %struct.zcrypt_card* (...) @zcrypt_card_alloc()
  store %struct.zcrypt_card* %10, %struct.zcrypt_card** %5, align 8
  %11 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %12 = icmp ne %struct.zcrypt_card* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %318

16:                                               ; preds = %1
  %17 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %18 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %19 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %18, i32 0, i32 7
  store %struct.ap_card* %17, %struct.ap_card** %19, align 8
  %20 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %21 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %22 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %21, i32 0, i32 1
  store %struct.zcrypt_card* %20, %struct.zcrypt_card** %22, align 8
  %23 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %24 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %23, i32 0, i32 0
  %25 = load i32, i32* @AP_FUNC_ACCEL, align 4
  %26 = call i64 @ap_test_bit(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %121

28:                                               ; preds = %16
  %29 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %30 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AP_DEVICE_TYPE_CEX4, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %37 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = load i8*, i8** @ZCRYPT_CEX4, align 8
  %39 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %40 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %42 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @memcpy(i32 %43, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex4_card_probe.CEX4A_SPEED_IDX, i64 0, i64 0), i32 32)
  br label %91

45:                                               ; preds = %28
  %46 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %47 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AP_DEVICE_TYPE_CEX5, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %54 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %54, align 8
  %55 = load i8*, i8** @ZCRYPT_CEX5, align 8
  %56 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %57 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  %58 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %59 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @memcpy(i32 %60, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex4_card_probe.CEX5A_SPEED_IDX, i64 0, i64 0), i32 32)
  br label %90

62:                                               ; preds = %45
  %63 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %64 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AP_DEVICE_TYPE_CEX6, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %71 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %71, align 8
  %72 = load i8*, i8** @ZCRYPT_CEX6, align 8
  %73 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %74 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %76 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @memcpy(i32 %77, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex4_card_probe.CEX6A_SPEED_IDX, i64 0, i64 0), i32 32)
  br label %89

79:                                               ; preds = %62
  %80 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %81 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %81, align 8
  %82 = load i8*, i8** @ZCRYPT_CEX6, align 8
  %83 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %84 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %83, i32 0, i32 6
  store i8* %82, i8** %84, align 8
  %85 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %86 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i32 %87, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex4_card_probe.CEX7A_SPEED_IDX, i64 0, i64 0), i32 32)
  br label %89

89:                                               ; preds = %79, %69
  br label %90

90:                                               ; preds = %89, %52
  br label %91

91:                                               ; preds = %90, %35
  %92 = load i8*, i8** @CEX4A_MIN_MOD_SIZE, align 8
  %93 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %94 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %96 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %95, i32 0, i32 0
  %97 = load i32, i32* @AP_FUNC_MEX4K, align 4
  %98 = call i64 @ap_test_bit(i32* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %91
  %101 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %102 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %101, i32 0, i32 0
  %103 = load i32, i32* @AP_FUNC_CRT4K, align 4
  %104 = call i64 @ap_test_bit(i32* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load i8*, i8** @CEX4A_MAX_MOD_SIZE_4K, align 8
  %108 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %109 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @CEX4A_MAX_MOD_SIZE_4K, align 8
  %111 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %112 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  br label %120

113:                                              ; preds = %100, %91
  %114 = load i8*, i8** @CEX4A_MAX_MOD_SIZE_2K, align 8
  %115 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %116 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @CEX4A_MAX_MOD_SIZE_2K, align 8
  %118 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %119 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %113, %106
  br label %286

121:                                              ; preds = %16
  %122 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %123 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %122, i32 0, i32 0
  %124 = load i32, i32* @AP_FUNC_COPRO, align 4
  %125 = call i64 @ap_test_bit(i32* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %200

127:                                              ; preds = %121
  %128 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %129 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @AP_DEVICE_TYPE_CEX4, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %127
  %135 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %136 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %135, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %136, align 8
  %137 = load i8*, i8** @ZCRYPT_CEX3C, align 8
  %138 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %139 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %138, i32 0, i32 6
  store i8* %137, i8** %139, align 8
  %140 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %141 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @memcpy(i32 %142, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex4_card_probe.CEX4C_SPEED_IDX, i64 0, i64 0), i32 32)
  br label %190

144:                                              ; preds = %127
  %145 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %146 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @AP_DEVICE_TYPE_CEX5, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %144
  %152 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %153 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %152, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %153, align 8
  %154 = load i8*, i8** @ZCRYPT_CEX3C, align 8
  %155 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %156 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %155, i32 0, i32 6
  store i8* %154, i8** %156, align 8
  %157 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %158 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @memcpy(i32 %159, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex4_card_probe.CEX5C_SPEED_IDX, i64 0, i64 0), i32 32)
  br label %189

161:                                              ; preds = %144
  %162 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %163 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @AP_DEVICE_TYPE_CEX6, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %161
  %169 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %170 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %169, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %170, align 8
  %171 = load i8*, i8** @ZCRYPT_CEX3C, align 8
  %172 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %173 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %172, i32 0, i32 6
  store i8* %171, i8** %173, align 8
  %174 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %175 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @memcpy(i32 %176, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex4_card_probe.CEX6C_SPEED_IDX, i64 0, i64 0), i32 32)
  br label %188

178:                                              ; preds = %161
  %179 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %180 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %179, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %180, align 8
  %181 = load i8*, i8** @ZCRYPT_CEX3C, align 8
  %182 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %183 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %182, i32 0, i32 6
  store i8* %181, i8** %183, align 8
  %184 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %185 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @memcpy(i32 %186, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex4_card_probe.CEX7C_SPEED_IDX, i64 0, i64 0), i32 32)
  br label %188

188:                                              ; preds = %178, %168
  br label %189

189:                                              ; preds = %188, %151
  br label %190

190:                                              ; preds = %189, %134
  %191 = load i8*, i8** @CEX4C_MIN_MOD_SIZE, align 8
  %192 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %193 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %192, i32 0, i32 4
  store i8* %191, i8** %193, align 8
  %194 = load i8*, i8** @CEX4C_MAX_MOD_SIZE, align 8
  %195 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %196 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %195, i32 0, i32 3
  store i8* %194, i8** %196, align 8
  %197 = load i8*, i8** @CEX4C_MAX_MOD_SIZE, align 8
  %198 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %199 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %198, i32 0, i32 2
  store i8* %197, i8** %199, align 8
  br label %285

200:                                              ; preds = %121
  %201 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %202 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %201, i32 0, i32 0
  %203 = load i32, i32* @AP_FUNC_EP11, align 4
  %204 = call i64 @ap_test_bit(i32* %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %279

206:                                              ; preds = %200
  %207 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %208 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @AP_DEVICE_TYPE_CEX4, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %206
  %214 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %215 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %214, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %215, align 8
  %216 = load i8*, i8** @ZCRYPT_CEX4, align 8
  %217 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %218 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %217, i32 0, i32 6
  store i8* %216, i8** %218, align 8
  %219 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %220 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @memcpy(i32 %221, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex4_card_probe.CEX4P_SPEED_IDX, i64 0, i64 0), i32 32)
  br label %269

223:                                              ; preds = %206
  %224 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %225 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @AP_DEVICE_TYPE_CEX5, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %240

230:                                              ; preds = %223
  %231 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %232 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %231, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %232, align 8
  %233 = load i8*, i8** @ZCRYPT_CEX5, align 8
  %234 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %235 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %234, i32 0, i32 6
  store i8* %233, i8** %235, align 8
  %236 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %237 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @memcpy(i32 %238, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex4_card_probe.CEX5P_SPEED_IDX, i64 0, i64 0), i32 32)
  br label %268

240:                                              ; preds = %223
  %241 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %242 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @AP_DEVICE_TYPE_CEX6, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %240
  %248 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %249 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %248, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %249, align 8
  %250 = load i8*, i8** @ZCRYPT_CEX6, align 8
  %251 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %252 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %251, i32 0, i32 6
  store i8* %250, i8** %252, align 8
  %253 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %254 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @memcpy(i32 %255, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex4_card_probe.CEX6P_SPEED_IDX, i64 0, i64 0), i32 32)
  br label %267

257:                                              ; preds = %240
  %258 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %259 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %258, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %259, align 8
  %260 = load i8*, i8** @ZCRYPT_CEX6, align 8
  %261 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %262 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %261, i32 0, i32 6
  store i8* %260, i8** %262, align 8
  %263 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %264 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @memcpy(i32 %265, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex4_card_probe.CEX7P_SPEED_IDX, i64 0, i64 0), i32 32)
  br label %267

267:                                              ; preds = %257, %247
  br label %268

268:                                              ; preds = %267, %230
  br label %269

269:                                              ; preds = %268, %213
  %270 = load i8*, i8** @CEX4C_MIN_MOD_SIZE, align 8
  %271 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %272 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %271, i32 0, i32 4
  store i8* %270, i8** %272, align 8
  %273 = load i8*, i8** @CEX4C_MAX_MOD_SIZE, align 8
  %274 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %275 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %274, i32 0, i32 3
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** @CEX4C_MAX_MOD_SIZE, align 8
  %277 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %278 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %277, i32 0, i32 2
  store i8* %276, i8** %278, align 8
  br label %284

279:                                              ; preds = %200
  %280 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %281 = call i32 @zcrypt_card_free(%struct.zcrypt_card* %280)
  %282 = load i32, i32* @ENODEV, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %2, align 4
  br label %318

284:                                              ; preds = %269
  br label %285

285:                                              ; preds = %284, %190
  br label %286

286:                                              ; preds = %285, %120
  %287 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %288 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %287, i32 0, i32 1
  store i32 1, i32* %288, align 8
  %289 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %290 = call i32 @zcrypt_card_register(%struct.zcrypt_card* %289)
  store i32 %290, i32* %6, align 4
  %291 = load i32, i32* %6, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %286
  %294 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %295 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %294, i32 0, i32 1
  store %struct.zcrypt_card* null, %struct.zcrypt_card** %295, align 8
  %296 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %297 = call i32 @zcrypt_card_free(%struct.zcrypt_card* %296)
  br label %316

298:                                              ; preds = %286
  %299 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %300 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %299, i32 0, i32 0
  %301 = load i32, i32* @AP_FUNC_COPRO, align 4
  %302 = call i64 @ap_test_bit(i32* %300, i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %315

304:                                              ; preds = %298
  %305 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %306 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = call i32 @sysfs_create_group(i32* %307, i32* @cca_card_attr_group)
  store i32 %308, i32* %6, align 4
  %309 = load i32, i32* %6, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %304
  %312 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %313 = call i32 @zcrypt_card_unregister(%struct.zcrypt_card* %312)
  br label %314

314:                                              ; preds = %311, %304
  br label %315

315:                                              ; preds = %314, %298
  br label %316

316:                                              ; preds = %315, %293
  %317 = load i32, i32* %6, align 4
  store i32 %317, i32* %2, align 4
  br label %318

318:                                              ; preds = %316, %279, %13
  %319 = load i32, i32* %2, align 4
  ret i32 %319
}

declare dso_local %struct.ap_card* @to_ap_card(%struct.TYPE_4__*) #1

declare dso_local %struct.zcrypt_card* @zcrypt_card_alloc(...) #1

declare dso_local i64 @ap_test_bit(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @zcrypt_card_free(%struct.zcrypt_card*) #1

declare dso_local i32 @zcrypt_card_register(%struct.zcrypt_card*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @zcrypt_card_unregister(%struct.zcrypt_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
