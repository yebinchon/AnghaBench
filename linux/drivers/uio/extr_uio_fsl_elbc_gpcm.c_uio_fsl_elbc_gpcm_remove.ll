; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_fsl_elbc_gpcm.c_uio_fsl_elbc_gpcm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_fsl_elbc_gpcm.c_uio_fsl_elbc_gpcm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.uio_info = type { %struct.uio_info*, %struct.TYPE_2__*, i32 (%struct.uio_info*, i32)*, %struct.uio_info* }
%struct.TYPE_2__ = type { %struct.uio_info*, i32 }
%struct.fsl_elbc_gpcm = type { %struct.fsl_elbc_gpcm*, %struct.TYPE_2__*, i32 (%struct.uio_info*, i32)*, %struct.fsl_elbc_gpcm* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uio_fsl_elbc_gpcm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_fsl_elbc_gpcm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uio_info*, align 8
  %4 = alloca %struct.fsl_elbc_gpcm*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.uio_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.uio_info* %6, %struct.uio_info** %3, align 8
  %7 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %8 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %7, i32 0, i32 3
  %9 = load %struct.uio_info*, %struct.uio_info** %8, align 8
  %10 = bitcast %struct.uio_info* %9 to %struct.fsl_elbc_gpcm*
  store %struct.fsl_elbc_gpcm* %10, %struct.fsl_elbc_gpcm** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = call i32 @platform_set_drvdata(%struct.platform_device* %11, i32* null)
  %13 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %14 = call i32 @uio_unregister_device(%struct.uio_info* %13)
  %15 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %4, align 8
  %16 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %15, i32 0, i32 2
  %17 = load i32 (%struct.uio_info*, i32)*, i32 (%struct.uio_info*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.uio_info*, i32)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %4, align 8
  %21 = getelementptr inbounds %struct.fsl_elbc_gpcm, %struct.fsl_elbc_gpcm* %20, i32 0, i32 2
  %22 = load i32 (%struct.uio_info*, i32)*, i32 (%struct.uio_info*, i32)** %21, align 8
  %23 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %24 = call i32 %22(%struct.uio_info* %23, i32 0)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %27 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @iounmap(i32 %31)
  %33 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %34 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.uio_info*, %struct.uio_info** %37, align 8
  %39 = call i32 @kfree(%struct.uio_info* %38)
  %40 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %41 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %40, i32 0, i32 0
  %42 = load %struct.uio_info*, %struct.uio_info** %41, align 8
  %43 = call i32 @kfree(%struct.uio_info* %42)
  %44 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %45 = call i32 @kfree(%struct.uio_info* %44)
  %46 = load %struct.fsl_elbc_gpcm*, %struct.fsl_elbc_gpcm** %4, align 8
  %47 = bitcast %struct.fsl_elbc_gpcm* %46 to %struct.uio_info*
  %48 = call i32 @kfree(%struct.uio_info* %47)
  ret i32 0
}

declare dso_local %struct.uio_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @uio_unregister_device(%struct.uio_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.uio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
