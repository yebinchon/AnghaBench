; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-cygnus-mux.c_cygnus_pinmux_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-cygnus-mux.c_cygnus_pinmux_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i32*, i32, i32 }
%struct.platform_device = type { i32 }
%struct.cygnus_pinctrl = type { i8*, i8*, %struct.TYPE_8__*, i8*, %struct.TYPE_8__*, i8*, i8*, i32, i32* }
%struct.resource = type { i32 }

@cygnus_pins = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to map I/O space\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to initialize IOMUX log\0A\00", align 1
@cygnus_pin_groups = common dso_local global %struct.TYPE_8__* null, align 8
@cygnus_pin_functions = common dso_local global %struct.TYPE_8__* null, align 8
@cygnus_pinctrl_desc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"unable to register Cygnus IOMUX pinctrl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cygnus_pinmux_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cygnus_pinmux_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cygnus_pinctrl*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pinctrl_pin_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cygnus_pins, align 8
  %11 = call i8* @ARRAY_SIZE(%struct.TYPE_8__* %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %9, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cygnus_pinctrl* @devm_kzalloc(i32* %14, i32 72, i32 %15)
  store %struct.cygnus_pinctrl* %16, %struct.cygnus_pinctrl** %4, align 8
  %17 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %18 = icmp ne %struct.cygnus_pinctrl* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %177

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %26 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %25, i32 0, i32 8
  store i32* %24, i32** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %29 = call i32 @platform_set_drvdata(%struct.platform_device* %27, %struct.cygnus_pinctrl* %28)
  %30 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %31 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %30, i32 0, i32 7
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %5, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = call i8* @devm_ioremap_resource(i32* %37, %struct.resource* %38)
  %40 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %41 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %43 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %42, i32 0, i32 6
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %22
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %52 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %51, i32 0, i32 6
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @PTR_ERR(i8* %53)
  store i32 %54, i32* %2, align 4
  br label %177

55:                                               ; preds = %22
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load i32, i32* @IORESOURCE_MEM, align 4
  %58 = call %struct.resource* @platform_get_resource(%struct.platform_device* %56, i32 %57, i32 1)
  store %struct.resource* %58, %struct.resource** %5, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.resource*, %struct.resource** %5, align 8
  %62 = call i8* @devm_ioremap_resource(i32* %60, %struct.resource* %61)
  %63 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %64 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %66 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %65, i32 0, i32 5
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @IS_ERR(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %55
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %75 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %74, i32 0, i32 5
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR(i8* %76)
  store i32 %77, i32* %2, align 4
  br label %177

78:                                               ; preds = %55
  %79 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %80 = call i32 @cygnus_mux_log_init(%struct.cygnus_pinctrl* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %177

88:                                               ; preds = %78
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.pinctrl_pin_desc* @devm_kcalloc(i32* %90, i32 %91, i32 16, i32 %92)
  store %struct.pinctrl_pin_desc* %93, %struct.pinctrl_pin_desc** %8, align 8
  %94 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %95 = icmp ne %struct.pinctrl_pin_desc* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %177

99:                                               ; preds = %88
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %137, %99
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %100
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cygnus_pins, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %111, i64 %113
  %115 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %114, i32 0, i32 2
  store i32 %110, i32* %115, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cygnus_pins, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %122, i64 %124
  %126 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %125, i32 0, i32 1
  store i32 %121, i32* %126, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cygnus_pins, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %132, i64 %134
  %136 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %135, i32 0, i32 0
  store i32* %131, i32** %136, align 8
  br label %137

137:                                              ; preds = %104
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %100

140:                                              ; preds = %100
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cygnus_pin_groups, align 8
  %142 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %143 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %142, i32 0, i32 4
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %143, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cygnus_pin_groups, align 8
  %145 = call i8* @ARRAY_SIZE(%struct.TYPE_8__* %144)
  %146 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %147 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cygnus_pin_functions, align 8
  %149 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %150 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %149, i32 0, i32 2
  store %struct.TYPE_8__* %148, %struct.TYPE_8__** %150, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cygnus_pin_functions, align 8
  %152 = call i8* @ARRAY_SIZE(%struct.TYPE_8__* %151)
  %153 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %154 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  store %struct.pinctrl_pin_desc* %155, %struct.pinctrl_pin_desc** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cygnus_pinctrl_desc, i32 0, i32 1), align 8
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cygnus_pinctrl_desc, i32 0, i32 0), align 8
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %160 = call i8* @devm_pinctrl_register(i32* %158, %struct.TYPE_7__* @cygnus_pinctrl_desc, %struct.cygnus_pinctrl* %159)
  %161 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %162 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %164 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @IS_ERR(i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %140
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = call i32 @dev_err(i32* %170, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %172 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %4, align 8
  %173 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @PTR_ERR(i8* %174)
  store i32 %175, i32* %2, align 4
  br label %177

176:                                              ; preds = %140
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %168, %96, %83, %70, %47, %19
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i8* @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local %struct.cygnus_pinctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cygnus_pinctrl*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @cygnus_mux_log_init(%struct.cygnus_pinctrl*) #1

declare dso_local %struct.pinctrl_pin_desc* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i8* @devm_pinctrl_register(i32*, %struct.TYPE_7__*, %struct.cygnus_pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
