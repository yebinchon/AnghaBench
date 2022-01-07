; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.dpi_data = type { i32, %struct.platform_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @dpi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.dpi_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.device* %10)
  store %struct.platform_device* %11, %struct.platform_device** %8, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.dpi_data* @devm_kzalloc(i32* %13, i32 16, i32 %14)
  store %struct.dpi_data* %15, %struct.dpi_data** %9, align 8
  %16 = load %struct.dpi_data*, %struct.dpi_data** %9, align 8
  %17 = icmp ne %struct.dpi_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %23 = load %struct.dpi_data*, %struct.dpi_data** %9, align 8
  %24 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %23, i32 0, i32 1
  store %struct.platform_device* %22, %struct.platform_device** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.dpi_data*, %struct.dpi_data** %9, align 8
  %28 = call i32 @dev_set_drvdata(i32* %26, %struct.dpi_data* %27)
  %29 = load %struct.dpi_data*, %struct.dpi_data** %9, align 8
  %30 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %33 = call i32 @dpi_init_output(%struct.platform_device* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %21, %18
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.dpi_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.dpi_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dpi_init_output(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
