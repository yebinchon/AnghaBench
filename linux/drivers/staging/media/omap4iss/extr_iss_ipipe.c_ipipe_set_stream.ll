; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_ipipe.c_ipipe_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.iss_ipipe_device = type { i32, i32, i32 }
%struct.iss_device = type { i32 }

@OMAP4_ISS_ISP_SUBCLK_IPIPE = common dso_local global i32 0, align 4
@OMAP4_ISS_MEM_ISP_IPIPE = common dso_local global i32 0, align 4
@IPIPE_GCK_MMR = common dso_local global i32 0, align 4
@IPIPE_GCK_MMR_REG = common dso_local global i32 0, align 4
@IPIPE_GCK_PIX = common dso_local global i32 0, align 4
@IPIPE_GCK_PIX_G3 = common dso_local global i32 0, align 4
@IPIPE_GCK_PIX_G2 = common dso_local global i32 0, align 4
@IPIPE_GCK_PIX_G1 = common dso_local global i32 0, align 4
@IPIPE_GCK_PIX_G0 = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ipipe_set_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipipe_set_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iss_ipipe_device*, align 8
  %7 = alloca %struct.iss_device*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.iss_ipipe_device* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.iss_ipipe_device* %10, %struct.iss_ipipe_device** %6, align 8
  %11 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %6, align 8
  %12 = call %struct.iss_device* @to_iss_device(%struct.iss_ipipe_device* %11)
  store %struct.iss_device* %12, %struct.iss_device** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %6, align 8
  %14 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 128
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %82

21:                                               ; preds = %17
  %22 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %23 = load i32, i32* @OMAP4_ISS_ISP_SUBCLK_IPIPE, align 4
  %24 = call i32 @omap4iss_isp_subclk_enable(%struct.iss_device* %22, i32 %23)
  %25 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %26 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPE, align 4
  %27 = load i32, i32* @IPIPE_GCK_MMR, align 4
  %28 = load i32, i32* @IPIPE_GCK_MMR_REG, align 4
  %29 = call i32 @iss_reg_write(%struct.iss_device* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %31 = load i32, i32* @OMAP4_ISS_MEM_ISP_IPIPE, align 4
  %32 = load i32, i32* @IPIPE_GCK_PIX, align 4
  %33 = load i32, i32* @IPIPE_GCK_PIX_G3, align 4
  %34 = load i32, i32* @IPIPE_GCK_PIX_G2, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IPIPE_GCK_PIX_G1, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IPIPE_GCK_PIX_G0, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @iss_reg_write(%struct.iss_device* %30, i32 %31, i32 %32, i32 %39)
  br label %41

41:                                               ; preds = %21, %2
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %77 [
    i32 129, label %43
    i32 128, label %53
  ]

43:                                               ; preds = %41
  %44 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %6, align 8
  %45 = call i32 @ipipe_configure(%struct.iss_ipipe_device* %44)
  %46 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %6, align 8
  %47 = call i32 @ipipe_print_status(%struct.iss_ipipe_device* %46)
  %48 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %6, align 8
  %49 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %48, i32 0, i32 1
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  %51 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %6, align 8
  %52 = call i32 @ipipe_enable(%struct.iss_ipipe_device* %51, i32 1)
  br label %77

53:                                               ; preds = %41
  %54 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %6, align 8
  %55 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 128
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %82

59:                                               ; preds = %53
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %60, i32 0, i32 0
  %62 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %6, align 8
  %63 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %62, i32 0, i32 2
  %64 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %6, align 8
  %65 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %64, i32 0, i32 1
  %66 = call i32 @omap4iss_module_sync_idle(i32* %61, i32* %63, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %59
  %72 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %6, align 8
  %73 = call i32 @ipipe_enable(%struct.iss_ipipe_device* %72, i32 0)
  %74 = load %struct.iss_device*, %struct.iss_device** %7, align 8
  %75 = load i32, i32* @OMAP4_ISS_ISP_SUBCLK_IPIPE, align 4
  %76 = call i32 @omap4iss_isp_subclk_disable(%struct.iss_device* %74, i32 %75)
  br label %77

77:                                               ; preds = %41, %71, %43
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.iss_ipipe_device*, %struct.iss_ipipe_device** %6, align 8
  %80 = getelementptr inbounds %struct.iss_ipipe_device, %struct.iss_ipipe_device* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %58, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.iss_ipipe_device* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.iss_device* @to_iss_device(%struct.iss_ipipe_device*) #1

declare dso_local i32 @omap4iss_isp_subclk_enable(%struct.iss_device*, i32) #1

declare dso_local i32 @iss_reg_write(%struct.iss_device*, i32, i32, i32) #1

declare dso_local i32 @ipipe_configure(%struct.iss_ipipe_device*) #1

declare dso_local i32 @ipipe_print_status(%struct.iss_ipipe_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ipipe_enable(%struct.iss_ipipe_device*, i32) #1

declare dso_local i32 @omap4iss_module_sync_idle(i32*, i32*, i32*) #1

declare dso_local i32 @omap4iss_isp_subclk_disable(%struct.iss_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
