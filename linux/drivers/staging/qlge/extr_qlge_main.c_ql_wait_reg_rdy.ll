; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_wait_reg_rdy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_wait_reg_rdy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@UDELAY_COUNT = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"register 0x%.08x access error, value = 0x%.08x!.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@UDELAY_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Timed out waiting for reg %x to come ready.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_wait_reg_rdy(%struct.ql_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @UDELAY_COUNT, align 4
  store i32 %12, i32* %11, align 4
  br label %13

13:                                               ; preds = %42, %4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ql_read32(%struct.ql_adapter* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %26 = load i32, i32* @probe, align 4
  %27 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (%struct.ql_adapter*, i32, i32, i8*, i32, ...) @netif_alert(%struct.ql_adapter* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %57

35:                                               ; preds = %16
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %57

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* @UDELAY_DELAY, align 4
  %44 = call i32 @udelay(i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %11, align 4
  br label %13

47:                                               ; preds = %13
  %48 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %49 = load i32, i32* @probe, align 4
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %51 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (%struct.ql_adapter*, i32, i32, i8*, i32, ...) @netif_alert(%struct.ql_adapter* %48, i32 %49, i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %47, %40, %24
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @netif_alert(%struct.ql_adapter*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
