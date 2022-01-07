; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_sbc.c_sbc_compare_and_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_sbc.c_sbc_compare_and_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32*, i32, i32, %struct.se_device*, %struct.sbc_ops* }
%struct.se_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sbc_ops = type { i64 (%struct.se_cmd*, i32, i32, i32)* }

@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TCM_NO_SENSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.se_cmd*)* @sbc_compare_and_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sbc_compare_and_write(%struct.se_cmd* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.sbc_ops*, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 6
  %10 = load %struct.sbc_ops*, %struct.sbc_ops** %9, align 8
  store %struct.sbc_ops* %10, %struct.sbc_ops** %4, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 5
  %13 = load %struct.se_device*, %struct.se_device** %12, align 8
  store %struct.se_device* %13, %struct.se_device** %5, align 8
  %14 = load %struct.se_device*, %struct.se_device** %5, align 8
  %15 = getelementptr inbounds %struct.se_device, %struct.se_device* %14, i32 0, i32 0
  %16 = call i32 @down_interruptible(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load i64, i64* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 8
  store i64 %22, i64* %2, align 8
  br label %57

23:                                               ; preds = %1
  %24 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.se_device*, %struct.se_device** %5, align 8
  %28 = getelementptr inbounds %struct.se_device, %struct.se_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %26, %30
  %32 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sbc_ops*, %struct.sbc_ops** %4, align 8
  %35 = getelementptr inbounds %struct.sbc_ops, %struct.sbc_ops* %34, i32 0, i32 0
  %36 = load i64 (%struct.se_cmd*, i32, i32, i32)*, i64 (%struct.se_cmd*, i32, i32, i32)** %35, align 8
  %37 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %38 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = call i64 %36(%struct.se_cmd* %37, i32 %40, i32 %43, i32 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %23
  %49 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.se_device*, %struct.se_device** %5, align 8
  %52 = getelementptr inbounds %struct.se_device, %struct.se_device* %51, i32 0, i32 0
  %53 = call i32 @up(i32* %52)
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %2, align 8
  br label %57

55:                                               ; preds = %23
  %56 = load i64, i64* @TCM_NO_SENSE, align 8
  store i64 %56, i64* %2, align 8
  br label %57

57:                                               ; preds = %55, %48, %19
  %58 = load i64, i64* %2, align 8
  ret i64 %58
}

declare dso_local i32 @down_interruptible(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
