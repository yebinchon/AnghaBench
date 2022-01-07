; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_imx_rproc.c_imx_rproc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_imx_rproc.c_imx_rproc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.imx_rproc* }
%struct.imx_rproc = type { i32, %struct.device*, %struct.imx_rproc_dcfg* }
%struct.device = type { i32 }
%struct.imx_rproc_dcfg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Failed to stop M4!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @imx_rproc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_rproc_stop(%struct.rproc* %0) #0 {
  %2 = alloca %struct.rproc*, align 8
  %3 = alloca %struct.imx_rproc*, align 8
  %4 = alloca %struct.imx_rproc_dcfg*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %2, align 8
  %7 = load %struct.rproc*, %struct.rproc** %2, align 8
  %8 = getelementptr inbounds %struct.rproc, %struct.rproc* %7, i32 0, i32 0
  %9 = load %struct.imx_rproc*, %struct.imx_rproc** %8, align 8
  store %struct.imx_rproc* %9, %struct.imx_rproc** %3, align 8
  %10 = load %struct.imx_rproc*, %struct.imx_rproc** %3, align 8
  %11 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %10, i32 0, i32 2
  %12 = load %struct.imx_rproc_dcfg*, %struct.imx_rproc_dcfg** %11, align 8
  store %struct.imx_rproc_dcfg* %12, %struct.imx_rproc_dcfg** %4, align 8
  %13 = load %struct.imx_rproc*, %struct.imx_rproc** %3, align 8
  %14 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %13, i32 0, i32 1
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.imx_rproc*, %struct.imx_rproc** %3, align 8
  %17 = getelementptr inbounds %struct.imx_rproc, %struct.imx_rproc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.imx_rproc_dcfg*, %struct.imx_rproc_dcfg** %4, align 8
  %20 = getelementptr inbounds %struct.imx_rproc_dcfg, %struct.imx_rproc_dcfg* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.imx_rproc_dcfg*, %struct.imx_rproc_dcfg** %4, align 8
  %23 = getelementptr inbounds %struct.imx_rproc_dcfg, %struct.imx_rproc_dcfg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.imx_rproc_dcfg*, %struct.imx_rproc_dcfg** %4, align 8
  %26 = getelementptr inbounds %struct.imx_rproc_dcfg, %struct.imx_rproc_dcfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regmap_update_bits(i32 %18, i32 %21, i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %1
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
