; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_get_routing_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_get_routing_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@SEM_RT_IDX_MASK = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed read of routing index register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32*)* @ql_get_routing_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_routing_entries(%struct.ql_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %10 = load i32, i32* @SEM_RT_IDX_MASK, align 4
  %11 = call i32 @ql_sem_spinlock(%struct.ql_adapter* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ql_get_routing_reg(%struct.ql_adapter* %21, i32 %22, i32* %7)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %28 = load i32, i32* @drv, align 4
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netif_err(%struct.ql_adapter* %27, i32 %28, i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %42

33:                                               ; preds = %20
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %37

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %17

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %44 = load i32, i32* @SEM_RT_IDX_MASK, align 4
  %45 = call i32 @ql_sem_unlock(%struct.ql_adapter* %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_get_routing_reg(%struct.ql_adapter*, i32, i32*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
