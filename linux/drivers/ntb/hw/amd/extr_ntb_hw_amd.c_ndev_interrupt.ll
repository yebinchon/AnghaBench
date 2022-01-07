; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_ndev_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_ndev_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"vec %d\0A\00", align 1
@AMD_DB_CNT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_ntb_dev*, i32)* @ndev_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndev_interrupt(%struct.amd_ntb_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.amd_ntb_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.amd_ntb_dev* %0, %struct.amd_ntb_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %6 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AMD_DB_CNT, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %18 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %2
  %22 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @amd_handle_event(%struct.amd_ntb_dev* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @AMD_DB_CNT, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %31 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @ntb_db_event(%struct.TYPE_4__* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %35
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @amd_handle_event(%struct.amd_ntb_dev*, i32) #1

declare dso_local i32 @ntb_db_event(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
