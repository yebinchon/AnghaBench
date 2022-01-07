; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8998.c_max8998_pmic_dt_parse_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8998.c_max8998_pmic_dt_parse_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.max8998_dev = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.max8998_platform_data = type { i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.max8998_regulator_data* }
%struct.max8998_regulator_data = type { %struct.device_node*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"could not find regulators sub-node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regulators = common dso_local global %struct.TYPE_9__* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"max8998,pmic-buck-voltage-lock\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"max8998,pmic-buck1-default-dvs-idx\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"invalid value for default dvs index, using 0 instead\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"max8998,pmic-buck2-default-dvs-idx\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"max8998,pmic-buck1-dvs-voltage\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"buck1 voltages not specified\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"max8998,pmic-buck2-dvs-voltage\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"buck2 voltages not specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8998_dev*, %struct.max8998_platform_data*)* @max8998_pmic_dt_parse_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8998_pmic_dt_parse_pdata(%struct.max8998_dev* %0, %struct.max8998_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max8998_dev*, align 8
  %5 = alloca %struct.max8998_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.max8998_regulator_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.max8998_dev* %0, %struct.max8998_dev** %4, align 8
  store %struct.max8998_platform_data* %1, %struct.max8998_platform_data** %5, align 8
  %12 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %13 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %18, %struct.device_node** %7, align 8
  %19 = load %struct.device_node*, %struct.device_node** %7, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %23 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = call i32 @dev_err(%struct.TYPE_10__* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %206

28:                                               ; preds = %2
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = call i32 @of_get_child_count(%struct.device_node* %29)
  %31 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %32 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %34 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %37 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.max8998_regulator_data* @devm_kcalloc(%struct.TYPE_10__* %35, i32 %38, i32 16, i32 %39)
  store %struct.max8998_regulator_data* %40, %struct.max8998_regulator_data** %9, align 8
  %41 = load %struct.max8998_regulator_data*, %struct.max8998_regulator_data** %9, align 8
  %42 = icmp ne %struct.max8998_regulator_data* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %28
  %44 = load %struct.device_node*, %struct.device_node** %7, align 8
  %45 = call i32 @of_node_put(%struct.device_node* %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %206

48:                                               ; preds = %28
  %49 = load %struct.max8998_regulator_data*, %struct.max8998_regulator_data** %9, align 8
  %50 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %51 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %50, i32 0, i32 6
  store %struct.max8998_regulator_data* %49, %struct.max8998_regulator_data** %51, align 8
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %94, %48
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @regulators, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %54)
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %57, label %97

57:                                               ; preds = %52
  %58 = load %struct.device_node*, %struct.device_node** %7, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @regulators, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %58, i8* %64)
  store %struct.device_node* %65, %struct.device_node** %8, align 8
  %66 = load %struct.device_node*, %struct.device_node** %8, align 8
  %67 = icmp ne %struct.device_node* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %57
  br label %94

69:                                               ; preds = %57
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @regulators, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.max8998_regulator_data*, %struct.max8998_regulator_data** %9, align 8
  %77 = getelementptr inbounds %struct.max8998_regulator_data, %struct.max8998_regulator_data* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %79 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load %struct.device_node*, %struct.device_node** %8, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** @regulators, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %84
  %86 = call i32 @of_get_regulator_init_data(%struct.TYPE_10__* %80, %struct.device_node* %81, %struct.TYPE_9__* %85)
  %87 = load %struct.max8998_regulator_data*, %struct.max8998_regulator_data** %9, align 8
  %88 = getelementptr inbounds %struct.max8998_regulator_data, %struct.max8998_regulator_data* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct.device_node*, %struct.device_node** %8, align 8
  %90 = load %struct.max8998_regulator_data*, %struct.max8998_regulator_data** %9, align 8
  %91 = getelementptr inbounds %struct.max8998_regulator_data, %struct.max8998_regulator_data* %90, i32 0, i32 0
  store %struct.device_node* %89, %struct.device_node** %91, align 8
  %92 = load %struct.max8998_regulator_data*, %struct.max8998_regulator_data** %9, align 8
  %93 = getelementptr inbounds %struct.max8998_regulator_data, %struct.max8998_regulator_data* %92, i32 1
  store %struct.max8998_regulator_data* %93, %struct.max8998_regulator_data** %9, align 8
  br label %94

94:                                               ; preds = %69, %68
  %95 = load i32, i32* %10, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %52

97:                                               ; preds = %52
  %98 = load %struct.max8998_regulator_data*, %struct.max8998_regulator_data** %9, align 8
  %99 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %100 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %99, i32 0, i32 6
  %101 = load %struct.max8998_regulator_data*, %struct.max8998_regulator_data** %100, align 8
  %102 = ptrtoint %struct.max8998_regulator_data* %98 to i64
  %103 = ptrtoint %struct.max8998_regulator_data* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 16
  %106 = trunc i64 %105 to i32
  %107 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %108 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.device_node*, %struct.device_node** %8, align 8
  %110 = call i32 @of_node_put(%struct.device_node* %109)
  %111 = load %struct.device_node*, %struct.device_node** %7, align 8
  %112 = call i32 @of_node_put(%struct.device_node* %111)
  %113 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %114 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %115 = load %struct.device_node*, %struct.device_node** %6, align 8
  %116 = call i32 @max8998_pmic_dt_parse_dvs_gpio(%struct.max8998_dev* %113, %struct.max8998_platform_data* %114, %struct.device_node* %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %97
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %206

122:                                              ; preds = %97
  %123 = load %struct.device_node*, %struct.device_node** %6, align 8
  %124 = call i64 @of_find_property(%struct.device_node* %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %128 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %122
  %130 = load %struct.device_node*, %struct.device_node** %6, align 8
  %131 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %132 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %131, i32 0, i32 2
  %133 = call i32 @of_property_read_u32(%struct.device_node* %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32* %132)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %129
  %137 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %138 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp sge i32 %139, 4
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %143 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %142, i32 0, i32 2
  store i32 0, i32* %143, align 8
  %144 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %145 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %144, i32 0, i32 0
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = call i32 @dev_warn(%struct.TYPE_10__* %146, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %148

148:                                              ; preds = %141, %136, %129
  %149 = load %struct.device_node*, %struct.device_node** %6, align 8
  %150 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %151 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %150, i32 0, i32 3
  %152 = call i32 @of_property_read_u32(%struct.device_node* %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32* %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %167, label %155

155:                                              ; preds = %148
  %156 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %157 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = icmp sge i32 %158, 2
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %162 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %161, i32 0, i32 3
  store i32 0, i32* %162, align 4
  %163 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %164 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %163, i32 0, i32 0
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = call i32 @dev_warn(%struct.TYPE_10__* %165, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %167

167:                                              ; preds = %160, %155, %148
  %168 = load %struct.device_node*, %struct.device_node** %6, align 8
  %169 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %170 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %169, i32 0, i32 5
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %173 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %172, i32 0, i32 5
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %174)
  %176 = call i32 @of_property_read_u32_array(%struct.device_node* %168, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_9__* %171, i32 %175)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %167
  %180 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %181 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %180, i32 0, i32 0
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = call i32 @dev_err(%struct.TYPE_10__* %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %206

186:                                              ; preds = %167
  %187 = load %struct.device_node*, %struct.device_node** %6, align 8
  %188 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %189 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %188, i32 0, i32 4
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %5, align 8
  %192 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %191, i32 0, i32 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %193)
  %195 = call i32 @of_property_read_u32_array(%struct.device_node* %187, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_9__* %190, i32 %194)
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %186
  %199 = load %struct.max8998_dev*, %struct.max8998_dev** %4, align 8
  %200 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %199, i32 0, i32 0
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = call i32 @dev_err(%struct.TYPE_10__* %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %206

205:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %205, %198, %179, %119, %43, %21
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @of_get_child_count(%struct.device_node*) #1

declare dso_local %struct.max8998_regulator_data* @devm_kcalloc(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @of_get_regulator_init_data(%struct.TYPE_10__*, %struct.device_node*, %struct.TYPE_9__*) #1

declare dso_local i32 @max8998_pmic_dt_parse_dvs_gpio(%struct.max8998_dev*, %struct.max8998_platform_data*, %struct.device_node*) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
