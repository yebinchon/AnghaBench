; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c___nd_btt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c___nd_btt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_btt = type { i32, i32, i32 }
%struct.nd_namespace_common = type { i32 }
%struct.btt_sb = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@SZ_16M = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_btt*, %struct.nd_namespace_common*, %struct.btt_sb*)* @__nd_btt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nd_btt_probe(%struct.nd_btt* %0, %struct.nd_namespace_common* %1, %struct.btt_sb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_btt*, align 8
  %6 = alloca %struct.nd_namespace_common*, align 8
  %7 = alloca %struct.btt_sb*, align 8
  %8 = alloca i32, align 4
  store %struct.nd_btt* %0, %struct.nd_btt** %5, align 8
  store %struct.nd_namespace_common* %1, %struct.nd_namespace_common** %6, align 8
  store %struct.btt_sb* %2, %struct.btt_sb** %7, align 8
  %9 = load %struct.btt_sb*, %struct.btt_sb** %7, align 8
  %10 = icmp ne %struct.btt_sb* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %13 = icmp ne %struct.nd_namespace_common* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %16 = icmp ne %struct.nd_btt* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %11, %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %62

20:                                               ; preds = %14
  %21 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %22 = call i64 @nvdimm_namespace_capacity(%struct.nd_namespace_common* %21)
  %23 = load i64, i64* @SZ_16M, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %62

28:                                               ; preds = %20
  %29 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %30 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %31 = load %struct.btt_sb*, %struct.btt_sb** %7, align 8
  %32 = call i32 @nd_btt_version(%struct.nd_btt* %29, %struct.nd_namespace_common* %30, %struct.btt_sb* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %62

37:                                               ; preds = %28
  %38 = load %struct.btt_sb*, %struct.btt_sb** %7, align 8
  %39 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %43 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.btt_sb*, %struct.btt_sb** %7, align 8
  %45 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @kmemdup(i32 %46, i32 16, i32 %47)
  %49 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %50 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %52 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %37
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %62

58:                                               ; preds = %37
  %59 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %60 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %59, i32 0, i32 0
  %61 = call i32 @__nd_device_register(i32* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %55, %35, %25, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @nvdimm_namespace_capacity(%struct.nd_namespace_common*) #1

declare dso_local i32 @nd_btt_version(%struct.nd_btt*, %struct.nd_namespace_common*, %struct.btt_sb*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kmemdup(i32, i32, i32) #1

declare dso_local i32 @__nd_device_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
