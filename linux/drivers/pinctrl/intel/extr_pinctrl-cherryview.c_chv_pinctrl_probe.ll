; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.chv_pinctrl = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__, i32, i32, i32* }
%struct.acpi_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@chv_communities = common dso_local global %struct.TYPE_8__** null, align 8
@chv_pinctrl_desc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to register pinctrl driver\0A\00", align 1
@chv_pinctrl_mmio_access_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to install ACPI addr space handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @chv_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.chv_pinctrl*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.acpi_device* @ACPI_COMPANION(i32* %11)
  store %struct.acpi_device* %12, %struct.acpi_device** %5, align 8
  %13 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %14 = icmp ne %struct.acpi_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %172

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.chv_pinctrl* @devm_kzalloc(i32* %20, i32 40, i32 %21)
  store %struct.chv_pinctrl* %22, %struct.chv_pinctrl** %4, align 8
  %23 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %24 = icmp ne %struct.chv_pinctrl* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %172

28:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %57, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @chv_communities, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_8__** %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %29
  %35 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @chv_communities, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %39, i64 %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcmp(i32 %38, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %34
  %49 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @chv_communities, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %49, i64 %51
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %55 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %54, i32 0, i32 0
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %55, align 8
  br label %60

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %29

60:                                               ; preds = %48, %29
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @chv_communities, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_8__** %62)
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %172

68:                                               ; preds = %60
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %72 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %71, i32 0, i32 5
  store i32* %70, i32** %72, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %73, i32 0)
  %75 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %76 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %78 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @IS_ERR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %68
  %83 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %84 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %2, align 4
  br label %172

87:                                               ; preds = %68
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = call i32 @platform_get_irq(%struct.platform_device* %88, i32 0)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %172

94:                                               ; preds = %87
  %95 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %96 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %95, i32 0, i32 2
  %97 = bitcast %struct.TYPE_7__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 bitcast (%struct.TYPE_7__* @chv_pinctrl_desc to i8*), i64 12, i1 false)
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_name(i32* %99)
  %101 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %102 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 4
  %104 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %105 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %110 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %113 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %118 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %123 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %122, i32 0, i32 2
  %124 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %125 = call i32 @devm_pinctrl_register(i32* %121, %struct.TYPE_7__* %123, %struct.chv_pinctrl* %124)
  %126 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %127 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %129 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @IS_ERR(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %94
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %137 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %138 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @PTR_ERR(i32 %139)
  store i32 %140, i32* %2, align 4
  br label %172

141:                                              ; preds = %94
  %142 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @chv_gpio_probe(%struct.chv_pinctrl* %142, i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %2, align 4
  br label %172

149:                                              ; preds = %141
  %150 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %151 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %154 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @chv_pinctrl_mmio_access_handler, align 4
  %159 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %160 = call i32 @acpi_install_address_space_handler(i32 %152, i32 %157, i32 %158, i32* null, %struct.chv_pinctrl* %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i64 @ACPI_FAILURE(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %149
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32 @dev_err(i32* %166, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %168

168:                                              ; preds = %164, %149
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %171 = call i32 @platform_set_drvdata(%struct.platform_device* %169, %struct.chv_pinctrl* %170)
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %168, %147, %133, %92, %82, %65, %25, %15
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local %struct.chv_pinctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__**) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, %struct.TYPE_7__*, %struct.chv_pinctrl*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @chv_gpio_probe(%struct.chv_pinctrl*, i32) #1

declare dso_local i32 @acpi_install_address_space_handler(i32, i32, i32, i32*, %struct.chv_pinctrl*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.chv_pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
