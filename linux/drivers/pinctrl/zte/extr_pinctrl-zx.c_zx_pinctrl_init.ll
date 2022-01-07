; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/zte/extr_pinctrl-zx.c_zx_pinctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/zte/extr_pinctrl-zx.c_zx_pinctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.zx_pinctrl_soc_info = type { i32, i32 }
%struct.pinctrl_desc = type { i32*, i32*, i32*, i32, i32, i32, i32 }
%struct.zx_pinctrl = type { i32, %struct.zx_pinctrl_soc_info*, %struct.TYPE_7__*, i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"zte,auxiliary-controller\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to find auxiliary controller\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@zx_pinctrl_ops = common dso_local global i32 0, align 4
@zx_pinmux_ops = common dso_local global i32 0, align 4
@zx_pinconf_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to register pinctrl: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to build state: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"initialized pinctrl driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zx_pinctrl_init(%struct.platform_device* %0, %struct.zx_pinctrl_soc_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.zx_pinctrl_soc_info*, align 8
  %6 = alloca %struct.pinctrl_desc*, align 8
  %7 = alloca %struct.zx_pinctrl*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.zx_pinctrl_soc_info* %1, %struct.zx_pinctrl_soc_info** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @devm_kzalloc(%struct.TYPE_7__* %12, i32 40, i32 %13)
  %15 = bitcast i8* %14 to %struct.zx_pinctrl*
  store %struct.zx_pinctrl* %15, %struct.zx_pinctrl** %7, align 8
  %16 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %17 = icmp ne %struct.zx_pinctrl* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %155

21:                                               ; preds = %2
  %22 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %23 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %22, i32 0, i32 5
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %9, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.resource*, %struct.resource** %9, align 8
  %31 = call i32 @devm_ioremap_resource(%struct.TYPE_7__* %29, %struct.resource* %30)
  %32 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %33 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %35 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %21
  %40 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %41 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %155

44:                                               ; preds = %21
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.device_node* @of_parse_phandle(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %49, %struct.device_node** %8, align 8
  %50 = load %struct.device_node*, %struct.device_node** %8, align 8
  %51 = icmp ne %struct.device_node* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %44
  %53 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %155

58:                                               ; preds = %44
  %59 = load %struct.device_node*, %struct.device_node** %8, align 8
  %60 = call i32 @of_iomap(%struct.device_node* %59, i32 0)
  %61 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %62 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.device_node*, %struct.device_node** %8, align 8
  %64 = call i32 @of_node_put(%struct.device_node* %63)
  %65 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %66 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %155

72:                                               ; preds = %58
  %73 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %76 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %75, i32 0, i32 2
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %76, align 8
  %77 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %5, align 8
  %78 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %79 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %78, i32 0, i32 1
  store %struct.zx_pinctrl_soc_info* %77, %struct.zx_pinctrl_soc_info** %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @devm_kzalloc(%struct.TYPE_7__* %81, i32 40, i32 %82)
  %84 = bitcast i8* %83 to %struct.pinctrl_desc*
  store %struct.pinctrl_desc* %84, %struct.pinctrl_desc** %6, align 8
  %85 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %86 = icmp ne %struct.pinctrl_desc* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %72
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %155

90:                                               ; preds = %72
  %91 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = call i32 @dev_name(%struct.TYPE_7__* %92)
  %94 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %95 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @THIS_MODULE, align 4
  %97 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %98 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 8
  %99 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %5, align 8
  %100 = getelementptr inbounds %struct.zx_pinctrl_soc_info, %struct.zx_pinctrl_soc_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %103 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  %104 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %5, align 8
  %105 = getelementptr inbounds %struct.zx_pinctrl_soc_info, %struct.zx_pinctrl_soc_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %108 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %110 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %109, i32 0, i32 2
  store i32* @zx_pinctrl_ops, i32** %110, align 8
  %111 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %112 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %111, i32 0, i32 1
  store i32* @zx_pinmux_ops, i32** %112, align 8
  %113 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %114 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %113, i32 0, i32 0
  store i32* @zx_pinconf_ops, i32** %114, align 8
  %115 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %118 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %119 = call i32 @devm_pinctrl_register(%struct.TYPE_7__* %116, %struct.pinctrl_desc* %117, %struct.zx_pinctrl* %118)
  %120 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %121 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %123 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @IS_ERR(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %90
  %128 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %129 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @PTR_ERR(i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %3, align 4
  br label %155

137:                                              ; preds = %90
  %138 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %139 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %7, align 8
  %140 = call i32 @platform_set_drvdata(%struct.platform_device* %138, %struct.zx_pinctrl* %139)
  %141 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %142 = call i32 @zx_pinctrl_build_state(%struct.platform_device* %141)
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load i32, i32* %10, align 4
  %149 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %3, align 4
  br label %155

151:                                              ; preds = %137
  %152 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = call i32 @dev_info(%struct.TYPE_7__* %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %145, %127, %87, %69, %52, %39, %18
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_7__*, %struct.pinctrl_desc*, %struct.zx_pinctrl*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zx_pinctrl*) #1

declare dso_local i32 @zx_pinctrl_build_state(%struct.platform_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
