; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pdma_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_p2pdma.c_pci_p2pdma_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__, %struct.pci_p2pdma* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_p2pdma = type { i32, i32 }

@p2pmem_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pci_p2pdma_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_p2pdma_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_p2pdma*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.pci_dev*
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 1
  %9 = load %struct.pci_p2pdma*, %struct.pci_p2pdma** %8, align 8
  store %struct.pci_p2pdma* %9, %struct.pci_p2pdma** %4, align 8
  %10 = load %struct.pci_p2pdma*, %struct.pci_p2pdma** %4, align 8
  %11 = icmp ne %struct.pci_p2pdma* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  store %struct.pci_p2pdma* null, %struct.pci_p2pdma** %15, align 8
  %16 = call i32 (...) @synchronize_rcu()
  %17 = load %struct.pci_p2pdma*, %struct.pci_p2pdma** %4, align 8
  %18 = getelementptr inbounds %struct.pci_p2pdma, %struct.pci_p2pdma* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gen_pool_destroy(i32 %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @sysfs_remove_group(i32* %23, i32* @p2pmem_group)
  %25 = load %struct.pci_p2pdma*, %struct.pci_p2pdma** %4, align 8
  %26 = getelementptr inbounds %struct.pci_p2pdma, %struct.pci_p2pdma* %25, i32 0, i32 0
  %27 = call i32 @xa_destroy(i32* %26)
  br label %28

28:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @gen_pool_destroy(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @xa_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
