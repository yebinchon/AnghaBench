; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_pinmux_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_pinmux_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { %struct.TYPE_8__*, i32, i32 }
%struct.platform_device = type { i32 }
%struct.ns2_pinctrl = type { i8*, i8*, %struct.TYPE_8__*, i8*, %struct.TYPE_8__*, i8*, i32, i8*, i32, i32* }
%struct.resource = type { i32 }

@ns2_pins = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to map I/O space\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to initialize IOMUX log\0A\00", align 1
@ns2_pin_groups = common dso_local global %struct.TYPE_8__* null, align 8
@ns2_pin_functions = common dso_local global %struct.TYPE_8__* null, align 8
@ns2_pinctrl_desc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to register IOMUX pinctrl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ns2_pinmux_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_pinmux_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ns2_pinctrl*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pinctrl_pin_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ns2_pins, align 8
  %11 = call i8* @ARRAY_SIZE(%struct.TYPE_8__* %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %9, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ns2_pinctrl* @devm_kzalloc(i32* %14, i32 80, i32 %15)
  store %struct.ns2_pinctrl* %16, %struct.ns2_pinctrl** %4, align 8
  %17 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %18 = icmp ne %struct.ns2_pinctrl* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %200

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %26 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %25, i32 0, i32 9
  store i32* %24, i32** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %29 = call i32 @platform_set_drvdata(%struct.platform_device* %27, %struct.ns2_pinctrl* %28)
  %30 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %31 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %30, i32 0, i32 8
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %5, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = call i8* @devm_ioremap_resource(i32* %37, %struct.resource* %38)
  %40 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %41 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %43 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %42, i32 0, i32 7
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %22
  %48 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %49 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %48, i32 0, i32 7
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %2, align 4
  br label %200

52:                                               ; preds = %22
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load i32, i32* @IORESOURCE_MEM, align 4
  %55 = call %struct.resource* @platform_get_resource(%struct.platform_device* %53, i32 %54, i32 1)
  store %struct.resource* %55, %struct.resource** %5, align 8
  %56 = load %struct.resource*, %struct.resource** %5, align 8
  %57 = icmp ne %struct.resource* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %200

61:                                               ; preds = %52
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.resource*, %struct.resource** %5, align 8
  %68 = call i32 @resource_size(%struct.resource* %67)
  %69 = call i32 @devm_ioremap_nocache(i32* %63, i32 %66, i32 %68)
  %70 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %71 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %73 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %61
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %200

82:                                               ; preds = %61
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load i32, i32* @IORESOURCE_MEM, align 4
  %85 = call %struct.resource* @platform_get_resource(%struct.platform_device* %83, i32 %84, i32 2)
  store %struct.resource* %85, %struct.resource** %5, align 8
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.resource*, %struct.resource** %5, align 8
  %89 = call i8* @devm_ioremap_resource(i32* %87, %struct.resource* %88)
  %90 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %91 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %93 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @IS_ERR(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %99 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %98, i32 0, i32 5
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @PTR_ERR(i8* %100)
  store i32 %101, i32* %2, align 4
  br label %200

102:                                              ; preds = %82
  %103 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %104 = call i32 @ns2_mux_log_init(%struct.ns2_pinctrl* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %200

112:                                              ; preds = %102
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call %struct.pinctrl_pin_desc* @devm_kcalloc(i32* %114, i32 %115, i32 16, i32 %116)
  store %struct.pinctrl_pin_desc* %117, %struct.pinctrl_pin_desc** %8, align 8
  %118 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %119 = icmp ne %struct.pinctrl_pin_desc* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %200

123:                                              ; preds = %112
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %160, %123
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %163

128:                                              ; preds = %124
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ns2_pins, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %135, i64 %137
  %139 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %138, i32 0, i32 2
  store i32 %134, i32* %139, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ns2_pins, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %146, i64 %148
  %150 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %149, i32 0, i32 1
  store i32 %145, i32* %150, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ns2_pins, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 %153
  %155 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %155, i64 %157
  %159 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %158, i32 0, i32 0
  store %struct.TYPE_8__* %154, %struct.TYPE_8__** %159, align 8
  br label %160

160:                                              ; preds = %128
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %124

163:                                              ; preds = %124
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ns2_pin_groups, align 8
  %165 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %166 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %165, i32 0, i32 4
  store %struct.TYPE_8__* %164, %struct.TYPE_8__** %166, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ns2_pin_groups, align 8
  %168 = call i8* @ARRAY_SIZE(%struct.TYPE_8__* %167)
  %169 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %170 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %169, i32 0, i32 3
  store i8* %168, i8** %170, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ns2_pin_functions, align 8
  %172 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %173 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %172, i32 0, i32 2
  store %struct.TYPE_8__* %171, %struct.TYPE_8__** %173, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ns2_pin_functions, align 8
  %175 = call i8* @ARRAY_SIZE(%struct.TYPE_8__* %174)
  %176 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %177 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %176, i32 0, i32 1
  store i8* %175, i8** %177, align 8
  %178 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  store %struct.pinctrl_pin_desc* %178, %struct.pinctrl_pin_desc** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ns2_pinctrl_desc, i32 0, i32 1), align 8
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ns2_pinctrl_desc, i32 0, i32 0), align 8
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %183 = call i8* @pinctrl_register(%struct.TYPE_7__* @ns2_pinctrl_desc, i32* %181, %struct.ns2_pinctrl* %182)
  %184 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %185 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %184, i32 0, i32 0
  store i8* %183, i8** %185, align 8
  %186 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %187 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @IS_ERR(i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %163
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = call i32 @dev_err(i32* %193, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %195 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %4, align 8
  %196 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @PTR_ERR(i8* %197)
  store i32 %198, i32* %2, align 4
  br label %200

199:                                              ; preds = %163
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %199, %191, %120, %107, %97, %76, %58, %47, %19
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i8* @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local %struct.ns2_pinctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ns2_pinctrl*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @devm_ioremap_nocache(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ns2_mux_log_init(%struct.ns2_pinctrl*) #1

declare dso_local %struct.pinctrl_pin_desc* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i8* @pinctrl_register(%struct.TYPE_7__*, i32*, %struct.ns2_pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
