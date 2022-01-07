; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_round_robin_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_round_robin_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns_head = type { i32*, i32 }
%struct.nvme_ns = type { i64 }

@NVME_ANA_OPTIMIZED = common dso_local global i64 0, align 8
@NVME_ANA_NONOPTIMIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvme_ns* (%struct.nvme_ns_head*, i32, %struct.nvme_ns*)* @nvme_round_robin_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvme_ns* @nvme_round_robin_path(%struct.nvme_ns_head* %0, i32 %1, %struct.nvme_ns* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.nvme_ns_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_ns*, align 8
  %8 = alloca %struct.nvme_ns*, align 8
  %9 = alloca %struct.nvme_ns*, align 8
  %10 = alloca %struct.nvme_ns*, align 8
  store %struct.nvme_ns_head* %0, %struct.nvme_ns_head** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvme_ns* %2, %struct.nvme_ns** %7, align 8
  store %struct.nvme_ns* null, %struct.nvme_ns** %10, align 8
  %11 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %12 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %11, i32 0, i32 1
  %13 = call i64 @list_is_singular(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.nvme_ns*, %struct.nvme_ns** %7, align 8
  %17 = call i64 @nvme_path_is_disabled(%struct.nvme_ns* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store %struct.nvme_ns* null, %struct.nvme_ns** %4, align 8
  br label %73

20:                                               ; preds = %15
  %21 = load %struct.nvme_ns*, %struct.nvme_ns** %7, align 8
  store %struct.nvme_ns* %21, %struct.nvme_ns** %4, align 8
  br label %73

22:                                               ; preds = %3
  %23 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %24 = load %struct.nvme_ns*, %struct.nvme_ns** %7, align 8
  %25 = call %struct.nvme_ns* @nvme_next_ns(%struct.nvme_ns_head* %23, %struct.nvme_ns* %24)
  store %struct.nvme_ns* %25, %struct.nvme_ns** %8, align 8
  br label %26

26:                                               ; preds = %52, %22
  %27 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %28 = load %struct.nvme_ns*, %struct.nvme_ns** %7, align 8
  %29 = icmp ne %struct.nvme_ns* %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %32 = call i64 @nvme_path_is_disabled(%struct.nvme_ns* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %52

35:                                               ; preds = %30
  %36 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %37 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NVME_ANA_OPTIMIZED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  store %struct.nvme_ns* %42, %struct.nvme_ns** %9, align 8
  br label %62

43:                                               ; preds = %35
  %44 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %45 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NVME_ANA_NONOPTIMIZED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  store %struct.nvme_ns* %50, %struct.nvme_ns** %10, align 8
  br label %51

51:                                               ; preds = %49, %43
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %54 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %55 = call %struct.nvme_ns* @nvme_next_ns(%struct.nvme_ns_head* %53, %struct.nvme_ns* %54)
  store %struct.nvme_ns* %55, %struct.nvme_ns** %8, align 8
  br label %26

56:                                               ; preds = %26
  %57 = load %struct.nvme_ns*, %struct.nvme_ns** %10, align 8
  %58 = icmp ne %struct.nvme_ns* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store %struct.nvme_ns* null, %struct.nvme_ns** %4, align 8
  br label %73

60:                                               ; preds = %56
  %61 = load %struct.nvme_ns*, %struct.nvme_ns** %10, align 8
  store %struct.nvme_ns* %61, %struct.nvme_ns** %9, align 8
  br label %62

62:                                               ; preds = %60, %41
  %63 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %5, align 8
  %64 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nvme_ns*, %struct.nvme_ns** %9, align 8
  %71 = call i32 @rcu_assign_pointer(i32 %69, %struct.nvme_ns* %70)
  %72 = load %struct.nvme_ns*, %struct.nvme_ns** %9, align 8
  store %struct.nvme_ns* %72, %struct.nvme_ns** %4, align 8
  br label %73

73:                                               ; preds = %62, %59, %20, %19
  %74 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  ret %struct.nvme_ns* %74
}

declare dso_local i64 @list_is_singular(i32*) #1

declare dso_local i64 @nvme_path_is_disabled(%struct.nvme_ns*) #1

declare dso_local %struct.nvme_ns* @nvme_next_ns(%struct.nvme_ns_head*, %struct.nvme_ns*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nvme_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
