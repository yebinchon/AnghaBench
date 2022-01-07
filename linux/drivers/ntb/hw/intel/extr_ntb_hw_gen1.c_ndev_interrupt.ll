; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_ndev_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_ndev_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 (%struct.intel_ntb_dev*)* }

@NTB_HWERR_MSIX_VECTOR32_BAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"vec %d vec_mask %llx\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ntb_dev*, i32)* @ndev_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndev_interrupt(%struct.intel_ntb_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_ntb_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ndev_vec_mask(%struct.intel_ntb_dev* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %10 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NTB_HWERR_MSIX_VECTOR32_BAD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 31
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %20 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %15, %2
  %25 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %26 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @jiffies, align 4
  %34 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %35 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %38 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %24
  %43 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %44 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %43, i32 0, i32 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64 (%struct.intel_ntb_dev*)*, i64 (%struct.intel_ntb_dev*)** %46, align 8
  %48 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %49 = call i64 %47(%struct.intel_ntb_dev* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %53 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %52, i32 0, i32 3
  %54 = call i32 @ntb_link_event(%struct.TYPE_7__* %53)
  br label %55

55:                                               ; preds = %51, %42
  br label %56

56:                                               ; preds = %55, %24
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %59 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %65 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %64, i32 0, i32 3
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @ntb_db_event(%struct.TYPE_7__* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %56
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %69
}

declare dso_local i32 @ndev_vec_mask(%struct.intel_ntb_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @ntb_link_event(%struct.TYPE_7__*) #1

declare dso_local i32 @ntb_db_event(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
