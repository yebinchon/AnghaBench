; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_setup_qib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_setup_qib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { %struct.TYPE_6__, %struct.TYPE_5__**, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.qdio_initialize = type { i32, i64, i64, i32, i32 }

@QIB_RFLAGS_ENABLE_QEBSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_irq*, %struct.qdio_initialize*)* @setup_qib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_qib(%struct.qdio_irq* %0, %struct.qdio_initialize* %1) #0 {
  %3 = alloca %struct.qdio_irq*, align 8
  %4 = alloca %struct.qdio_initialize*, align 8
  store %struct.qdio_irq* %0, %struct.qdio_irq** %3, align 8
  store %struct.qdio_initialize* %1, %struct.qdio_initialize** %4, align 8
  %5 = call i64 (...) @qebsm_possible()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32, i32* @QIB_RFLAGS_ENABLE_QEBSM, align 4
  %9 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %10 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %8
  store i32 %13, i32* %11, align 8
  br label %14

14:                                               ; preds = %7, %2
  %15 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %16 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %19 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 8
  %23 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %24 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %27 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %30 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %14
  %34 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %35 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %42 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  br label %44

44:                                               ; preds = %33, %14
  %45 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %46 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %51 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %58 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  br label %60

60:                                               ; preds = %49, %44
  %61 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %62 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %66 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @memcpy(i32 %64, i32 %67, i32 8)
  ret void
}

declare dso_local i64 @qebsm_possible(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
