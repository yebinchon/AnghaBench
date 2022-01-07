; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_mipi_disco.c_sdw_master_read_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_mipi_disco.c_sdw_master_read_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { i32, i32, %struct.sdw_master_prop }
%struct.sdw_master_prop = type { i64, i32, i64*, i32, i64*, i64, i64, i64, i64, i64, i32, i32 }
%struct.fwnode_handle = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"mipi-sdw-sw-interface-revision\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"mipi-sdw-link-%d-subproperties\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Master node %s not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"mipi-sdw-clock-stop-mode0-supported\00", align 1
@SDW_CLK_STOP_MODE0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"mipi-sdw-clock-stop-mode1-supported\00", align 1
@SDW_CLK_STOP_MODE1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"mipi-sdw-max-clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"mipi-sdw-clock-frequencies-supported\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"mipi-sdw-supported-clock-gears\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"mipi-sdw-default-frame-rate\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"mipi-sdw-default-frame-row-size\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"mipi-sdw-default-frame-col-size\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"mipi-sdw-dynamic-frame-shape\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"mipi-sdw-command-error-threshold\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdw_master_read_prop(%struct.sdw_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdw_bus*, align 8
  %4 = alloca %struct.sdw_master_prop*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %3, align 8
  %9 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %10 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %9, i32 0, i32 2
  store %struct.sdw_master_prop* %10, %struct.sdw_master_prop** %4, align 8
  %11 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %12 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %15 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %14, i32 0, i32 11
  %16 = call i32 @device_property_read_u32(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %15)
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %18 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %19 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @snprintf(i8* %17, i32 32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %23 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %26 = call %struct.fwnode_handle* @device_get_named_child_node(i32 %24, i8* %25)
  store %struct.fwnode_handle* %26, %struct.fwnode_handle** %5, align 8
  %27 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %28 = icmp ne %struct.fwnode_handle* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %1
  %30 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %31 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %207

37:                                               ; preds = %1
  %38 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %39 = call i64 @fwnode_property_read_bool(%struct.fwnode_handle* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* @SDW_CLK_STOP_MODE0, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %45 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %41, %37
  %49 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %50 = call i64 @fwnode_property_read_bool(%struct.fwnode_handle* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* @SDW_CLK_STOP_MODE1, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %56 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %48
  %60 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %61 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %62 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %61, i32 0, i32 0
  %63 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64* %62)
  %64 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %65 = call i32 @fwnode_property_count_u32(%struct.fwnode_handle* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %59
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %71 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %73 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %76 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @devm_kcalloc(i32 %74, i32 %77, i32 8, i32 %78)
  %80 = bitcast i8* %79 to i64*
  %81 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %82 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %81, i32 0, i32 2
  store i64* %80, i64** %82, align 8
  %83 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %84 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %68
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %207

90:                                               ; preds = %68
  %91 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %92 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %93 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %96 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64* %94, i32 %97)
  br label %99

99:                                               ; preds = %90, %59
  %100 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %101 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %150, label %104

104:                                              ; preds = %99
  %105 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %106 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %109, label %150

109:                                              ; preds = %104
  %110 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %111 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %116 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  store i32 1, i32* %8, align 4
  br label %117

117:                                              ; preds = %146, %109
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %120 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %149

123:                                              ; preds = %117
  %124 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %125 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %124, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %132 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %130, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %123
  %136 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %137 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %136, i32 0, i32 2
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %144 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %135, %123
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %117

149:                                              ; preds = %117
  br label %150

150:                                              ; preds = %149, %104, %99
  %151 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %152 = call i32 @fwnode_property_count_u32(%struct.fwnode_handle* %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %186

155:                                              ; preds = %150
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %158 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  %159 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %160 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %163 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @GFP_KERNEL, align 4
  %166 = call i8* @devm_kcalloc(i32 %161, i32 %164, i32 8, i32 %165)
  %167 = bitcast i8* %166 to i64*
  %168 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %169 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %168, i32 0, i32 4
  store i64* %167, i64** %169, align 8
  %170 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %171 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %170, i32 0, i32 4
  %172 = load i64*, i64** %171, align 8
  %173 = icmp ne i64* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %155
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %2, align 4
  br label %207

177:                                              ; preds = %155
  %178 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %179 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %180 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %179, i32 0, i32 4
  %181 = load i64*, i64** %180, align 8
  %182 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %183 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @fwnode_property_read_u32_array(%struct.fwnode_handle* %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i64* %181, i32 %184)
  br label %186

186:                                              ; preds = %177, %150
  %187 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %188 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %189 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %188, i32 0, i32 5
  %190 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %187, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64* %189)
  %191 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %192 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %193 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %192, i32 0, i32 6
  %194 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %191, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64* %193)
  %195 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %196 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %197 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %196, i32 0, i32 7
  %198 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i64* %197)
  %199 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %200 = call i64 @fwnode_property_read_bool(%struct.fwnode_handle* %199, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %201 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %202 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %201, i32 0, i32 9
  store i64 %200, i64* %202, align 8
  %203 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %204 = load %struct.sdw_master_prop*, %struct.sdw_master_prop** %4, align 8
  %205 = getelementptr inbounds %struct.sdw_master_prop, %struct.sdw_master_prop* %204, i32 0, i32 8
  %206 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %203, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i64* %205)
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %186, %174, %87, %29
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @device_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.fwnode_handle* @device_get_named_child_node(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i64 @fwnode_property_read_bool(%struct.fwnode_handle*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i64*) #1

declare dso_local i32 @fwnode_property_count_u32(%struct.fwnode_handle*, i8*) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @fwnode_property_read_u32_array(%struct.fwnode_handle*, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
