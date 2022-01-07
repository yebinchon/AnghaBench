; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_write_gpio_tx_gp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_write_gpio_tx_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*, i64, i64, i64*)* @sci_write_gpio_tx_gp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_write_gpio_tx_gp(%struct.isci_host* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.isci_host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %76

19:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %69, %19
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.isci_host*, %struct.isci_host** %6, align 8
  %23 = call i32 @isci_gpio_count(%struct.isci_host* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %20
  store i32 1092, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @to_sas_gpio_od(i32 %30, i32 %31)
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @try_test_sas_gpio_gp_bit(i32 %32, i64* %33, i64 %34, i64 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %52

40:                                               ; preds = %29
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = shl i32 %42, 2
  %44 = add nsw i32 %43, 2
  %45 = shl i32 %41, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %11, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %26

52:                                               ; preds = %39, %26
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %72

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.isci_host*, %struct.isci_host** %6, align 8
  %59 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @writel(i32 %57, i32* %67)
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %20

72:                                               ; preds = %55, %20
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %16
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @isci_gpio_count(%struct.isci_host*) #1

declare dso_local i32 @try_test_sas_gpio_gp_bit(i32, i64*, i64, i64) #1

declare dso_local i32 @to_sas_gpio_od(i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
