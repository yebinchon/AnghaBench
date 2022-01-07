; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_mask_all_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_mask_all_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.switchtec_dev = type { i32, i32, i32* }

@event_regs = common dso_local global %struct.TYPE_2__* null, align 8
@part_ev_reg = common dso_local global i64 0, align 8
@pff_ev_reg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switchtec_dev*, i32)* @mask_all_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mask_all_events(%struct.switchtec_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.switchtec_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.switchtec_dev* %0, %struct.switchtec_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @event_regs, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @part_ev_reg, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %19 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @mask_event(%struct.switchtec_dev* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %16

34:                                               ; preds = %16
  br label %83

35:                                               ; preds = %2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @event_regs, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @pff_ev_reg, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %70, %44
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %48 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %53 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %70

61:                                               ; preds = %51
  %62 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @mask_event(%struct.switchtec_dev* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %61, %60
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %45

73:                                               ; preds = %45
  br label %82

74:                                               ; preds = %35
  %75 = load %struct.switchtec_dev*, %struct.switchtec_dev** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i64 @mask_event(%struct.switchtec_dev* %75, i32 %76, i32 0)
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %74, %73
  br label %83

83:                                               ; preds = %82, %34
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i64 @mask_event(%struct.switchtec_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
