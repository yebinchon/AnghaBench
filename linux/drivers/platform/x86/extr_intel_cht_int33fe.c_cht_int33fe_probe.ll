; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_cht_int33fe.c_cht_int33fe_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_cht_int33fe.c_cht_int33fe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_board_info = type { i8*, i32, i32, %struct.fwnode_handle* }
%struct.fwnode_handle = type { i32 }
%struct.cht_int33fe_data = type { %struct.regulator*, %struct.regulator*, %struct.regulator* }
%struct.regulator = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"PTYP\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Error getting PTYPE\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EXPECTED_PTYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"INT34D3\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Error PTYPE == %d, but no INT34D3 device\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"cht_wc_usb_typec_vbus\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Error getting FUSB302 irq\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nodes = common dso_local global i32* null, align 8
@INT33FE_NODE_FUSB302 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"typec_fusb302\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"fusb302\00", align 1
@INT33FE_NODE_PI3USB30532 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"pi3usb30532\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cht_int33fe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_int33fe_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2c_board_info, align 8
  %6 = alloca %struct.cht_int33fe_data*, align 8
  %7 = alloca %struct.fwnode_handle*, align 8
  %8 = alloca %struct.regulator*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @ACPI_HANDLE(%struct.device* %15)
  %17 = call i32 @acpi_evaluate_integer(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %191

26:                                               ; preds = %1
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @EXPECTED_PTYPE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %191

33:                                               ; preds = %26
  %34 = call i32 @acpi_dev_present(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i64, i64* @EXPECTED_PTYPE, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %191

42:                                               ; preds = %33
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call %struct.regulator* @regulator_get_optional(%struct.device* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store %struct.regulator* %44, %struct.regulator** %8, align 8
  %45 = load %struct.regulator*, %struct.regulator** %8, align 8
  %46 = call i64 @IS_ERR(%struct.regulator* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.regulator*, %struct.regulator** %8, align 8
  %50 = call i32 @PTR_ERR(%struct.regulator* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EPROBE_DEFER, align 4
  %57 = sub nsw i32 0, %56
  br label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %12, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %57, %55 ], [ %59, %58 ]
  store i32 %61, i32* %2, align 4
  br label %191

62:                                               ; preds = %42
  %63 = load %struct.regulator*, %struct.regulator** %8, align 8
  %64 = call i32 @regulator_put(%struct.regulator* %63)
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 @ACPI_COMPANION(%struct.device* %65)
  %67 = call i32 @acpi_dev_gpio_irq_get(i32 %66, i32 1)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @EPROBE_DEFER, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %2, align 4
  br label %191

80:                                               ; preds = %62
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.cht_int33fe_data* @devm_kzalloc(%struct.device* %81, i32 24, i32 %82)
  store %struct.cht_int33fe_data* %83, %struct.cht_int33fe_data** %6, align 8
  %84 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %85 = icmp ne %struct.cht_int33fe_data* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %191

89:                                               ; preds = %80
  %90 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %91 = call i32 @cht_int33fe_add_nodes(%struct.cht_int33fe_data* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %2, align 4
  br label %191

96:                                               ; preds = %89
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %99 = call i32 @cht_int33fe_register_max17047(%struct.device* %97, %struct.cht_int33fe_data* %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %187

103:                                              ; preds = %96
  %104 = load i32*, i32** @nodes, align 8
  %105 = load i64, i64* @INT33FE_NODE_FUSB302, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = call %struct.fwnode_handle* @software_node_fwnode(i32* %106)
  store %struct.fwnode_handle* %107, %struct.fwnode_handle** %7, align 8
  %108 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %109 = icmp ne %struct.fwnode_handle* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %12, align 4
  br label %182

113:                                              ; preds = %103
  %114 = call i32 @memset(%struct.i2c_board_info* %5, i32 0, i32 24)
  %115 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %5, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @I2C_NAME_SIZE, align 4
  %118 = call i32 @strlcpy(i32 %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  %119 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %119, align 8
  %120 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %121 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %5, i32 0, i32 3
  store %struct.fwnode_handle* %120, %struct.fwnode_handle** %121, align 8
  %122 = load i32, i32* %11, align 4
  %123 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %5, i32 0, i32 1
  store i32 %122, i32* %123, align 8
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = call i8* @i2c_acpi_new_device(%struct.device* %124, i32 2, %struct.i2c_board_info* %5)
  %126 = bitcast i8* %125 to %struct.regulator*
  %127 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %128 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %127, i32 0, i32 1
  store %struct.regulator* %126, %struct.regulator** %128, align 8
  %129 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %130 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %129, i32 0, i32 1
  %131 = load %struct.regulator*, %struct.regulator** %130, align 8
  %132 = call i64 @IS_ERR(%struct.regulator* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %113
  %135 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %136 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %135, i32 0, i32 1
  %137 = load %struct.regulator*, %struct.regulator** %136, align 8
  %138 = call i32 @PTR_ERR(%struct.regulator* %137)
  store i32 %138, i32* %12, align 4
  br label %182

139:                                              ; preds = %113
  %140 = load i32*, i32** @nodes, align 8
  %141 = load i64, i64* @INT33FE_NODE_PI3USB30532, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = call %struct.fwnode_handle* @software_node_fwnode(i32* %142)
  store %struct.fwnode_handle* %143, %struct.fwnode_handle** %7, align 8
  %144 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %145 = icmp ne %struct.fwnode_handle* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* @ENODEV, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %12, align 4
  br label %177

149:                                              ; preds = %139
  %150 = call i32 @memset(%struct.i2c_board_info* %5, i32 0, i32 24)
  %151 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %151, align 8
  %152 = load %struct.fwnode_handle*, %struct.fwnode_handle** %7, align 8
  %153 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %5, i32 0, i32 3
  store %struct.fwnode_handle* %152, %struct.fwnode_handle** %153, align 8
  %154 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %5, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @I2C_NAME_SIZE, align 4
  %157 = call i32 @strlcpy(i32 %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %156)
  %158 = load %struct.device*, %struct.device** %4, align 8
  %159 = call i8* @i2c_acpi_new_device(%struct.device* %158, i32 3, %struct.i2c_board_info* %5)
  %160 = bitcast i8* %159 to %struct.regulator*
  %161 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %162 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %161, i32 0, i32 2
  store %struct.regulator* %160, %struct.regulator** %162, align 8
  %163 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %164 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %163, i32 0, i32 2
  %165 = load %struct.regulator*, %struct.regulator** %164, align 8
  %166 = call i64 @IS_ERR(%struct.regulator* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %149
  %169 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %170 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %169, i32 0, i32 2
  %171 = load %struct.regulator*, %struct.regulator** %170, align 8
  %172 = call i32 @PTR_ERR(%struct.regulator* %171)
  store i32 %172, i32* %12, align 4
  br label %177

173:                                              ; preds = %149
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %176 = call i32 @platform_set_drvdata(%struct.platform_device* %174, %struct.cht_int33fe_data* %175)
  store i32 0, i32* %2, align 4
  br label %191

177:                                              ; preds = %168, %146
  %178 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %179 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %178, i32 0, i32 1
  %180 = load %struct.regulator*, %struct.regulator** %179, align 8
  %181 = call i32 @i2c_unregister_device(%struct.regulator* %180)
  br label %182

182:                                              ; preds = %177, %134, %110
  %183 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %184 = getelementptr inbounds %struct.cht_int33fe_data, %struct.cht_int33fe_data* %183, i32 0, i32 0
  %185 = load %struct.regulator*, %struct.regulator** %184, align 8
  %186 = call i32 @i2c_unregister_device(%struct.regulator* %185)
  br label %187

187:                                              ; preds = %182, %102
  %188 = load %struct.cht_int33fe_data*, %struct.cht_int33fe_data** %6, align 8
  %189 = call i32 @cht_int33fe_remove_nodes(%struct.cht_int33fe_data* %188)
  %190 = load i32, i32* %12, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %187, %173, %94, %86, %78, %60, %36, %30, %21
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @acpi_dev_present(i8*, i8*, i32) #1

declare dso_local %struct.regulator* @regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_put(%struct.regulator*) #1

declare dso_local i32 @acpi_dev_gpio_irq_get(i32, i32) #1

declare dso_local i32 @ACPI_COMPANION(%struct.device*) #1

declare dso_local %struct.cht_int33fe_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @cht_int33fe_add_nodes(%struct.cht_int33fe_data*) #1

declare dso_local i32 @cht_int33fe_register_max17047(%struct.device*, %struct.cht_int33fe_data*) #1

declare dso_local %struct.fwnode_handle* @software_node_fwnode(i32*) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @i2c_acpi_new_device(%struct.device*, i32, %struct.i2c_board_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cht_int33fe_data*) #1

declare dso_local i32 @i2c_unregister_device(%struct.regulator*) #1

declare dso_local i32 @cht_int33fe_remove_nodes(%struct.cht_int33fe_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
