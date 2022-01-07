; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_aob_for_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_aob_for_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_output_q = type { %struct.TYPE_2__*, %struct.qaob** }
%struct.TYPE_2__ = type { i64, i64 }
%struct.qaob = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qdio_output_q*, i32)* @qdio_aob_for_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qdio_aob_for_buffer(%struct.qdio_output_q* %0, i32 %1) #0 {
  %3 = alloca %struct.qdio_output_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.qaob*, align 8
  store %struct.qdio_output_q* %0, %struct.qdio_output_q** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %8 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %7, i32 0, i32 1
  %9 = load %struct.qaob**, %struct.qaob*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.qaob*, %struct.qaob** %9, i64 %11
  %13 = load %struct.qaob*, %struct.qaob** %12, align 8
  %14 = icmp ne %struct.qaob* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = call %struct.qaob* (...) @qdio_allocate_aob()
  store %struct.qaob* %16, %struct.qaob** %6, align 8
  %17 = load %struct.qaob*, %struct.qaob** %6, align 8
  %18 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %19 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %18, i32 0, i32 1
  %20 = load %struct.qaob**, %struct.qaob*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.qaob*, %struct.qaob** %20, i64 %22
  store %struct.qaob* %17, %struct.qaob** %23, align 8
  br label %24

24:                                               ; preds = %15, %2
  %25 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %26 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %25, i32 0, i32 1
  %27 = load %struct.qaob**, %struct.qaob*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.qaob*, %struct.qaob** %27, i64 %29
  %31 = load %struct.qaob*, %struct.qaob** %30, align 8
  %32 = icmp ne %struct.qaob* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %24
  %34 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %35 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %43 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %42, i32 0, i32 1
  %44 = load %struct.qaob**, %struct.qaob*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.qaob*, %struct.qaob** %44, i64 %46
  %48 = load %struct.qaob*, %struct.qaob** %47, align 8
  %49 = getelementptr inbounds %struct.qaob, %struct.qaob* %48, i32 0, i32 0
  store i64 %41, i64* %49, align 8
  %50 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %51 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %50, i32 0, i32 1
  %52 = load %struct.qaob**, %struct.qaob*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.qaob*, %struct.qaob** %52, i64 %54
  %56 = load %struct.qaob*, %struct.qaob** %55, align 8
  %57 = call i64 @virt_to_phys(%struct.qaob* %56)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = and i64 %58, 255
  %60 = call i32 @WARN_ON_ONCE(i64 %59)
  br label %61

61:                                               ; preds = %33, %24
  %62 = load %struct.qdio_output_q*, %struct.qdio_output_q** %3, align 8
  %63 = getelementptr inbounds %struct.qdio_output_q, %struct.qdio_output_q* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local %struct.qaob* @qdio_allocate_aob(...) #1

declare dso_local i64 @virt_to_phys(%struct.qaob*) #1

declare dso_local i32 @WARN_ON_ONCE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
