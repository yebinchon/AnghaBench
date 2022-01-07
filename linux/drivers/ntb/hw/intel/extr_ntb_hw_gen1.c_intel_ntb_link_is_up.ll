; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_link_is_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_intel_ntb_link_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.intel_ntb_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.intel_ntb_dev*)* }

@NTB_SPEED_NONE = common dso_local global i32 0, align 4
@NTB_WIDTH_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ntb_link_is_up(%struct.ntb_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.intel_ntb_dev*, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ntb_dev*, %struct.ntb_dev** %5, align 8
  %10 = call %struct.intel_ntb_dev* @ntb_ndev(%struct.ntb_dev* %9)
  store %struct.intel_ntb_dev* %10, %struct.intel_ntb_dev** %8, align 8
  %11 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %8, align 8
  %12 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64 (%struct.intel_ntb_dev*)*, i64 (%struct.intel_ntb_dev*)** %14, align 8
  %16 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %8, align 8
  %17 = call i64 %15(%struct.intel_ntb_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %8, align 8
  %24 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @NTB_LNK_STA_SPEED(i32 %25)
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %8, align 8
  %33 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @NTB_LNK_STA_WIDTH(i32 %34)
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %28
  store i32 1, i32* %4, align 4
  br label %51

38:                                               ; preds = %3
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @NTB_SPEED_NONE, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @NTB_WIDTH_NONE, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.intel_ntb_dev* @ntb_ndev(%struct.ntb_dev*) #1

declare dso_local i32 @NTB_LNK_STA_SPEED(i32) #1

declare dso_local i32 @NTB_LNK_STA_WIDTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
