; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen3.c_intel_ntb3_peer_db_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen3.c_intel_ntb3_peer_db_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.intel_ntb_dev = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i32)* @intel_ntb3_peer_db_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb3_peer_db_set(%struct.ntb_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_ntb_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.ntb_dev* %0, %struct.ntb_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ntb_dev*, %struct.ntb_dev** %4, align 8
  %9 = call %struct.intel_ntb_dev* @ntb_ndev(%struct.ntb_dev* %8)
  store %struct.intel_ntb_dev* %9, %struct.intel_ntb_dev** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %12 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %24, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @__ffs(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %28 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %6, align 8
  %31 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %29, %34
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i32 @iowrite32(i32 1, i64 %39)
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %21

45:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.intel_ntb_dev* @ntb_ndev(%struct.ntb_dev*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
