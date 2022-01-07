; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_global_data_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_global_data_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@snic_glob = common dso_local global %struct.TYPE_3__* null, align 8
@SNIC_REQ_TM_CACHE = common dso_local global i64 0, align 8
@SNIC_REQ_CACHE_MAX_SGL = common dso_local global i64 0, align 8
@SNIC_REQ_CACHE_DFLT_SGL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @snic_global_data_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snic_global_data_cleanup() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @snic_glob, align 8
  %2 = icmp eq %struct.TYPE_3__* %1, null
  %3 = zext i1 %2 to i32
  %4 = call i32 @SNIC_BUG_ON(i32 %3)
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @snic_glob, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @destroy_workqueue(i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @snic_glob, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @SNIC_REQ_TM_CACHE, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kmem_cache_destroy(i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @snic_glob, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @SNIC_REQ_CACHE_MAX_SGL, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kmem_cache_destroy(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @snic_glob, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @SNIC_REQ_CACHE_DFLT_SGL, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kmem_cache_destroy(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @snic_glob, align 8
  %31 = call i32 @kfree(%struct.TYPE_3__* %30)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @snic_glob, align 8
  ret void
}

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
