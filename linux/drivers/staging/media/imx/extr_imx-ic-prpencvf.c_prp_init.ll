; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_ic_priv = type { i32, i32, %struct.prp_priv* }
%struct.prp_priv = type { i32, i32, i32, i32, %struct.imx_ic_priv* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@prp_eof_timeout = common dso_local global i32 0, align 4
@PRPENCVF_SRC_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_ic_priv*)* @prp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_init(%struct.imx_ic_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_ic_priv*, align 8
  %4 = alloca %struct.prp_priv*, align 8
  store %struct.imx_ic_priv* %0, %struct.imx_ic_priv** %3, align 8
  %5 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %6 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.prp_priv* @devm_kzalloc(i32 %7, i32 24, i32 %8)
  store %struct.prp_priv* %9, %struct.prp_priv** %4, align 8
  %10 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %11 = icmp ne %struct.prp_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %17 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %18 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %17, i32 0, i32 2
  store %struct.prp_priv* %16, %struct.prp_priv** %18, align 8
  %19 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %20 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %21 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %20, i32 0, i32 4
  store %struct.imx_ic_priv* %19, %struct.imx_ic_priv** %21, align 8
  %22 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %23 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %22, i32 0, i32 3
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %26 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %25, i32 0, i32 2
  %27 = load i32, i32* @prp_eof_timeout, align 4
  %28 = call i32 @timer_setup(i32* %26, i32 %27, i32 0)
  %29 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %30 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %33 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %32, i32 0, i32 0
  %34 = load i32, i32* @PRPENCVF_SRC_PAD, align 4
  %35 = call i32 @imx_media_capture_device_init(i32 %31, i32* %33, i32 %34)
  %36 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %37 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %39 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %15
  %44 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %45 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %15
  %49 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %50 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %49, i32 0, i32 0
  %51 = call i32 @mutex_init(i32* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %43, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.prp_priv* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @imx_media_capture_device_init(i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
