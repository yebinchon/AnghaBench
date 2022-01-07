; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.platform_device*, i64, i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@venc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't get IORESOURCE_MEM VENC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"can't ioremap VENC\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VENC_REV_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"OMAP VENC rev %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Invalid DT data\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"venc\00", align 1
@venc_dump_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @venc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.platform_device* @to_platform_device(%struct.device* %12)
  store %struct.platform_device* %13, %struct.platform_device** %8, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  store %struct.platform_device* %14, %struct.platform_device** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @venc, i32 0, i32 1), align 8
  %15 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @venc, i32 0, i32 3))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @venc, i32 0, i32 2), align 8
  %16 = load %struct.platform_device*, %struct.platform_device** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @venc, i32 0, i32 1), align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %10, align 8
  %19 = load %struct.resource*, %struct.resource** %10, align 8
  %20 = icmp ne %struct.resource* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = call i32 @DSSERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %89

25:                                               ; preds = %3
  %26 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %10, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.resource*, %struct.resource** %10, align 8
  %32 = call i32 @resource_size(%struct.resource* %31)
  %33 = call i32 @devm_ioremap(%struct.TYPE_7__* %27, i32 %30, i32 %32)
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @venc, i32 0, i32 0), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @venc, i32 0, i32 0), align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = call i32 @DSSERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %89

40:                                               ; preds = %25
  %41 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %42 = call i32 @venc_get_clocks(%struct.platform_device* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %89

47:                                               ; preds = %40
  %48 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @pm_runtime_enable(%struct.TYPE_7__* %49)
  %51 = call i32 (...) @venc_runtime_get()
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %84

55:                                               ; preds = %47
  %56 = load i32, i32* @VENC_REV_ID, align 4
  %57 = call i32 @venc_read_reg(i32 %56)
  %58 = and i32 %57, 255
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %9, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @dev_dbg(%struct.TYPE_7__* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = call i32 (...) @venc_runtime_put()
  %65 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %55
  %71 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %72 = call i32 @venc_probe_of(%struct.platform_device* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 @DSSERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %83

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %55
  %79 = load i32, i32* @venc_dump_regs, align 4
  %80 = call i32 @dss_debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %82 = call i32 @venc_init_output(%struct.platform_device* %81)
  store i32 0, i32* %4, align 4
  br label %89

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %54
  %85 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @pm_runtime_disable(%struct.TYPE_7__* %86)
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %84, %78, %45, %36, %21
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @venc_get_clocks(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_7__*) #1

declare dso_local i32 @venc_runtime_get(...) #1

declare dso_local i32 @venc_read_reg(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @venc_runtime_put(...) #1

declare dso_local i32 @venc_probe_of(%struct.platform_device*) #1

declare dso_local i32 @dss_debugfs_create_file(i8*, i32) #1

declare dso_local i32 @venc_init_output(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
