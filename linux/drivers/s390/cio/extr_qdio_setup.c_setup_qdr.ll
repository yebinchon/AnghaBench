; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_setup_qdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_setup_qdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.qdio_initialize = type { i32, i32, i32, i32 }

@PAGE_DEFAULT_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_irq*, %struct.qdio_initialize*)* @setup_qdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_qdr(%struct.qdio_irq* %0, %struct.qdio_initialize* %1) #0 {
  %3 = alloca %struct.qdio_irq*, align 8
  %4 = alloca %struct.qdio_initialize*, align 8
  %5 = alloca i32, align 4
  store %struct.qdio_irq* %0, %struct.qdio_irq** %3, align 8
  store %struct.qdio_initialize* %1, %struct.qdio_initialize** %4, align 8
  %6 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %7 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %10 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 7
  store i32 %8, i32* %12, align 8
  %13 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %14 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %17 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  store i32 %15, i32* %19, align 4
  %20 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %21 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %24 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %28 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %31 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %35 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  %38 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %39 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32 1, i32* %41, align 4
  %42 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %43 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %42, i32 0, i32 3
  %44 = ptrtoint i32* %43 to i64
  %45 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %46 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  store i64 %44, i64* %48, align 8
  %49 = load i32, i32* @PAGE_DEFAULT_KEY, align 4
  %50 = ashr i32 %49, 4
  %51 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %52 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  store i32 %50, i32* %54, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %68, %2
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %58 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %63 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %64 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @__qdio_allocate_fill_qdr(%struct.qdio_irq* %62, i32 %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %55

71:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %88, %71
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %75 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %80 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %81 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.qdio_initialize*, %struct.qdio_initialize** %4, align 8
  %85 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @__qdio_allocate_fill_qdr(%struct.qdio_irq* %79, i32 %82, i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %72

91:                                               ; preds = %72
  ret void
}

declare dso_local i32 @__qdio_allocate_fill_qdr(%struct.qdio_irq*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
