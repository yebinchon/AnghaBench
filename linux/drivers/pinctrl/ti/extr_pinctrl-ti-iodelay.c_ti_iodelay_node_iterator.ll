; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_node_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_node_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i64, i32* }
%struct.ti_iodelay_device = type { i32, %struct.pinctrl_pin_desc*, %struct.ti_iodelay_reg_data* }
%struct.pinctrl_pin_desc = type { %struct.ti_iodelay_cfg* }
%struct.ti_iodelay_cfg = type { i32, i32, i32 }
%struct.ti_iodelay_reg_data = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid args_count for spec: %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"could not add functions for %pOFn %ux\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"%pOFn offset=%x a_delay = %d g_delay = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.of_phandle_args*, i32*, i32, i8*)* @ti_iodelay_node_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_iodelay_node_iterator(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.of_phandle_args* %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pinctrl_dev*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.of_phandle_args*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ti_iodelay_device*, align 8
  %15 = alloca %struct.ti_iodelay_cfg*, align 8
  %16 = alloca %struct.ti_iodelay_reg_data*, align 8
  %17 = alloca %struct.pinctrl_pin_desc*, align 8
  %18 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store %struct.of_phandle_args* %2, %struct.of_phandle_args** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = bitcast i8* %19 to %struct.ti_iodelay_cfg*
  store %struct.ti_iodelay_cfg* %20, %struct.ti_iodelay_cfg** %15, align 8
  %21 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %22 = call %struct.ti_iodelay_device* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %21)
  store %struct.ti_iodelay_device* %22, %struct.ti_iodelay_device** %14, align 8
  %23 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %14, align 8
  %24 = icmp ne %struct.ti_iodelay_device* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %148

28:                                               ; preds = %6
  %29 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %14, align 8
  %30 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %29, i32 0, i32 2
  %31 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %30, align 8
  store %struct.ti_iodelay_reg_data* %31, %struct.ti_iodelay_reg_data** %16, align 8
  %32 = load %struct.of_phandle_args*, %struct.of_phandle_args** %10, align 8
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ti_iodelay_reg_data*, %struct.ti_iodelay_reg_data** %16, align 8
  %36 = getelementptr inbounds %struct.ti_iodelay_reg_data, %struct.ti_iodelay_reg_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %28
  %40 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %14, align 8
  %41 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.of_phandle_args*, %struct.of_phandle_args** %10, align 8
  %44 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %148

49:                                               ; preds = %28
  %50 = load %struct.of_phandle_args*, %struct.of_phandle_args** %10, align 8
  %51 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %15, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %55, i64 %57
  %59 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  %60 = load %struct.of_phandle_args*, %struct.of_phandle_args** %10, align 8
  %61 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 65535
  %66 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %15, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %66, i64 %68
  %70 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %69, i32 0, i32 1
  store i32 %65, i32* %70, align 4
  %71 = load %struct.of_phandle_args*, %struct.of_phandle_args** %10, align 8
  %72 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 65535
  %77 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %15, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %77, i64 %79
  %81 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %80, i32 0, i32 2
  store i32 %76, i32* %81, align 4
  %82 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %14, align 8
  %83 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %15, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %83, i64 %85
  %87 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ti_iodelay_offset_to_pin(%struct.ti_iodelay_device* %82, i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %49
  %93 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %14, align 8
  %94 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.device_node*, %struct.device_node** %9, align 8
  %97 = ptrtoint %struct.device_node* %96 to i64
  %98 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %15, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %98, i64 %100
  %102 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %97, i32 %103)
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %148

107:                                              ; preds = %49
  %108 = load i32, i32* %18, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  %113 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %14, align 8
  %114 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %113, i32 0, i32 1
  %115 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %114, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %115, i64 %117
  store %struct.pinctrl_pin_desc* %118, %struct.pinctrl_pin_desc** %17, align 8
  %119 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %15, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %119, i64 %121
  %123 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %17, align 8
  %124 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %123, i32 0, i32 0
  store %struct.ti_iodelay_cfg* %122, %struct.ti_iodelay_cfg** %124, align 8
  %125 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %14, align 8
  %126 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.device_node*, %struct.device_node** %9, align 8
  %129 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %15, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %129, i64 %131
  %133 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %15, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %135, i64 %137
  %139 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ti_iodelay_cfg*, %struct.ti_iodelay_cfg** %15, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %141, i64 %143
  %145 = getelementptr inbounds %struct.ti_iodelay_cfg, %struct.ti_iodelay_cfg* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dev_dbg(i32 %127, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %128, i32 %134, i32 %140, i32 %146)
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %107, %92, %39, %25
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local %struct.ti_iodelay_device* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, ...) #1

declare dso_local i32 @ti_iodelay_offset_to_pin(%struct.ti_iodelay_device*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.device_node*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
