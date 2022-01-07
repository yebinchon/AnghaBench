; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_sem_trylock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_sem_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@SEM_SET = common dso_local global i32 0, align 4
@SEM_XGMAC0_SHIFT = common dso_local global i32 0, align 4
@SEM_XGMAC1_SHIFT = common dso_local global i32 0, align 4
@SEM_ICB_SHIFT = common dso_local global i32 0, align 4
@SEM_MAC_ADDR_SHIFT = common dso_local global i32 0, align 4
@SEM_FLASH_SHIFT = common dso_local global i32 0, align 4
@SEM_PROBE_SHIFT = common dso_local global i32 0, align 4
@SEM_RT_IDX_SHIFT = common dso_local global i32 0, align 4
@SEM_PROC_REG_SHIFT = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bad Semaphore mask!.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32)* @ql_sem_trylock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_sem_trylock(%struct.ql_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %40 [
    i32 129, label %8
    i32 128, label %12
    i32 134, label %16
    i32 133, label %20
    i32 135, label %24
    i32 132, label %28
    i32 130, label %32
    i32 131, label %36
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @SEM_SET, align 4
  %10 = load i32, i32* @SEM_XGMAC0_SHIFT, align 4
  %11 = shl i32 %9, %10
  store i32 %11, i32* %6, align 4
  br label %49

12:                                               ; preds = %2
  %13 = load i32, i32* @SEM_SET, align 4
  %14 = load i32, i32* @SEM_XGMAC1_SHIFT, align 4
  %15 = shl i32 %13, %14
  store i32 %15, i32* %6, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load i32, i32* @SEM_SET, align 4
  %18 = load i32, i32* @SEM_ICB_SHIFT, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %6, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load i32, i32* @SEM_SET, align 4
  %22 = load i32, i32* @SEM_MAC_ADDR_SHIFT, align 4
  %23 = shl i32 %21, %22
  store i32 %23, i32* %6, align 4
  br label %49

24:                                               ; preds = %2
  %25 = load i32, i32* @SEM_SET, align 4
  %26 = load i32, i32* @SEM_FLASH_SHIFT, align 4
  %27 = shl i32 %25, %26
  store i32 %27, i32* %6, align 4
  br label %49

28:                                               ; preds = %2
  %29 = load i32, i32* @SEM_SET, align 4
  %30 = load i32, i32* @SEM_PROBE_SHIFT, align 4
  %31 = shl i32 %29, %30
  store i32 %31, i32* %6, align 4
  br label %49

32:                                               ; preds = %2
  %33 = load i32, i32* @SEM_SET, align 4
  %34 = load i32, i32* @SEM_RT_IDX_SHIFT, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %6, align 4
  br label %49

36:                                               ; preds = %2
  %37 = load i32, i32* @SEM_SET, align 4
  %38 = load i32, i32* @SEM_PROC_REG_SHIFT, align 4
  %39 = shl i32 %37, %38
  store i32 %39, i32* %6, align 4
  br label %49

40:                                               ; preds = %2
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %42 = load i32, i32* @probe, align 4
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netif_alert(%struct.ql_adapter* %41, i32 %42, i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %64

49:                                               ; preds = %36, %32, %28, %24, %20, %16, %12, %8
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %51 = load i32, i32* @SEM, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @ql_write32(%struct.ql_adapter* %50, i32 %51, i32 %54)
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %57 = load i32, i32* @SEM, align 4
  %58 = call i32 @ql_read32(%struct.ql_adapter* %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %49, %40
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @netif_alert(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
