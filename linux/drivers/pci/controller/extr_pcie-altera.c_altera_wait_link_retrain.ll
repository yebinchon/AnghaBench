; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_altera_wait_link_retrain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_altera_wait_link_retrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_pcie = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.altera_pcie*)* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@RP_DEVFN = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4
@PCI_EXP_LNKSTA_LT = common dso_local global i32 0, align 4
@LINK_RETRAIN_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"link retrain timeout\0A\00", align 1
@LINK_UP_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"link up timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_pcie*)* @altera_wait_link_retrain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_wait_link_retrain(%struct.altera_pcie* %0) #0 {
  %2 = alloca %struct.altera_pcie*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.altera_pcie* %0, %struct.altera_pcie** %2, align 8
  %6 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %34, %1
  %12 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %13 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %14 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RP_DEVFN, align 4
  %17 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %18 = call i32 @altera_read_cap_word(%struct.altera_pcie* %12, i32 %15, i32 %16, i32 %17, i32* %4)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PCI_EXP_LNKSTA_LT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  br label %36

24:                                               ; preds = %11
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @LINK_RETRAIN_TIMEOUT, align 8
  %28 = add i64 %26, %27
  %29 = call i64 @time_after(i64 %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %36

34:                                               ; preds = %24
  %35 = call i32 @udelay(i32 100)
  br label %11

36:                                               ; preds = %31, %23
  %37 = load i64, i64* @jiffies, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %60, %36
  %39 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %40 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64 (%struct.altera_pcie*)*, i64 (%struct.altera_pcie*)** %44, align 8
  %46 = load %struct.altera_pcie*, %struct.altera_pcie** %2, align 8
  %47 = call i64 %45(%struct.altera_pcie* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %62

50:                                               ; preds = %38
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @LINK_UP_TIMEOUT, align 8
  %54 = add i64 %52, %53
  %55 = call i64 @time_after(i64 %51, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %62

60:                                               ; preds = %50
  %61 = call i32 @udelay(i32 100)
  br label %38

62:                                               ; preds = %57, %49
  ret void
}

declare dso_local i32 @altera_read_cap_word(%struct.altera_pcie*, i32, i32, i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
