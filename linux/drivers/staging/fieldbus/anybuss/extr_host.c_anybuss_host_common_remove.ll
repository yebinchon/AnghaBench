; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_anybuss_host_common_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_anybuss_host_common_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_host = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @anybuss_host_common_remove(%struct.anybuss_host* %0) #0 {
  %2 = alloca %struct.anybuss_host*, align 8
  %3 = alloca %struct.anybuss_host*, align 8
  store %struct.anybuss_host* %0, %struct.anybuss_host** %2, align 8
  %4 = load %struct.anybuss_host*, %struct.anybuss_host** %2, align 8
  store %struct.anybuss_host* %4, %struct.anybuss_host** %3, align 8
  %5 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %6 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @device_unregister(i32* %8)
  %10 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %11 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kthread_stop(i32 %12)
  %14 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %15 = call i32 @reset_assert(%struct.anybuss_host* %14)
  %16 = load %struct.anybuss_host*, %struct.anybuss_host** %3, align 8
  %17 = getelementptr inbounds %struct.anybuss_host, %struct.anybuss_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @kmem_cache_destroy(i32 %18)
  ret void
}

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @reset_assert(%struct.anybuss_host*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
