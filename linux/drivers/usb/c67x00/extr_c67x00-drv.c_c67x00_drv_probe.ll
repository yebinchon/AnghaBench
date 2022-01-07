; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-drv.c_c67x00_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-drv.c_c67x00_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.c67x00_device = type { %struct.TYPE_2__, i32*, %struct.platform_device*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.c67x00_platform_data = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Memory region busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to map HPI registers\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@c67x00_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Cannot claim IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Device reset failed\0A\00", align 1
@C67X00_SIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @c67x00_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.c67x00_device*, align 8
  %5 = alloca %struct.c67x00_platform_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %6, align 8
  %13 = load %struct.resource*, %struct.resource** %6, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %175

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_IRQ, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %7, align 8
  %22 = load %struct.resource*, %struct.resource** %7, align 8
  %23 = icmp ne %struct.resource* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %175

27:                                               ; preds = %18
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i8* @dev_get_platdata(i32* %29)
  %31 = bitcast i8* %30 to %struct.c67x00_platform_data*
  store %struct.c67x00_platform_data* %31, %struct.c67x00_platform_data** %5, align 8
  %32 = load %struct.c67x00_platform_data*, %struct.c67x00_platform_data** %5, align 8
  %33 = icmp ne %struct.c67x00_platform_data* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %175

37:                                               ; preds = %27
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.c67x00_device* @kzalloc(i32 40, i32 %38)
  store %struct.c67x00_device* %39, %struct.c67x00_device** %4, align 8
  %40 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %41 = icmp ne %struct.c67x00_device* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %175

45:                                               ; preds = %37
  %46 = load %struct.resource*, %struct.resource** %6, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = call i32 @resource_size(%struct.resource* %49)
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @request_mem_region(i32 %48, i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %45
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %171

62:                                               ; preds = %45
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = call i32 @resource_size(%struct.resource* %66)
  %68 = call i32 @ioremap(i32 %65, i32 %67)
  %69 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %70 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %73 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %62
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %164

83:                                               ; preds = %62
  %84 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %85 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = call i32 @spin_lock_init(i32* %86)
  %88 = load %struct.c67x00_platform_data*, %struct.c67x00_platform_data** %5, align 8
  %89 = getelementptr inbounds %struct.c67x00_platform_data, %struct.c67x00_platform_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %92 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i8* @dev_get_platdata(i32* %95)
  %97 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %98 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %101 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %100, i32 0, i32 2
  store %struct.platform_device* %99, %struct.platform_device** %101, align 8
  %102 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %103 = call i32 @c67x00_ll_init(%struct.c67x00_device* %102)
  %104 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %105 = call i32 @c67x00_ll_hpi_reg_init(%struct.c67x00_device* %104)
  %106 = load %struct.resource*, %struct.resource** %7, align 8
  %107 = getelementptr inbounds %struct.resource, %struct.resource* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @c67x00_irq, align 4
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %114 = call i32 @request_irq(i32 %108, i32 %109, i32 0, i32 %112, %struct.c67x00_device* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %83
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %158

121:                                              ; preds = %83
  %122 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %123 = call i32 @c67x00_ll_reset(%struct.c67x00_device* %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %152

130:                                              ; preds = %121
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %145, %130
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @C67X00_SIES, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %131
  %136 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %137 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @c67x00_probe_sie(i32* %141, %struct.c67x00_device* %142, i32 %143)
  br label %145

145:                                              ; preds = %135
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %131

148:                                              ; preds = %131
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %151 = call i32 @platform_set_drvdata(%struct.platform_device* %149, %struct.c67x00_device* %150)
  store i32 0, i32* %2, align 4
  br label %175

152:                                              ; preds = %126
  %153 = load %struct.resource*, %struct.resource** %7, align 8
  %154 = getelementptr inbounds %struct.resource, %struct.resource* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %157 = call i32 @free_irq(i32 %155, %struct.c67x00_device* %156)
  br label %158

158:                                              ; preds = %152, %117
  %159 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %160 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @iounmap(i32 %162)
  br label %164

164:                                              ; preds = %158, %77
  %165 = load %struct.resource*, %struct.resource** %6, align 8
  %166 = getelementptr inbounds %struct.resource, %struct.resource* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.resource*, %struct.resource** %6, align 8
  %169 = call i32 @resource_size(%struct.resource* %168)
  %170 = call i32 @release_mem_region(i32 %167, i32 %169)
  br label %171

171:                                              ; preds = %164, %56
  %172 = load %struct.c67x00_device*, %struct.c67x00_device** %4, align 8
  %173 = call i32 @kfree(%struct.c67x00_device* %172)
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %171, %148, %42, %34, %24, %15
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @dev_get_platdata(i32*) #1

declare dso_local %struct.c67x00_device* @kzalloc(i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @c67x00_ll_init(%struct.c67x00_device*) #1

declare dso_local i32 @c67x00_ll_hpi_reg_init(%struct.c67x00_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.c67x00_device*) #1

declare dso_local i32 @c67x00_ll_reset(%struct.c67x00_device*) #1

declare dso_local i32 @c67x00_probe_sie(i32*, %struct.c67x00_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.c67x00_device*) #1

declare dso_local i32 @free_irq(i32, %struct.c67x00_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.c67x00_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
