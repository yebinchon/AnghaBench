; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_if_proc_phyid_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_if_proc_phyid_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.isst_if_cpu_map = type { i64, i32 }

@nr_cpu_ids = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@isst_cpu_info = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32)* @isst_if_proc_phyid_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isst_if_proc_phyid_req(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isst_if_cpu_map*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.isst_if_cpu_map*
  store %struct.isst_if_cpu_map* %10, %struct.isst_if_cpu_map** %8, align 8
  %11 = load %struct.isst_if_cpu_map*, %struct.isst_if_cpu_map** %8, align 8
  %12 = getelementptr inbounds %struct.isst_if_cpu_map, %struct.isst_if_cpu_map* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @nr_cpu_ids, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.isst_if_cpu_map*, %struct.isst_if_cpu_map** %8, align 8
  %18 = getelementptr inbounds %struct.isst_if_cpu_map, %struct.isst_if_cpu_map* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 (...) @num_possible_cpus()
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %3
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %36

25:                                               ; preds = %16
  %26 = load i32*, i32** %6, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @isst_cpu_info, align 8
  %28 = load %struct.isst_if_cpu_map*, %struct.isst_if_cpu_map** %8, align 8
  %29 = getelementptr inbounds %struct.isst_if_cpu_map, %struct.isst_if_cpu_map* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.isst_if_cpu_map*, %struct.isst_if_cpu_map** %8, align 8
  %35 = getelementptr inbounds %struct.isst_if_cpu_map, %struct.isst_if_cpu_map* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  store i64 0, i64* %4, align 8
  br label %36

36:                                               ; preds = %25, %22
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local i64 @num_possible_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
