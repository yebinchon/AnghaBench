; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-digicolor.c_dc_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-digicolor.c_dc_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dc_pinmap = type { i8**, i32, %struct.TYPE_6__*, %struct.pinctrl_desc*, i32 }
%struct.pinctrl_desc = type { %struct.pinctrl_pin_desc*, i32, i32*, i32*, i32, i32 }
%struct.pinctrl_pin_desc = type { i32, i8* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"GP_xx\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PINS_COUNT = common dso_local global i32 0, align 4
@PIN_COLLECTIONS = common dso_local global i32 0, align 4
@PINS_PER_COLLECTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"GP_%c%c\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@dc_pinctrl_ops = common dso_local global i32 0, align 4
@dc_pmxops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"pinctrl driver registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dc_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dc_pinmap*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.pinctrl_pin_desc*, align 8
  %7 = alloca %struct.pinctrl_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @devm_kzalloc(%struct.TYPE_6__* %17, i32 40, i32 %18)
  %20 = bitcast i8* %19 to %struct.dc_pinmap*
  store %struct.dc_pinmap* %20, %struct.dc_pinmap** %4, align 8
  %21 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %22 = icmp ne %struct.dc_pinmap* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %188

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %5, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = call i32 @devm_ioremap_resource(%struct.TYPE_6__* %31, %struct.resource* %32)
  %34 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %35 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %37 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %43 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %188

46:                                               ; preds = %26
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* @PINS_COUNT, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @devm_kcalloc(%struct.TYPE_6__* %48, i32 %49, i32 16, i32 %50)
  %52 = bitcast i8* %51 to %struct.pinctrl_pin_desc*
  store %struct.pinctrl_pin_desc* %52, %struct.pinctrl_pin_desc** %6, align 8
  %53 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %6, align 8
  %54 = icmp ne %struct.pinctrl_pin_desc* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %188

58:                                               ; preds = %46
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* @PINS_COUNT, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @devm_kcalloc(%struct.TYPE_6__* %60, i32 %61, i32 %62, i32 %63)
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %188

70:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %123, %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @PIN_COLLECTIONS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %126

75:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %119, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @PINS_PER_COLLECTION, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %122

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @PINS_PER_COLLECTION, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %12, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 65, %94
  %96 = trunc i32 %95 to i8
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 48, %97
  %99 = call i32 @snprintf(i8* %92, i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8 signext %96, i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %6, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %101, i64 %103
  %105 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %104, i32 0, i32 0
  store i32 %100, i32* %105, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %6, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %107, i64 %109
  %111 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %110, i32 0, i32 1
  store i8* %106, i8** %111, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %114 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %112, i8** %118, align 8
  br label %119

119:                                              ; preds = %80
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %76

122:                                              ; preds = %76
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %71

126:                                              ; preds = %71
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i8* @devm_kzalloc(%struct.TYPE_6__* %128, i32 40, i32 %129)
  %131 = bitcast i8* %130 to %struct.pinctrl_desc*
  store %struct.pinctrl_desc* %131, %struct.pinctrl_desc** %7, align 8
  %132 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %133 = icmp ne %struct.pinctrl_desc* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %126
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %188

137:                                              ; preds = %126
  %138 = load i32, i32* @DRIVER_NAME, align 4
  %139 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %140 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @THIS_MODULE, align 4
  %142 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %143 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %145 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %144, i32 0, i32 3
  store i32* @dc_pinctrl_ops, i32** %145, align 8
  %146 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %147 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %146, i32 0, i32 2
  store i32* @dc_pmxops, i32** %147, align 8
  %148 = load i32, i32* @PINS_COUNT, align 4
  %149 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %150 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  %151 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %6, align 8
  %152 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %153 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %152, i32 0, i32 0
  store %struct.pinctrl_pin_desc* %151, %struct.pinctrl_pin_desc** %153, align 8
  %154 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %155 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %156 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %155, i32 0, i32 3
  store %struct.pinctrl_desc* %154, %struct.pinctrl_desc** %156, align 8
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %160 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %159, i32 0, i32 2
  store %struct.TYPE_6__* %158, %struct.TYPE_6__** %160, align 8
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %164 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %165 = call i32 @devm_pinctrl_register(%struct.TYPE_6__* %162, %struct.pinctrl_desc* %163, %struct.dc_pinmap* %164)
  %166 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %167 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 8
  %168 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %169 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @IS_ERR(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %137
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = call i32 @dev_err(%struct.TYPE_6__* %175, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %177 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %178 = getelementptr inbounds %struct.dc_pinmap, %struct.dc_pinmap* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @PTR_ERR(i32 %179)
  store i32 %180, i32* %2, align 4
  br label %188

181:                                              ; preds = %137
  %182 = load %struct.dc_pinmap*, %struct.dc_pinmap** %4, align 8
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @dc_gpiochip_add(%struct.dc_pinmap* %182, i32 %186)
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %181, %173, %134, %67, %55, %41, %23
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_6__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, i32) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_6__*, %struct.pinctrl_desc*, %struct.dc_pinmap*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @dc_gpiochip_add(%struct.dc_pinmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
