; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_drv.c_vfio_ccw_sch_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_drv.c_vfio_ccw_sch_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.vfio_ccw_private = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.vfio_ccw_private* }

@vfio_ccw_cmd_region = common dso_local global i32 0, align 4
@vfio_ccw_io_region = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unbound from subchannel %x.%x.%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*)* @vfio_ccw_sch_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ccw_sch_remove(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.vfio_ccw_private*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %4 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %5 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %4, i32 0, i32 1
  %6 = call %struct.vfio_ccw_private* @dev_get_drvdata(i32* %5)
  store %struct.vfio_ccw_private* %6, %struct.vfio_ccw_private** %3, align 8
  %7 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %8 = call i32 @vfio_ccw_sch_quiesce(%struct.subchannel* %7)
  %9 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %10 = call i32 @vfio_ccw_mdev_unreg(%struct.subchannel* %9)
  %11 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %12 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %11, i32 0, i32 1
  %13 = call i32 @dev_set_drvdata(i32* %12, i32* null)
  %14 = load i32, i32* @vfio_ccw_cmd_region, align 4
  %15 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %16 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @kmem_cache_free(i32 %14, i32 %17)
  %19 = load i32, i32* @vfio_ccw_io_region, align 4
  %20 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %21 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @kmem_cache_free(i32 %19, i32 %22)
  %24 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %25 = getelementptr inbounds %struct.vfio_ccw_private, %struct.vfio_ccw_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %26, align 8
  %28 = call i32 @kfree(%struct.vfio_ccw_private* %27)
  %29 = load %struct.vfio_ccw_private*, %struct.vfio_ccw_private** %3, align 8
  %30 = call i32 @kfree(%struct.vfio_ccw_private* %29)
  %31 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %32 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %36 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %40 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @VFIO_CCW_MSG_EVENT(i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38, i32 %42)
  ret i32 0
}

declare dso_local %struct.vfio_ccw_private* @dev_get_drvdata(i32*) #1

declare dso_local i32 @vfio_ccw_sch_quiesce(%struct.subchannel*) #1

declare dso_local i32 @vfio_ccw_mdev_unreg(%struct.subchannel*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @kmem_cache_free(i32, i32) #1

declare dso_local i32 @kfree(%struct.vfio_ccw_private*) #1

declare dso_local i32 @VFIO_CCW_MSG_EVENT(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
