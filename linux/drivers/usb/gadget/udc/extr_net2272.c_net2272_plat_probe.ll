; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_plat_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_plat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net2272 = type { i32, i32, i32 }
%struct.resource = type { i32, i32 }

@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_BUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"must provide irq/base addr\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_HIGHEDGE = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_LOWEDGE = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_HIGHLEVEL = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_LOWLEVEL = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"get request memory region!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"can't map memory\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"running in 16-bit, %sbyte swap local bus mode\0A\00", align 1
@LOCCTL = common dso_local global i32 0, align 4
@BYTE_SWAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @net2272_plat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net2272_plat_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net2272*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = load i32, i32* @IORESOURCE_IRQ, align 4
  %14 = call %struct.resource* @platform_get_resource(%struct.platform_device* %12, i32 %13, i32 0)
  store %struct.resource* %14, %struct.resource** %11, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = call %struct.resource* @platform_get_resource(%struct.platform_device* %15, i32 %16, i32 0)
  store %struct.resource* %17, %struct.resource** %9, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_BUS, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %10, align 8
  %21 = load %struct.resource*, %struct.resource** %11, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.resource*, %struct.resource** %9, align 8
  %25 = icmp ne %struct.resource* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %167

32:                                               ; preds = %23
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %11, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.net2272* @net2272_probe_init(i32* %34, i32 %37)
  store %struct.net2272* %38, %struct.net2272** %4, align 8
  %39 = load %struct.net2272*, %struct.net2272** %4, align 8
  %40 = call i64 @IS_ERR(%struct.net2272* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.net2272*, %struct.net2272** %4, align 8
  %44 = call i32 @PTR_ERR(%struct.net2272* %43)
  store i32 %44, i32* %2, align 4
  br label %167

45:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  %46 = load %struct.resource*, %struct.resource** %11, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IORESOURCE_IRQ_HIGHEDGE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.resource*, %struct.resource** %11, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IORESOURCE_IRQ_LOWEDGE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.resource*, %struct.resource** %11, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IORESOURCE_IRQ_HIGHLEVEL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load %struct.resource*, %struct.resource** %11, align 8
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IORESOURCE_IRQ_LOWLEVEL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.resource*, %struct.resource** %9, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  %93 = load %struct.resource*, %struct.resource** %9, align 8
  %94 = call i32 @resource_size(%struct.resource* %93)
  store i32 %94, i32* %8, align 4
  %95 = load %struct.resource*, %struct.resource** %10, align 8
  %96 = icmp ne %struct.resource* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = load %struct.resource*, %struct.resource** %10, align 8
  %99 = getelementptr inbounds %struct.resource, %struct.resource* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.net2272*, %struct.net2272** %4, align 8
  %102 = getelementptr inbounds %struct.net2272, %struct.net2272* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %97, %89
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @driver_name, align 4
  %107 = call i32 @request_mem_region(i32 %104, i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %103
  %110 = load %struct.net2272*, %struct.net2272** %4, align 8
  %111 = getelementptr inbounds %struct.net2272, %struct.net2272* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_dbg(i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @EBUSY, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %165

116:                                              ; preds = %103
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @ioremap_nocache(i32 %117, i32 %118)
  %120 = load %struct.net2272*, %struct.net2272** %4, align 8
  %121 = getelementptr inbounds %struct.net2272, %struct.net2272* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.net2272*, %struct.net2272** %4, align 8
  %123 = getelementptr inbounds %struct.net2272, %struct.net2272* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %116
  %127 = load %struct.net2272*, %struct.net2272** %4, align 8
  %128 = getelementptr inbounds %struct.net2272, %struct.net2272* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @dev_dbg(i32 %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @EFAULT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %161

133:                                              ; preds = %116
  %134 = load %struct.net2272*, %struct.net2272** %4, align 8
  %135 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %136 = call i32 @net2272_probe_fin(%struct.net2272* %134, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %156

140:                                              ; preds = %133
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = load %struct.net2272*, %struct.net2272** %4, align 8
  %143 = call i32 @platform_set_drvdata(%struct.platform_device* %141, %struct.net2272* %142)
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load %struct.net2272*, %struct.net2272** %4, align 8
  %147 = load i32, i32* @LOCCTL, align 4
  %148 = call i32 @net2272_read(%struct.net2272* %146, i32 %147)
  %149 = load i32, i32* @BYTE_SWAP, align 4
  %150 = shl i32 1, %149
  %151 = and i32 %148, %150
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %155 = call i32 @dev_info(i32* %145, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %154)
  store i32 0, i32* %2, align 4
  br label %167

156:                                              ; preds = %139
  %157 = load %struct.net2272*, %struct.net2272** %4, align 8
  %158 = getelementptr inbounds %struct.net2272, %struct.net2272* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @iounmap(i32 %159)
  br label %161

161:                                              ; preds = %156, %126
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @release_mem_region(i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %161, %109
  %166 = load i32, i32* %5, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %165, %140, %42, %26
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.net2272* @net2272_probe_init(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.net2272*) #1

declare dso_local i32 @PTR_ERR(%struct.net2272*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @net2272_probe_fin(%struct.net2272*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net2272*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @net2272_read(%struct.net2272*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
