; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_service_select_by_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_service_select_by_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_io = type { i32 }

@DPAA2_IO_ANY_CPU = common dso_local global i32 0, align 4
@dpio_by_cpu = common dso_local global %struct.dpaa2_io** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dpaa2_io* (%struct.dpaa2_io*, i32)* @service_select_by_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dpaa2_io* @service_select_by_cpu(%struct.dpaa2_io* %0, i32 %1) #0 {
  %3 = alloca %struct.dpaa2_io*, align 8
  %4 = alloca %struct.dpaa2_io*, align 8
  %5 = alloca i32, align 4
  store %struct.dpaa2_io* %0, %struct.dpaa2_io** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.dpaa2_io*, %struct.dpaa2_io** %4, align 8
  %7 = icmp ne %struct.dpaa2_io* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load %struct.dpaa2_io*, %struct.dpaa2_io** %4, align 8
  store %struct.dpaa2_io* %9, %struct.dpaa2_io** %3, align 8
  br label %33

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @DPAA2_IO_ANY_CPU, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (...) @num_possible_cpus()
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.dpaa2_io* null, %struct.dpaa2_io** %3, align 8
  br label %33

19:                                               ; preds = %14, %10
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (...) @smp_processor_id()
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = load %struct.dpaa2_io**, %struct.dpaa2_io*** @dpio_by_cpu, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dpaa2_io*, %struct.dpaa2_io** %28, i64 %30
  %32 = load %struct.dpaa2_io*, %struct.dpaa2_io** %31, align 8
  store %struct.dpaa2_io* %32, %struct.dpaa2_io** %3, align 8
  br label %33

33:                                               ; preds = %27, %18, %8
  %34 = load %struct.dpaa2_io*, %struct.dpaa2_io** %3, align 8
  ret %struct.dpaa2_io* %34
}

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
