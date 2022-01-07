; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_init_vreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_init_vreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmh_vreg = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_5__*, i32, i32, i32, %struct.device* }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i32, i32, i32*, i32, i64 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.rpmh_vreg_init_data = type { %struct.TYPE_5__*, i32, i64, i32 }
%struct.regulator_config = type { %struct.rpmh_vreg*, %struct.device_node*, %struct.regulator_init_data*, %struct.device* }
%struct.regulator_init_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.regulator_dev = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Unknown regulator %pOFn\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%pOFn: could not find RPMh address for resource %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@REGULATOR_MODE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"qcom,always-wait-for-ack\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XOB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"%pOFn: devm_regulator_register() failed, ret=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"%pOFn regulator registered for RPMh resource %s @ 0x%05X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmh_vreg*, %struct.device*, %struct.device_node*, i8*, %struct.rpmh_vreg_init_data*)* @rpmh_regulator_init_vreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmh_regulator_init_vreg(%struct.rpmh_vreg* %0, %struct.device* %1, %struct.device_node* %2, i8* %3, %struct.rpmh_vreg_init_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpmh_vreg*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.rpmh_vreg_init_data*, align 8
  %12 = alloca %struct.regulator_config, align 8
  %13 = alloca [20 x i8], align 16
  %14 = alloca %struct.rpmh_vreg_init_data*, align 8
  %15 = alloca %struct.regulator_init_data*, align 8
  %16 = alloca %struct.regulator_dev*, align 8
  %17 = alloca i32, align 4
  store %struct.rpmh_vreg* %0, %struct.rpmh_vreg** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store %struct.device_node* %2, %struct.device_node** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.rpmh_vreg_init_data* %4, %struct.rpmh_vreg_init_data** %11, align 8
  %18 = bitcast %struct.regulator_config* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = bitcast [20 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 20, i1 false)
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %22 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %21, i32 0, i32 7
  store %struct.device* %20, %struct.device** %22, align 8
  %23 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %11, align 8
  store %struct.rpmh_vreg_init_data* %23, %struct.rpmh_vreg_init_data** %14, align 8
  br label %24

24:                                               ; preds = %38, %5
  %25 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %14, align 8
  %26 = getelementptr inbounds %struct.rpmh_vreg_init_data, %struct.rpmh_vreg_init_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.device_node*, %struct.device_node** %9, align 8
  %31 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %14, align 8
  %32 = getelementptr inbounds %struct.rpmh_vreg_init_data, %struct.rpmh_vreg_init_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @of_node_name_eq(%struct.device_node* %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %41

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %14, align 8
  %40 = getelementptr inbounds %struct.rpmh_vreg_init_data, %struct.rpmh_vreg_init_data* %39, i32 1
  store %struct.rpmh_vreg_init_data* %40, %struct.rpmh_vreg_init_data** %14, align 8
  br label %24

41:                                               ; preds = %36, %24
  %42 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %14, align 8
  %43 = getelementptr inbounds %struct.rpmh_vreg_init_data, %struct.rpmh_vreg_init_data* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = load %struct.device_node*, %struct.device_node** %9, align 8
  %49 = call i32 (%struct.device*, i8*, %struct.device_node*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.device_node* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %234

52:                                               ; preds = %41
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %54 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %14, align 8
  %55 = getelementptr inbounds %struct.rpmh_vreg_init_data, %struct.rpmh_vreg_init_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @scnprintf(i8* %53, i32 20, i32 %56, i8* %57)
  %59 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %60 = call i32 @cmd_db_read_addr(i8* %59)
  %61 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %62 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %64 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %52
  %68 = load %struct.device*, %struct.device** %8, align 8
  %69 = load %struct.device_node*, %struct.device_node** %9, align 8
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %71 = call i32 (%struct.device*, i8*, %struct.device_node*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %69, i8* %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %234

74:                                               ; preds = %52
  %75 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %14, align 8
  %76 = getelementptr inbounds %struct.rpmh_vreg_init_data, %struct.rpmh_vreg_init_data* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %79 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 9
  store i64 %77, i64* %80, align 8
  %81 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %14, align 8
  %82 = getelementptr inbounds %struct.rpmh_vreg_init_data, %struct.rpmh_vreg_init_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %85 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 8
  store i32 %83, i32* %86, align 8
  %87 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %14, align 8
  %88 = getelementptr inbounds %struct.rpmh_vreg_init_data, %struct.rpmh_vreg_init_data* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %91 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %90, i32 0, i32 3
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %91, align 8
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  %94 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %95 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @ENOTRECOVERABLE, align 4
  %97 = sub nsw i32 0, %96
  %98 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %99 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @REGULATOR_MODE_INVALID, align 4
  %101 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %102 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %14, align 8
  %104 = getelementptr inbounds %struct.rpmh_vreg_init_data, %struct.rpmh_vreg_init_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %74
  %110 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %14, align 8
  %111 = getelementptr inbounds %struct.rpmh_vreg_init_data, %struct.rpmh_vreg_init_data* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %115 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 7
  store i32* %113, i32** %116, align 8
  %117 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %118 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %14, align 8
  %121 = getelementptr inbounds %struct.rpmh_vreg_init_data, %struct.rpmh_vreg_init_data* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %126 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %109, %74
  %129 = load %struct.device_node*, %struct.device_node** %9, align 8
  %130 = call i32 @of_property_read_bool(%struct.device_node* %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %131 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %132 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @THIS_MODULE, align 4
  %134 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %135 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 6
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %138 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %139 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 5
  store i32 %137, i32* %140, align 8
  %141 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %142 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %141, i32 0, i32 3
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %147 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  store i32 %145, i32* %148, align 4
  %149 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %150 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %149, i32 0, i32 3
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %155 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 3
  store i32 %153, i32* %156, align 8
  %157 = load %struct.device*, %struct.device** %8, align 8
  %158 = load %struct.device_node*, %struct.device_node** %9, align 8
  %159 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %160 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %159, i32 0, i32 2
  %161 = call %struct.regulator_init_data* @of_get_regulator_init_data(%struct.device* %157, %struct.device_node* %158, %struct.TYPE_7__* %160)
  store %struct.regulator_init_data* %161, %struct.regulator_init_data** %15, align 8
  %162 = load %struct.regulator_init_data*, %struct.regulator_init_data** %15, align 8
  %163 = icmp ne %struct.regulator_init_data* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %128
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %6, align 4
  br label %234

167:                                              ; preds = %128
  %168 = load %struct.rpmh_vreg_init_data*, %struct.rpmh_vreg_init_data** %14, align 8
  %169 = getelementptr inbounds %struct.rpmh_vreg_init_data, %struct.rpmh_vreg_init_data* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @XOB, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %202

175:                                              ; preds = %167
  %176 = load %struct.regulator_init_data*, %struct.regulator_init_data** %15, align 8
  %177 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %202

181:                                              ; preds = %175
  %182 = load %struct.regulator_init_data*, %struct.regulator_init_data** %15, align 8
  %183 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.regulator_init_data*, %struct.regulator_init_data** %15, align 8
  %187 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %185, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %181
  %192 = load %struct.regulator_init_data*, %struct.regulator_init_data** %15, align 8
  %193 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %197 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  store i64 %195, i64* %198, align 8
  %199 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %200 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  store i32 1, i32* %201, align 4
  br label %202

202:                                              ; preds = %191, %181, %175, %167
  %203 = load %struct.device*, %struct.device** %8, align 8
  %204 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 3
  store %struct.device* %203, %struct.device** %204, align 8
  %205 = load %struct.regulator_init_data*, %struct.regulator_init_data** %15, align 8
  %206 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 2
  store %struct.regulator_init_data* %205, %struct.regulator_init_data** %206, align 8
  %207 = load %struct.device_node*, %struct.device_node** %9, align 8
  %208 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 1
  store %struct.device_node* %207, %struct.device_node** %208, align 8
  %209 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %210 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %12, i32 0, i32 0
  store %struct.rpmh_vreg* %209, %struct.rpmh_vreg** %210, align 8
  %211 = load %struct.device*, %struct.device** %8, align 8
  %212 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %213 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %212, i32 0, i32 2
  %214 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %211, %struct.TYPE_7__* %213, %struct.regulator_config* %12)
  store %struct.regulator_dev* %214, %struct.regulator_dev** %16, align 8
  %215 = load %struct.regulator_dev*, %struct.regulator_dev** %16, align 8
  %216 = call i64 @IS_ERR(%struct.regulator_dev* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %202
  %219 = load %struct.regulator_dev*, %struct.regulator_dev** %16, align 8
  %220 = call i32 @PTR_ERR(%struct.regulator_dev* %219)
  store i32 %220, i32* %17, align 4
  %221 = load %struct.device*, %struct.device** %8, align 8
  %222 = load %struct.device_node*, %struct.device_node** %9, align 8
  %223 = load i32, i32* %17, align 4
  %224 = call i32 (%struct.device*, i8*, %struct.device_node*, ...) @dev_err(%struct.device* %221, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %222, i32 %223)
  %225 = load i32, i32* %17, align 4
  store i32 %225, i32* %6, align 4
  br label %234

226:                                              ; preds = %202
  %227 = load %struct.device*, %struct.device** %8, align 8
  %228 = load %struct.device_node*, %struct.device_node** %9, align 8
  %229 = getelementptr inbounds [20 x i8], [20 x i8]* %13, i64 0, i64 0
  %230 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %7, align 8
  %231 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @dev_dbg(%struct.device* %227, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %228, i8* %229, i32 %232)
  store i32 0, i32* %6, align 4
  br label %234

234:                                              ; preds = %226, %218, %164, %67, %46
  %235 = load i32, i32* %6, align 4
  ret i32 %235
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i64) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.device_node*, ...) #2

declare dso_local i32 @scnprintf(i8*, i32, i32, i8*) #2

declare dso_local i32 @cmd_db_read_addr(i8*) #2

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #2

declare dso_local %struct.regulator_init_data* @of_get_regulator_init_data(%struct.device*, %struct.device_node*, %struct.TYPE_7__*) #2

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, %struct.TYPE_7__*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.device_node*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
