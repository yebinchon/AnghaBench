; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pcpu.c_sync_pcpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pcpu.c_sync_pcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { i32 }
%struct.xenpf_pcpuinfo = type { i32, i32, i32 }
%struct.xen_platform_op = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.xenpf_pcpuinfo }

@XENPF_INTERFACE_VERSION = common dso_local global i32 0, align 4
@XENPF_get_cpuinfo = common dso_local global i32 0, align 4
@XEN_PCPU_FLAGS_INVALID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @sync_pcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_pcpu(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcpu*, align 8
  %8 = alloca %struct.xenpf_pcpuinfo*, align 8
  %9 = alloca %struct.xen_platform_op, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.pcpu* null, %struct.pcpu** %7, align 8
  %10 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %11, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %11, i32 0, i32 2
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %9, i32 0, i32 1
  %17 = load i32, i32* @XENPF_INTERFACE_VERSION, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %9, i32 0, i32 2
  %19 = load i32, i32* @XENPF_get_cpuinfo, align 4
  store i32 %19, i32* %18, align 4
  %20 = call i32 @HYPERVISOR_platform_op(%struct.xen_platform_op* %9)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %65

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %9, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.xenpf_pcpuinfo* %27, %struct.xenpf_pcpuinfo** %8, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %8, align 8
  %32 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %4, align 4
  %37 = call %struct.pcpu* @get_pcpu(i32 %36)
  store %struct.pcpu* %37, %struct.pcpu** %7, align 8
  %38 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %8, align 8
  %39 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @XEN_PCPU_FLAGS_INVALID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.pcpu*, %struct.pcpu** %7, align 8
  %46 = call i32 @unregister_and_remove_pcpu(%struct.pcpu* %45)
  store i32 0, i32* %3, align 4
  br label %65

47:                                               ; preds = %35
  %48 = load %struct.pcpu*, %struct.pcpu** %7, align 8
  %49 = icmp ne %struct.pcpu* %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %8, align 8
  %52 = call %struct.pcpu* @create_and_register_pcpu(%struct.xenpf_pcpuinfo* %51)
  store %struct.pcpu* %52, %struct.pcpu** %7, align 8
  %53 = load %struct.pcpu*, %struct.pcpu** %7, align 8
  %54 = call i64 @IS_ERR_OR_NULL(%struct.pcpu* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %65

59:                                               ; preds = %50
  br label %64

60:                                               ; preds = %47
  %61 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %8, align 8
  %62 = load %struct.pcpu*, %struct.pcpu** %7, align 8
  %63 = call i32 @pcpu_online_status(%struct.xenpf_pcpuinfo* %61, %struct.pcpu* %62)
  br label %64

64:                                               ; preds = %60, %59
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %56, %44, %23
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @HYPERVISOR_platform_op(%struct.xen_platform_op*) #1

declare dso_local %struct.pcpu* @get_pcpu(i32) #1

declare dso_local i32 @unregister_and_remove_pcpu(%struct.pcpu*) #1

declare dso_local %struct.pcpu* @create_and_register_pcpu(%struct.xenpf_pcpuinfo*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.pcpu*) #1

declare dso_local i32 @pcpu_online_status(%struct.xenpf_pcpuinfo*, %struct.pcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
