; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_pad_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_pad_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i64, i64 }
%struct.tegra_xusb_pad = type { %struct.phy**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @tegra_xusb_pad_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @tegra_xusb_pad_of_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.tegra_xusb_pad*, align 8
  %7 = alloca %struct.phy*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.tegra_xusb_pad* @dev_get_drvdata(%struct.device* %9)
  store %struct.tegra_xusb_pad* %10, %struct.tegra_xusb_pad** %6, align 8
  store %struct.phy* null, %struct.phy** %7, align 8
  %11 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %12 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.phy* @ERR_PTR(i32 %17)
  store %struct.phy* %18, %struct.phy** %3, align 8
  br label %74

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %62, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %6, align 8
  %23 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %21, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %20
  %29 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %6, align 8
  %30 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %29, i32 0, i32 0
  %31 = load %struct.phy**, %struct.phy*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.phy*, %struct.phy** %31, i64 %33
  %35 = load %struct.phy*, %struct.phy** %34, align 8
  %36 = icmp ne %struct.phy* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %62

38:                                               ; preds = %28
  %39 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %6, align 8
  %40 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %39, i32 0, i32 0
  %41 = load %struct.phy**, %struct.phy*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.phy*, %struct.phy** %41, i64 %43
  %45 = load %struct.phy*, %struct.phy** %44, align 8
  %46 = getelementptr inbounds %struct.phy, %struct.phy* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %50 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %38
  %54 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %6, align 8
  %55 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %54, i32 0, i32 0
  %56 = load %struct.phy**, %struct.phy*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.phy*, %struct.phy** %56, i64 %58
  %60 = load %struct.phy*, %struct.phy** %59, align 8
  store %struct.phy* %60, %struct.phy** %7, align 8
  br label %65

61:                                               ; preds = %38
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %20

65:                                               ; preds = %53, %20
  %66 = load %struct.phy*, %struct.phy** %7, align 8
  %67 = icmp eq %struct.phy* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  %71 = call %struct.phy* @ERR_PTR(i32 %70)
  store %struct.phy* %71, %struct.phy** %7, align 8
  br label %72

72:                                               ; preds = %68, %65
  %73 = load %struct.phy*, %struct.phy** %7, align 8
  store %struct.phy* %73, %struct.phy** %3, align 8
  br label %74

74:                                               ; preds = %72, %15
  %75 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %75
}

declare dso_local %struct.tegra_xusb_pad* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
