; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_ccio-dma.c_ccio_find_ioc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_ccio-dma.c_ccio_find_ioc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc = type { i32, %struct.ioc* }

@ioc_list = common dso_local global %struct.ioc* null, align 8
@ioc_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ioc* (i32)* @ccio_find_ioc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ioc* @ccio_find_ioc(i32 %0) #0 {
  %2 = alloca %struct.ioc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ioc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load %struct.ioc*, %struct.ioc** @ioc_list, align 8
  store %struct.ioc* %6, %struct.ioc** %5, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ioc_count, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load %struct.ioc*, %struct.ioc** %5, align 8
  %13 = getelementptr inbounds %struct.ioc, %struct.ioc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.ioc*, %struct.ioc** %5, align 8
  store %struct.ioc* %18, %struct.ioc** %2, align 8
  br label %27

19:                                               ; preds = %11
  %20 = load %struct.ioc*, %struct.ioc** %5, align 8
  %21 = getelementptr inbounds %struct.ioc, %struct.ioc* %20, i32 0, i32 1
  %22 = load %struct.ioc*, %struct.ioc** %21, align 8
  store %struct.ioc* %22, %struct.ioc** %5, align 8
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %7

26:                                               ; preds = %7
  store %struct.ioc* null, %struct.ioc** %2, align 8
  br label %27

27:                                               ; preds = %26, %17
  %28 = load %struct.ioc*, %struct.ioc** %2, align 8
  ret %struct.ioc* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
