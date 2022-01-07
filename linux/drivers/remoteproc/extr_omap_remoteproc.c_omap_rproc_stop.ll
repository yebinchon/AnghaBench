; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_omap_remoteproc.c_omap_rproc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_omap_remoteproc.c_omap_rproc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.omap_rproc*, %struct.TYPE_3__ }
%struct.omap_rproc = type { i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.omap_rproc_pdata* }
%struct.omap_rproc_pdata = type { i32 (%struct.platform_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @omap_rproc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rproc_stop(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.omap_rproc_pdata*, align 8
  %7 = alloca %struct.omap_rproc*, align 8
  %8 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %9 = load %struct.rproc*, %struct.rproc** %3, align 8
  %10 = getelementptr inbounds %struct.rproc, %struct.rproc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.platform_device* @to_platform_device(%struct.device* %13)
  store %struct.platform_device* %14, %struct.platform_device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.omap_rproc_pdata*, %struct.omap_rproc_pdata** %17, align 8
  store %struct.omap_rproc_pdata* %18, %struct.omap_rproc_pdata** %6, align 8
  %19 = load %struct.rproc*, %struct.rproc** %3, align 8
  %20 = getelementptr inbounds %struct.rproc, %struct.rproc* %19, i32 0, i32 0
  %21 = load %struct.omap_rproc*, %struct.omap_rproc** %20, align 8
  store %struct.omap_rproc* %21, %struct.omap_rproc** %7, align 8
  %22 = load %struct.omap_rproc_pdata*, %struct.omap_rproc_pdata** %6, align 8
  %23 = getelementptr inbounds %struct.omap_rproc_pdata, %struct.omap_rproc_pdata* %22, i32 0, i32 0
  %24 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %23, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %26 = call i32 %24(%struct.platform_device* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %1
  %32 = load %struct.omap_rproc*, %struct.omap_rproc** %7, align 8
  %33 = getelementptr inbounds %struct.omap_rproc, %struct.omap_rproc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mbox_free_channel(i32 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @mbox_free_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
