; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_xeon_poll_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_xeon_poll_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i64, %struct.TYPE_6__, %struct.TYPE_5__*, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 (i32, i64)* }

@XEON_LINK_STATUS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ntb_dev*)* @xeon_poll_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xeon_poll_link(%struct.intel_ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ntb_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %3, align 8
  %6 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %7 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32 (i32, i64)*, i32 (i32, i64)** %9, align 8
  %11 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %12 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %15 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %18 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %16, %21
  %23 = call i32 %10(i32 %13, i64 %22)
  %24 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %25 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @XEON_LINK_STATUS_OFFSET, align 4
  %29 = call i32 @pci_read_config_word(i32 %27, i32 %28, i64* %4)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

33:                                               ; preds = %1
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %36 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %44

40:                                               ; preds = %33
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %43 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %39, %32
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @pci_read_config_word(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
