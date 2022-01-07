; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_io_pad_get_dpd_register_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_io_pad_get_dpd_register_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pmc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.tegra_io_pad_soc = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"invalid I/O pad ID %u\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pmc*, i32, i64*, i64*, i32*)* @tegra_io_pad_get_dpd_register_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_io_pad_get_dpd_register_bit(%struct.tegra_pmc* %0, i32 %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_pmc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.tegra_io_pad_soc*, align 8
  store %struct.tegra_pmc* %0, %struct.tegra_pmc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.tegra_pmc*, %struct.tegra_pmc** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.tegra_io_pad_soc* @tegra_io_pad_find(%struct.tegra_pmc* %13, i32 %14)
  store %struct.tegra_io_pad_soc* %15, %struct.tegra_io_pad_soc** %12, align 8
  %16 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %12, align 8
  %17 = icmp ne %struct.tegra_io_pad_soc* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %5
  %19 = load %struct.tegra_pmc*, %struct.tegra_pmc** %7, align 8
  %20 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %81

26:                                               ; preds = %5
  %27 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %12, align 8
  %28 = getelementptr inbounds %struct.tegra_io_pad_soc, %struct.tegra_io_pad_soc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UINT_MAX, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %81

35:                                               ; preds = %26
  %36 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %12, align 8
  %37 = getelementptr inbounds %struct.tegra_io_pad_soc, %struct.tegra_io_pad_soc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = srem i32 %38, 32
  %40 = call i32 @BIT(i32 %39)
  %41 = load i32*, i32** %11, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.tegra_io_pad_soc*, %struct.tegra_io_pad_soc** %12, align 8
  %43 = getelementptr inbounds %struct.tegra_io_pad_soc, %struct.tegra_io_pad_soc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 32
  br i1 %45, label %46, label %63

46:                                               ; preds = %35
  %47 = load %struct.tegra_pmc*, %struct.tegra_pmc** %7, align 8
  %48 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %10, align 8
  store i64 %53, i64* %54, align 8
  %55 = load %struct.tegra_pmc*, %struct.tegra_pmc** %7, align 8
  %56 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %9, align 8
  store i64 %61, i64* %62, align 8
  br label %80

63:                                               ; preds = %35
  %64 = load %struct.tegra_pmc*, %struct.tegra_pmc** %7, align 8
  %65 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %10, align 8
  store i64 %70, i64* %71, align 8
  %72 = load %struct.tegra_pmc*, %struct.tegra_pmc** %7, align 8
  %73 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %9, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %63, %46
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %32, %18
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.tegra_io_pad_soc* @tegra_io_pad_find(%struct.tegra_pmc*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
