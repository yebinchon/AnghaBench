; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_route_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_route_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }

@SEM_RT_IDX_MASK = common dso_local global i32 0, align 4
@RT_IDX_IP_CSUM_ERR_SLOT = common dso_local global i32 0, align 4
@RT_IDX_IP_CSUM_ERR = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Failed to init routing register for IP CSUM error packets.\0A\00", align 1
@RT_IDX_TCP_UDP_CSUM_ERR_SLOT = common dso_local global i32 0, align 4
@RT_IDX_TU_CSUM_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Failed to init routing register for TCP/UDP CSUM error packets.\0A\00", align 1
@RT_IDX_BCAST_SLOT = common dso_local global i32 0, align 4
@RT_IDX_BCAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Failed to init routing register for broadcast packets.\0A\00", align 1
@RT_IDX_RSS_MATCH_SLOT = common dso_local global i32 0, align 4
@RT_IDX_RSS_MATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Failed to init routing register for MATCH RSS packets.\0A\00", align 1
@RT_IDX_CAM_HIT_SLOT = common dso_local global i32 0, align 4
@RT_IDX_CAM_HIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Failed to init routing register for CAM packets.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_route_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_route_initialize(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %6 = call i32 @ql_clear_routing_entries(%struct.ql_adapter* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %101

11:                                               ; preds = %1
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %13 = load i32, i32* @SEM_RT_IDX_MASK, align 4
  %14 = call i32 @ql_sem_spinlock(%struct.ql_adapter* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %101

19:                                               ; preds = %11
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %21 = load i32, i32* @RT_IDX_IP_CSUM_ERR_SLOT, align 4
  %22 = load i32, i32* @RT_IDX_IP_CSUM_ERR, align 4
  %23 = call i32 @ql_set_routing_reg(%struct.ql_adapter* %20, i32 %21, i32 %22, i32 1)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %28 = load i32, i32* @ifup, align 4
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netif_err(%struct.ql_adapter* %27, i32 %28, i32 %31, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %96

33:                                               ; preds = %19
  %34 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %35 = load i32, i32* @RT_IDX_TCP_UDP_CSUM_ERR_SLOT, align 4
  %36 = load i32, i32* @RT_IDX_TU_CSUM_ERR, align 4
  %37 = call i32 @ql_set_routing_reg(%struct.ql_adapter* %34, i32 %35, i32 %36, i32 1)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %42 = load i32, i32* @ifup, align 4
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netif_err(%struct.ql_adapter* %41, i32 %42, i32 %45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %96

47:                                               ; preds = %33
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %49 = load i32, i32* @RT_IDX_BCAST_SLOT, align 4
  %50 = load i32, i32* @RT_IDX_BCAST, align 4
  %51 = call i32 @ql_set_routing_reg(%struct.ql_adapter* %48, i32 %49, i32 %50, i32 1)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %56 = load i32, i32* @ifup, align 4
  %57 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @netif_err(%struct.ql_adapter* %55, i32 %56, i32 %59, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %96

61:                                               ; preds = %47
  %62 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %68 = load i32, i32* @RT_IDX_RSS_MATCH_SLOT, align 4
  %69 = load i32, i32* @RT_IDX_RSS_MATCH, align 4
  %70 = call i32 @ql_set_routing_reg(%struct.ql_adapter* %67, i32 %68, i32 %69, i32 1)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %75 = load i32, i32* @ifup, align 4
  %76 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @netif_err(%struct.ql_adapter* %74, i32 %75, i32 %78, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %96

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %83 = load i32, i32* @RT_IDX_CAM_HIT_SLOT, align 4
  %84 = load i32, i32* @RT_IDX_CAM_HIT, align 4
  %85 = call i32 @ql_set_routing_reg(%struct.ql_adapter* %82, i32 %83, i32 %84, i32 1)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %90 = load i32, i32* @ifup, align 4
  %91 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @netif_err(%struct.ql_adapter* %89, i32 %90, i32 %93, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %88, %81
  br label %96

96:                                               ; preds = %95, %73, %54, %40, %26
  %97 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %98 = load i32, i32* @SEM_RT_IDX_MASK, align 4
  %99 = call i32 @ql_sem_unlock(%struct.ql_adapter* %97, i32 %98)
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %96, %17, %9
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @ql_clear_routing_entries(%struct.ql_adapter*) #1

declare dso_local i32 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_set_routing_reg(%struct.ql_adapter*, i32, i32, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
