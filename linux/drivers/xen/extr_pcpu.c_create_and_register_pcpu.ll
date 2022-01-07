; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pcpu.c_create_and_register_pcpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pcpu.c_create_and_register_pcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { i32, i32, i32 }
%struct.xenpf_pcpuinfo = type { i32, i32 }

@XEN_PCPU_FLAGS_INVALID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xen_pcpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to register pcpu%u\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcpu* (%struct.xenpf_pcpuinfo*)* @create_and_register_pcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcpu* @create_and_register_pcpu(%struct.xenpf_pcpuinfo* %0) #0 {
  %2 = alloca %struct.pcpu*, align 8
  %3 = alloca %struct.xenpf_pcpuinfo*, align 8
  %4 = alloca %struct.pcpu*, align 8
  %5 = alloca i32, align 4
  store %struct.xenpf_pcpuinfo* %0, %struct.xenpf_pcpuinfo** %3, align 8
  %6 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %3, align 8
  %7 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @XEN_PCPU_FLAGS_INVALID, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.pcpu* @ERR_PTR(i32 %14)
  store %struct.pcpu* %15, %struct.pcpu** %2, align 8
  br label %56

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.pcpu* @kzalloc(i32 12, i32 %17)
  store %struct.pcpu* %18, %struct.pcpu** %4, align 8
  %19 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %20 = icmp ne %struct.pcpu* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.pcpu* @ERR_PTR(i32 %23)
  store %struct.pcpu* %24, %struct.pcpu** %2, align 8
  br label %56

25:                                               ; preds = %16
  %26 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %27 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %26, i32 0, i32 1
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %3, align 8
  %30 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %33 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %3, align 8
  %35 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %38 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %40 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %39, i32 0, i32 1
  %41 = call i32 @list_add_tail(i32* %40, i32* @xen_pcpus)
  %42 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %43 = call i32 @register_pcpu(%struct.pcpu* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %25
  %47 = load %struct.xenpf_pcpuinfo*, %struct.xenpf_pcpuinfo** %3, align 8
  %48 = getelementptr inbounds %struct.xenpf_pcpuinfo, %struct.xenpf_pcpuinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.pcpu* @ERR_PTR(i32 %52)
  store %struct.pcpu* %53, %struct.pcpu** %2, align 8
  br label %56

54:                                               ; preds = %25
  %55 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  store %struct.pcpu* %55, %struct.pcpu** %2, align 8
  br label %56

56:                                               ; preds = %54, %46, %21, %12
  %57 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  ret %struct.pcpu* %57
}

declare dso_local %struct.pcpu* @ERR_PTR(i32) #1

declare dso_local %struct.pcpu* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @register_pcpu(%struct.pcpu*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
