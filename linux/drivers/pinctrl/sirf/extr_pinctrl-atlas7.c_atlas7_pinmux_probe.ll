; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_pinmux_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-atlas7.c_atlas7_pinmux_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.atlas7_pmx = type { i32*, i32, %struct.TYPE_8__, %struct.TYPE_10__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { i8*, i32*, i32*, i32*, i32, i32 }
%struct.resource = type { i32 }

@ATLAS7_PINCTRL_REG_BANKS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sys2pci\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@atlas7_ioc_data = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pinctrl-atlas7\00", align 1
@atlas7_pinctrl_ops = common dso_local global i32 0, align 4
@atlas7_pinmux_ops = common dso_local global i32 0, align 4
@atlas7_pinconf_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"can't map ioc bank#%d registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"could not register atlas7 pinmux driver\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"initialized atlas7 pinmux driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atlas7_pinmux_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas7_pinmux_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.atlas7_pmx*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.resource, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %7, align 8
  %15 = load i32, i32* @ATLAS7_PINCTRL_REG_BANKS, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.atlas7_pmx* @devm_kzalloc(%struct.TYPE_9__* %17, i32 80, i32 %18)
  store %struct.atlas7_pmx* %19, %struct.atlas7_pmx** %6, align 8
  %20 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %21 = icmp ne %struct.atlas7_pmx* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %181

25:                                               ; preds = %1
  %26 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %26, %struct.device_node** %9, align 8
  %27 = load %struct.device_node*, %struct.device_node** %9, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %181

32:                                               ; preds = %25
  %33 = load %struct.device_node*, %struct.device_node** %9, align 8
  %34 = call i32 @of_address_to_resource(%struct.device_node* %33, i32 0, %struct.resource* %10)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.device_node*, %struct.device_node** %9, align 8
  %36 = call i32 @of_node_put(%struct.device_node* %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %181

41:                                               ; preds = %32
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @devm_ioremap_resource(%struct.TYPE_9__* %43, %struct.resource* %10)
  %45 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %46 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %48 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %181

55:                                               ; preds = %41
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %59 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %58, i32 0, i32 4
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %59, align 8
  %60 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %61 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %60, i32 0, i32 3
  store %struct.TYPE_10__* @atlas7_ioc_data, %struct.TYPE_10__** %61, align 8
  %62 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %63 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %64, align 8
  %65 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %66 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %65, i32 0, i32 3
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %71 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  store i32 %69, i32* %72, align 4
  %73 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %74 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %73, i32 0, i32 3
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %79 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 8
  %81 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %82 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  store i32* @atlas7_pinctrl_ops, i32** %83, align 8
  %84 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %85 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  store i32* @atlas7_pinmux_ops, i32** %86, align 8
  %87 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %88 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32* @atlas7_pinconf_ops, i32** %89, align 8
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %120, %55
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %90
  %95 = load %struct.device_node*, %struct.device_node** %7, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @of_iomap(%struct.device_node* %95, i32 %96)
  %98 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %99 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  %104 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %105 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %94
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load i32, i32* %5, align 4
  %116 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %152

119:                                              ; preds = %94
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %90

123:                                              ; preds = %90
  %124 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %125 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %124, i32 0, i32 2
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %129 = call i32 @pinctrl_register(%struct.TYPE_8__* %125, %struct.TYPE_9__* %127, %struct.atlas7_pmx* %128)
  %130 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %131 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %133 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @IS_ERR(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %123
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %141 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %142 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @PTR_ERR(i32 %143)
  store i32 %144, i32* %4, align 4
  br label %152

145:                                              ; preds = %123
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %148 = call i32 @platform_set_drvdata(%struct.platform_device* %146, %struct.atlas7_pmx* %147)
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @dev_info(%struct.TYPE_9__* %150, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %181

152:                                              ; preds = %137, %112
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %176, %152
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %179

157:                                              ; preds = %153
  %158 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %159 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %157
  br label %179

167:                                              ; preds = %157
  %168 = load %struct.atlas7_pmx*, %struct.atlas7_pmx** %6, align 8
  %169 = getelementptr inbounds %struct.atlas7_pmx, %struct.atlas7_pmx* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @iounmap(i32 %174)
  br label %176

176:                                              ; preds = %167
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %5, align 4
  br label %153

179:                                              ; preds = %166, %153
  %180 = load i32, i32* %4, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %179, %145, %52, %39, %29, %22
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.atlas7_pmx* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.device_node* @of_find_node_by_name(i32*, i8*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @pinctrl_register(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.atlas7_pmx*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atlas7_pmx*) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
