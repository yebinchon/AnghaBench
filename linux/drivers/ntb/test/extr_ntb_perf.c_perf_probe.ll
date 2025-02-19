; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_client = type { i32 }
%struct.ntb_dev = type { i32 }
%struct.perf_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_client*, %struct.ntb_dev*)* @perf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_probe(%struct.ntb_client* %0, %struct.ntb_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_client*, align 8
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca %struct.perf_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.ntb_client* %0, %struct.ntb_client** %4, align 8
  store %struct.ntb_dev* %1, %struct.ntb_dev** %5, align 8
  %8 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %9 = call %struct.perf_ctx* @perf_create_data(%struct.ntb_dev* %8)
  store %struct.perf_ctx* %9, %struct.perf_ctx** %6, align 8
  %10 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %11 = call i64 @IS_ERR(%struct.perf_ctx* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.perf_ctx* %14)
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %18 = call i32 @perf_init_peers(%struct.perf_ctx* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %42

23:                                               ; preds = %16
  %24 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %25 = call i32 @perf_init_threads(%struct.perf_ctx* %24)
  %26 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %27 = call i32 @perf_init_service(%struct.perf_ctx* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %23
  %33 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %34 = call i32 @perf_enable_service(%struct.perf_ctx* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %32
  %40 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  %41 = call i32 @perf_setup_dbgfs(%struct.perf_ctx* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %37, %30, %21, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.perf_ctx* @perf_create_data(%struct.ntb_dev*) #1

declare dso_local i64 @IS_ERR(%struct.perf_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_ctx*) #1

declare dso_local i32 @perf_init_peers(%struct.perf_ctx*) #1

declare dso_local i32 @perf_init_threads(%struct.perf_ctx*) #1

declare dso_local i32 @perf_init_service(%struct.perf_ctx*) #1

declare dso_local i32 @perf_enable_service(%struct.perf_ctx*) #1

declare dso_local i32 @perf_setup_dbgfs(%struct.perf_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
