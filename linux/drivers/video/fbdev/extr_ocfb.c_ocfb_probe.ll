; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ocfb.c_ocfb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ocfb.c_ocfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ocfb_dev = type { i32, i64, %struct.TYPE_5__, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, %struct.TYPE_4__, i32, %struct.ocfb_dev*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ocfb_ops = common dso_local global i32 0, align 4
@mode_option = common dso_local global i32 0, align 4
@default_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No valid video modes found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"I/O resource request failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Frame buffer memory allocation failed\0A\00", align 1
@FBINFO_FOREIGN_ENDIAN = common dso_local global i32 0, align 4
@PALETTE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Color map allocation failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Framebuffer registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ocfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfb_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ocfb_dev* @devm_kzalloc(i32* %9, i32 96, i32 %10)
  store %struct.ocfb_dev* %11, %struct.ocfb_dev** %5, align 8
  %12 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %13 = icmp ne %struct.ocfb_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %185

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.ocfb_dev* %19)
  %21 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %22 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 8
  store i32* @ocfb_ops, i32** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %27 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 7
  store i32* %25, i32** %28, align 8
  %29 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %30 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %31 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 6
  store %struct.ocfb_dev* %29, %struct.ocfb_dev** %32, align 8
  %33 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %34 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 5
  %36 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %37 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %36, i32 0, i32 2
  %38 = load i32, i32* @mode_option, align 4
  %39 = call i32 @fb_find_mode(i32* %35, %struct.TYPE_5__* %37, i32 %38, i32* null, i32 0, i32* @default_mode, i32 16)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %17
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %185

47:                                               ; preds = %17
  %48 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %49 = call i32 @ocfb_init_var(%struct.ocfb_dev* %48)
  %50 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %51 = call i32 @ocfb_init_fix(%struct.ocfb_dev* %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 0)
  store %struct.resource* %54, %struct.resource** %6, align 8
  %55 = load %struct.resource*, %struct.resource** %6, align 8
  %56 = icmp ne %struct.resource* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %47
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %185

63:                                               ; preds = %47
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = call i32 @devm_ioremap_resource(i32* %65, %struct.resource* %66)
  %68 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %69 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %71 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %77 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %185

80:                                               ; preds = %63
  %81 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %82 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %7, align 4
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @PAGE_ALIGN(i32 %88)
  %90 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %91 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %90, i32 0, i32 0
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i64 @dma_alloc_coherent(i32* %87, i32 %89, i32* %91, i32 %92)
  %94 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %95 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %97 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %80
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %185

106:                                              ; preds = %80
  %107 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %108 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %111 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %109, i32* %113, align 4
  %114 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %115 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %118 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i64 %116, i64* %119, align 8
  %120 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %121 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %124 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 8
  %126 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %127 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @memset_io(i64 %128, i32 0, i32 %129)
  %131 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %132 = call i32 @ocfb_setupfb(%struct.ocfb_dev* %131)
  %133 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %134 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %106
  %138 = load i32, i32* @FBINFO_FOREIGN_ENDIAN, align 4
  %139 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %140 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %138
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %137, %106
  %145 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %146 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* @PALETTE_SIZE, align 4
  %149 = call i32 @fb_alloc_cmap(i32* %147, i32 %148, i32 0)
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %144
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 @dev_err(i32* %154, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %172

156:                                              ; preds = %144
  %157 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %158 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %157, i32 0, i32 2
  %159 = call i32 @register_framebuffer(%struct.TYPE_5__* %158)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %163, i32 0, i32 0
  %165 = call i32 @dev_err(i32* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %167

166:                                              ; preds = %156
  store i32 0, i32* %2, align 4
  br label %185

167:                                              ; preds = %162
  %168 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %169 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = call i32 @fb_dealloc_cmap(i32* %170)
  br label %172

172:                                              ; preds = %167, %152
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @PAGE_ALIGN(i32 %175)
  %177 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %178 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.ocfb_dev*, %struct.ocfb_dev** %5, align 8
  %181 = getelementptr inbounds %struct.ocfb_dev, %struct.ocfb_dev* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @dma_free_coherent(i32* %174, i32 %176, i64 %179, i32 %182)
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %172, %166, %100, %75, %57, %41, %14
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.ocfb_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ocfb_dev*) #1

declare dso_local i32 @fb_find_mode(i32*, %struct.TYPE_5__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ocfb_init_var(%struct.ocfb_dev*) #1

declare dso_local i32 @ocfb_init_fix(%struct.ocfb_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @memset_io(i64, i32, i32) #1

declare dso_local i32 @ocfb_setupfb(%struct.ocfb_dev*) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @register_framebuffer(%struct.TYPE_5__*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
