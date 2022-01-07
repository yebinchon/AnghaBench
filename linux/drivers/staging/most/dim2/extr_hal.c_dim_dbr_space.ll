; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim_dbr_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim_dbr_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.async_tx_dbr }
%struct.async_tx_dbr = type { i64, i32, i64, i64, i64* }
%struct.dim_channel = type { i64 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CDT0_RPC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dim_dbr_space(%struct.dim_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dim_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.async_tx_dbr*, align 8
  store %struct.dim_channel* %0, %struct.dim_channel** %3, align 8
  store %struct.async_tx_dbr* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), %struct.async_tx_dbr** %5, align 8
  %6 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %7 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.async_tx_dbr*, %struct.async_tx_dbr** %5, align 8
  %10 = getelementptr inbounds %struct.async_tx_dbr, %struct.async_tx_dbr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 65535, i32* %2, align 4
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.dim_channel*, %struct.dim_channel** %3, align 8
  %16 = getelementptr inbounds %struct.dim_channel, %struct.dim_channel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @dim2_rpc(i64 %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %27, %14
  %20 = load %struct.async_tx_dbr*, %struct.async_tx_dbr** %5, align 8
  %21 = getelementptr inbounds %struct.async_tx_dbr, %struct.async_tx_dbr* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @norm_pc(i64 %22)
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %19
  %28 = load %struct.async_tx_dbr*, %struct.async_tx_dbr** %5, align 8
  %29 = getelementptr inbounds %struct.async_tx_dbr, %struct.async_tx_dbr* %28, i32 0, i32 4
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.async_tx_dbr*, %struct.async_tx_dbr** %5, align 8
  %32 = getelementptr inbounds %struct.async_tx_dbr, %struct.async_tx_dbr* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @norm_pc(i64 %33)
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.async_tx_dbr*, %struct.async_tx_dbr** %5, align 8
  %38 = getelementptr inbounds %struct.async_tx_dbr, %struct.async_tx_dbr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = load %struct.async_tx_dbr*, %struct.async_tx_dbr** %5, align 8
  %44 = getelementptr inbounds %struct.async_tx_dbr, %struct.async_tx_dbr* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  br label %19

47:                                               ; preds = %19
  %48 = load %struct.async_tx_dbr*, %struct.async_tx_dbr** %5, align 8
  %49 = getelementptr inbounds %struct.async_tx_dbr, %struct.async_tx_dbr* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.async_tx_dbr*, %struct.async_tx_dbr** %5, align 8
  %52 = getelementptr inbounds %struct.async_tx_dbr, %struct.async_tx_dbr* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @CDT0_RPC_MASK, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %63

59:                                               ; preds = %47
  %60 = load %struct.async_tx_dbr*, %struct.async_tx_dbr** %5, align 8
  %61 = getelementptr inbounds %struct.async_tx_dbr, %struct.async_tx_dbr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %58, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @dim2_rpc(i64) #1

declare dso_local i64 @norm_pc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
