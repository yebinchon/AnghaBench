; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_setup_queues_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_setup_queues_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, i32, i32, i32*, %struct.qdio_irq*, %struct.qdio_q* }
%struct.qdio_irq = type { i32 }
%struct.slib = type { i32, i32, i32, i32*, %struct.qdio_irq*, %struct.slib* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*, %struct.qdio_irq*, i32*, i32)* @setup_queues_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_queues_misc(%struct.qdio_q* %0, %struct.qdio_irq* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.qdio_q*, align 8
  %6 = alloca %struct.qdio_irq*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.slib*, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %5, align 8
  store %struct.qdio_irq* %1, %struct.qdio_irq** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %11 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %10, i32 0, i32 5
  %12 = load %struct.qdio_q*, %struct.qdio_q** %11, align 8
  %13 = bitcast %struct.qdio_q* %12 to %struct.slib*
  store %struct.slib* %13, %struct.slib** %9, align 8
  %14 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %15 = bitcast %struct.qdio_q* %14 to %struct.slib*
  %16 = call i32 @memset(%struct.slib* %15, i32 0, i32 40)
  %17 = load %struct.slib*, %struct.slib** %9, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @memset(%struct.slib* %17, i32 0, i32 %18)
  %20 = load %struct.slib*, %struct.slib** %9, align 8
  %21 = bitcast %struct.slib* %20 to %struct.qdio_q*
  %22 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %23 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %22, i32 0, i32 5
  store %struct.qdio_q* %21, %struct.qdio_q** %23, align 8
  %24 = load %struct.qdio_irq*, %struct.qdio_irq** %6, align 8
  %25 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %26 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %25, i32 0, i32 4
  store %struct.qdio_irq* %24, %struct.qdio_irq** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 31, %27
  %29 = shl i32 1, %28
  %30 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %31 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %34 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %37 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %36, i32 0, i32 3
  store i32* %35, i32** %37, align 8
  %38 = load %struct.qdio_q*, %struct.qdio_q** %5, align 8
  %39 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %38, i32 0, i32 2
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  ret void
}

declare dso_local i32 @memset(%struct.slib*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
