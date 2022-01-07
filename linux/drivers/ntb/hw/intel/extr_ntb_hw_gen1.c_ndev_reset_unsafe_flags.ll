; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_ndev_reset_unsafe_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_ndev_reset_unsafe_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@NTB_HWERR_SDOORBELL_LOCKUP = common dso_local global i32 0, align 4
@NTB_UNSAFE_DB = common dso_local global i32 0, align 4
@NTB_HWERR_SB01BASE_LOCKUP = common dso_local global i32 0, align 4
@NTB_UNSAFE_SPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_ntb_dev*)* @ndev_reset_unsafe_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndev_reset_unsafe_flags(%struct.intel_ntb_dev* %0) #0 {
  %2 = alloca %struct.intel_ntb_dev*, align 8
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %2, align 8
  %3 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %4 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %6 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %8 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @NTB_HWERR_SDOORBELL_LOCKUP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %15 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ntb_topo_is_b2b(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @NTB_UNSAFE_DB, align 4
  %22 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %23 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %13
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %29 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NTB_HWERR_SB01BASE_LOCKUP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load i32, i32* @NTB_UNSAFE_DB, align 4
  %36 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %37 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @NTB_UNSAFE_SPAD, align 4
  %41 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %2, align 8
  %42 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %34, %27
  ret void
}

declare dso_local i32 @ntb_topo_is_b2b(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
