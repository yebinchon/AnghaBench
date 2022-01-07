; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_imx_rproc.c_imx_rproc_addr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_imx_rproc.c_imx_rproc_addr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_rproc = type { %struct.TYPE_2__*, %struct.imx_rproc_dcfg* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.imx_rproc_dcfg = type { i32, %struct.imx_rproc_att* }
%struct.imx_rproc_att = type { i32, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@ATT_OWN = common dso_local global i32 0, align 4
@IMX7D_RPROC_MEM_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"devm_ioremap_resource failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to resolve memory region\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_rproc*, %struct.platform_device*)* @imx_rproc_addr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_rproc_addr_init(%struct.imx_rproc* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_rproc*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.imx_rproc_dcfg*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.imx_rproc_att*, align 8
  %14 = alloca %struct.device_node*, align 8
  %15 = alloca %struct.resource, align 4
  store %struct.imx_rproc* %0, %struct.imx_rproc** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %16 = load %struct.imx_rproc*, %struct.imx_rproc** %4, align 8
  %17 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %16, i32 0, i32 1
  %18 = load %struct.imx_rproc_dcfg*, %struct.imx_rproc_dcfg** %17, align 8
  store %struct.imx_rproc_dcfg* %18, %struct.imx_rproc_dcfg** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  store %struct.device_node* %23, %struct.device_node** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %103, %2
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.imx_rproc_dcfg*, %struct.imx_rproc_dcfg** %6, align 8
  %27 = getelementptr inbounds %struct.imx_rproc_dcfg, %struct.imx_rproc_dcfg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %106

30:                                               ; preds = %24
  %31 = load %struct.imx_rproc_dcfg*, %struct.imx_rproc_dcfg** %6, align 8
  %32 = getelementptr inbounds %struct.imx_rproc_dcfg, %struct.imx_rproc_dcfg* %31, i32 0, i32 1
  %33 = load %struct.imx_rproc_att*, %struct.imx_rproc_att** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.imx_rproc_att, %struct.imx_rproc_att* %33, i64 %35
  store %struct.imx_rproc_att* %36, %struct.imx_rproc_att** %13, align 8
  %37 = load %struct.imx_rproc_att*, %struct.imx_rproc_att** %13, align 8
  %38 = getelementptr inbounds %struct.imx_rproc_att, %struct.imx_rproc_att* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATT_OWN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  br label %103

44:                                               ; preds = %30
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @IMX7D_RPROC_MEM_MAX, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %106

49:                                               ; preds = %44
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.imx_rproc_att*, %struct.imx_rproc_att** %13, align 8
  %53 = getelementptr inbounds %struct.imx_rproc_att, %struct.imx_rproc_att* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.imx_rproc_att*, %struct.imx_rproc_att** %13, align 8
  %56 = getelementptr inbounds %struct.imx_rproc_att, %struct.imx_rproc_att* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @devm_ioremap(%struct.device* %51, i32 %54, i32 %57)
  %59 = load %struct.imx_rproc*, %struct.imx_rproc** %4, align 8
  %60 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 %58, i32* %65, align 4
  %66 = load %struct.imx_rproc*, %struct.imx_rproc** %4, align 8
  %67 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %49
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %192

80:                                               ; preds = %49
  %81 = load %struct.imx_rproc_att*, %struct.imx_rproc_att** %13, align 8
  %82 = getelementptr inbounds %struct.imx_rproc_att, %struct.imx_rproc_att* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.imx_rproc*, %struct.imx_rproc** %4, align 8
  %85 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 %83, i32* %90, align 4
  %91 = load %struct.imx_rproc_att*, %struct.imx_rproc_att** %13, align 8
  %92 = getelementptr inbounds %struct.imx_rproc_att, %struct.imx_rproc_att* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.imx_rproc*, %struct.imx_rproc** %4, align 8
  %95 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32 %93, i32* %100, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %80, %43
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %24

106:                                              ; preds = %48, %24
  %107 = load %struct.device_node*, %struct.device_node** %8, align 8
  %108 = call i32 @of_count_phandle_with_args(%struct.device_node* %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp sle i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %192

112:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %188, %112
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %191

117:                                              ; preds = %113
  %118 = load %struct.device_node*, %struct.device_node** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  store %struct.device_node* %120, %struct.device_node** %14, align 8
  %121 = load %struct.device_node*, %struct.device_node** %14, align 8
  %122 = call i32 @of_address_to_resource(%struct.device_node* %121, i32 0, %struct.resource* %15)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load %struct.device*, %struct.device** %7, align 8
  %127 = call i32 @dev_err(%struct.device* %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %3, align 4
  br label %192

129:                                              ; preds = %117
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @IMX7D_RPROC_MEM_MAX, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %191

134:                                              ; preds = %129
  %135 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 @devm_ioremap_resource(%struct.device* %136, %struct.resource* %15)
  %138 = load %struct.imx_rproc*, %struct.imx_rproc** %4, align 8
  %139 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  store i32 %137, i32* %144, align 4
  %145 = load %struct.imx_rproc*, %struct.imx_rproc** %4, align 8
  %146 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @IS_ERR(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %134
  %156 = load %struct.device*, %struct.device** %7, align 8
  %157 = call i32 @dev_err(%struct.device* %156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %158 = load %struct.imx_rproc*, %struct.imx_rproc** %4, align 8
  %159 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @PTR_ERR(i32 %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %3, align 4
  br label %192

168:                                              ; preds = %134
  %169 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.imx_rproc*, %struct.imx_rproc** %4, align 8
  %172 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %171, i32 0, i32 0
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  store i32 %170, i32* %177, align 4
  %178 = call i32 @resource_size(%struct.resource* %15)
  %179 = load %struct.imx_rproc*, %struct.imx_rproc** %4, align 8
  %180 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %179, i32 0, i32 0
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  store i32 %178, i32* %185, align 4
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %10, align 4
  br label %188

188:                                              ; preds = %168
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %113

191:                                              ; preds = %133, %113
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %191, %155, %125, %111, %75
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
