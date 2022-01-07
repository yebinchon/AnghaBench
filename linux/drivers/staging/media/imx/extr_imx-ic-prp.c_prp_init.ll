; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_ic_priv = type { %struct.prp_priv*, i32 }
%struct.prp_priv = type { %struct.imx_ic_priv*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_ic_priv*)* @prp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_init(%struct.imx_ic_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_ic_priv*, align 8
  %4 = alloca %struct.prp_priv*, align 8
  store %struct.imx_ic_priv* %0, %struct.imx_ic_priv** %3, align 8
  %5 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %6 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.prp_priv* @devm_kzalloc(i32 %7, i32 16, i32 %8)
  store %struct.prp_priv* %9, %struct.prp_priv** %4, align 8
  %10 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %11 = icmp ne %struct.prp_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %17 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %16, i32 0, i32 1
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %20 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %21 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %20, i32 0, i32 0
  store %struct.prp_priv* %19, %struct.prp_priv** %21, align 8
  %22 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %23 = load %struct.prp_priv*, %struct.prp_priv** %4, align 8
  %24 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %23, i32 0, i32 0
  store %struct.imx_ic_priv* %22, %struct.imx_ic_priv** %24, align 8
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %15, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.prp_priv* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
