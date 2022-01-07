; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010.c_tusb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_tusb6010.c_tusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device_info = type { i32, i32, %struct.musb_hdrc_platform_data*, %struct.resource*, i32* }
%struct.musb_hdrc_platform_data = type { i32* }
%struct.resource = type { i32, i32, i32, i32 }
%struct.platform_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.tusb6010_glue = type { %struct.platform_device*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tusb_ops = common dso_local global i32 0, align 4
@tusb_dev_info = common dso_local global %struct.platform_device_info zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"failed to register musb device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tusb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca [3 x %struct.resource], align 16
  %5 = alloca %struct.musb_hdrc_platform_data*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.tusb6010_glue*, align 8
  %8 = alloca %struct.platform_device_info, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.musb_hdrc_platform_data* @dev_get_platdata(i32* %11)
  store %struct.musb_hdrc_platform_data* %12, %struct.musb_hdrc_platform_data** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.tusb6010_glue* @devm_kzalloc(i32* %14, i32 16, i32 %15)
  store %struct.tusb6010_glue* %16, %struct.tusb6010_glue** %7, align 8
  %17 = load %struct.tusb6010_glue*, %struct.tusb6010_glue** %7, align 8
  %18 = icmp ne %struct.tusb6010_glue* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %163

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.tusb6010_glue*, %struct.tusb6010_glue** %7, align 8
  %26 = getelementptr inbounds %struct.tusb6010_glue, %struct.tusb6010_glue* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %28 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %27, i32 0, i32 0
  store i32* @tusb_ops, i32** %28, align 8
  %29 = call i32 (...) @usb_phy_generic_register()
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.tusb6010_glue*, %struct.tusb6010_glue** %7, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.tusb6010_glue* %31)
  %33 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %34 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %35 = call i32 @ARRAY_SIZE(%struct.resource* %34)
  %36 = sext i32 %35 to i64
  %37 = mul i64 16, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(%struct.resource* %33, i32 0, i32 %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 16
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 1
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 1
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 1
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 1
  %103 = getelementptr inbounds %struct.resource, %struct.resource* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 16
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 2
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 2
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 2
  %127 = getelementptr inbounds %struct.resource, %struct.resource* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 2
  %135 = getelementptr inbounds %struct.resource, %struct.resource* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 16
  %136 = bitcast %struct.platform_device_info* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %136, i8* align 8 bitcast (%struct.platform_device_info* @tusb_dev_info to i8*), i64 32, i1 false)
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 4
  store i32* %138, i32** %139, align 8
  %140 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %141 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 3
  store %struct.resource* %140, %struct.resource** %141, align 8
  %142 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %4, i64 0, i64 0
  %143 = call i32 @ARRAY_SIZE(%struct.resource* %142)
  %144 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 0
  store i32 %143, i32* %144, align 8
  %145 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %5, align 8
  %146 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 2
  store %struct.musb_hdrc_platform_data* %145, %struct.musb_hdrc_platform_data** %146, align 8
  %147 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 1
  store i32 8, i32* %147, align 4
  %148 = call %struct.platform_device* @platform_device_register_full(%struct.platform_device_info* %8)
  store %struct.platform_device* %148, %struct.platform_device** %6, align 8
  %149 = load %struct.tusb6010_glue*, %struct.tusb6010_glue** %7, align 8
  %150 = getelementptr inbounds %struct.tusb6010_glue, %struct.tusb6010_glue* %149, i32 0, i32 0
  store %struct.platform_device* %148, %struct.platform_device** %150, align 8
  %151 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %152 = call i64 @IS_ERR(%struct.platform_device* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %22
  %155 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %156 = call i32 @PTR_ERR(%struct.platform_device* %155)
  store i32 %156, i32* %9, align 4
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @dev_err(i32* %158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %2, align 4
  br label %163

162:                                              ; preds = %22
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %154, %19
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.musb_hdrc_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.tusb6010_glue* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @usb_phy_generic_register(...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tusb6010_glue*) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.platform_device* @platform_device_register_full(%struct.platform_device_info*) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
