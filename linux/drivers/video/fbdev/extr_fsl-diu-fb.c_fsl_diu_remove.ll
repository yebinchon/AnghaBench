; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_fsl_diu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_fsl-diu-fb.c_fsl_diu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_diu_data = type { i32, i32*, i32 }

@NUM_AOIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_diu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_diu_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fsl_diu_data*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.fsl_diu_data* @dev_get_drvdata(i32* %6)
  store %struct.fsl_diu_data* %7, %struct.fsl_diu_data** %3, align 8
  %8 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = call i32 @disable_lcdc(i32* %11)
  %13 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %3, align 8
  %14 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %3, align 8
  %17 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @free_irq(i32 %15, i32 %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %32, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NUM_AOIS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %3, align 8
  %26 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @uninstall_fb(i32* %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %3, align 8
  %37 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @iounmap(i32 %38)
  ret i32 0
}

declare dso_local %struct.fsl_diu_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @disable_lcdc(i32*) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @uninstall_fb(i32*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
