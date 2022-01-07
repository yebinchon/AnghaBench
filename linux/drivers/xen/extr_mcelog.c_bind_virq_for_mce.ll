; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_mcelog.c_bind_virq_for_mce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_mcelog.c_bind_virq_for_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_mc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@XEN_MC_physcpuinfo = common dso_local global i32 0, align 4
@g_physinfo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to get CPU numbers\0A\00", align 1
@ncpus = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to get CPU info\0A\00", align 1
@VIRQ_MCA = common dso_local global i32 0, align 4
@xen_mce_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"mce\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to bind virq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bind_virq_for_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_virq_for_mce() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_mc, align 4
  %4 = call i32 @memset(%struct.xen_mc* %3, i32 0, i32 12)
  %5 = load i32, i32* @XEN_MC_physcpuinfo, align 4
  %6 = getelementptr inbounds %struct.xen_mc, %struct.xen_mc* %3, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = getelementptr inbounds %struct.xen_mc, %struct.xen_mc* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @g_physinfo, align 4
  %12 = call i32 @set_xen_guest_handle(i32 %10, i32 %11)
  %13 = call i32 @HYPERVISOR_mca(%struct.xen_mc* %3)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %59

19:                                               ; preds = %0
  %20 = getelementptr inbounds %struct.xen_mc, %struct.xen_mc* %3, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @ncpus, align 4
  %24 = load i32, i32* @ncpus, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @kcalloc(i32 %24, i32 4, i32 %25)
  store i32 %26, i32* @g_physinfo, align 4
  %27 = load i32, i32* @g_physinfo, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %1, align 4
  br label %59

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.xen_mc, %struct.xen_mc* %3, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @g_physinfo, align 4
  %38 = call i32 @set_xen_guest_handle(i32 %36, i32 %37)
  %39 = call i32 @HYPERVISOR_mca(%struct.xen_mc* %3)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @g_physinfo, align 4
  %45 = call i32 @kfree(i32 %44)
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %1, align 4
  br label %59

47:                                               ; preds = %32
  %48 = load i32, i32* @VIRQ_MCA, align 4
  %49 = load i32, i32* @xen_mce_interrupt, align 4
  %50 = call i32 @bind_virq_to_irqhandler(i32 %48, i32 0, i32 %49, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @g_physinfo, align 4
  %56 = call i32 @kfree(i32 %55)
  %57 = load i32, i32* %2, align 4
  store i32 %57, i32* %1, align 4
  br label %59

58:                                               ; preds = %47
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %58, %53, %42, %29, %16
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.xen_mc*, i32, i32) #1

declare dso_local i32 @set_xen_guest_handle(i32, i32) #1

declare dso_local i32 @HYPERVISOR_mca(%struct.xen_mc*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @bind_virq_to_irqhandler(i32, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
