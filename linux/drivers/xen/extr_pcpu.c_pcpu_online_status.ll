; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pcpu.c_pcpu_online_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pcpu.c_pcpu_online_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenpf_pcpuinfo = type { i32 }
%struct.pcpu = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@XEN_PCPU_FLAGS_ONLINE = common dso_local global i32 0, align 4
@KOBJ_ONLINE = common dso_local global i32 0, align 4
@KOBJ_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenpf_pcpuinfo*, %struct.pcpu*)* @pcpu_online_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcpu_online_status(%struct.xenpf_pcpuinfo* %0, %struct.pcpu* %1) #0 {
  %3 = alloca %struct.xenpf_pcpuinfo*, align 8
  %4 = alloca %struct.pcpu*, align 8
  store %struct.xenpf_pcpuinfo* %0, %struct.xenpf_pcpuinfo** %3, align 8
  store %struct.pcpu* %1, %struct.pcpu** %4, align 8
  %5 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %3, align 8
  %6 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @xen_pcpu_online(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %12 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @xen_pcpu_online(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @XEN_PCPU_FLAGS_ONLINE, align 4
  %18 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %19 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %23 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* @KOBJ_ONLINE, align 4
  %26 = call i32 @kobject_uevent(i32* %24, i32 %25)
  br label %52

27:                                               ; preds = %10, %2
  %28 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %3, align 8
  %29 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @xen_pcpu_online(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %27
  %34 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %35 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @xen_pcpu_online(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i32, i32* @XEN_PCPU_FLAGS_ONLINE, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %43 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %47 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* @KOBJ_OFFLINE, align 4
  %50 = call i32 @kobject_uevent(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %39, %33, %27
  br label %52

52:                                               ; preds = %51, %16
  ret void
}

declare dso_local i64 @xen_pcpu_online(i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
