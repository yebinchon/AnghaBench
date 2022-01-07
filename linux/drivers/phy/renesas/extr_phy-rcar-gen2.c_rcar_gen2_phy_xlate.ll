; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen2.c_rcar_gen2_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen2.c_rcar_gen2_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32*, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rcar_gen2_phy_driver = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.device_node* }
%struct.TYPE_3__ = type { %struct.phy* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @rcar_gen2_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @rcar_gen2_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.rcar_gen2_phy_driver*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 1
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %7, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.rcar_gen2_phy_driver* @dev_get_drvdata(%struct.device* %12)
  store %struct.rcar_gen2_phy_driver* %13, %struct.rcar_gen2_phy_driver** %6, align 8
  %14 = load %struct.rcar_gen2_phy_driver*, %struct.rcar_gen2_phy_driver** %6, align 8
  %15 = icmp ne %struct.rcar_gen2_phy_driver* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.phy* @ERR_PTR(i32 %18)
  store %struct.phy* %19, %struct.phy** %3, align 8
  br label %78

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.rcar_gen2_phy_driver*, %struct.rcar_gen2_phy_driver** %6, align 8
  %24 = getelementptr inbounds %struct.rcar_gen2_phy_driver, %struct.rcar_gen2_phy_driver* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = load %struct.rcar_gen2_phy_driver*, %struct.rcar_gen2_phy_driver** %6, align 8
  %30 = getelementptr inbounds %struct.rcar_gen2_phy_driver, %struct.rcar_gen2_phy_driver* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.device_node*, %struct.device_node** %35, align 8
  %37 = icmp eq %struct.device_node* %28, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %21

43:                                               ; preds = %38, %21
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.rcar_gen2_phy_driver*, %struct.rcar_gen2_phy_driver** %6, align 8
  %46 = getelementptr inbounds %struct.rcar_gen2_phy_driver, %struct.rcar_gen2_phy_driver* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %51 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %56, label %60

56:                                               ; preds = %49, %43
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.phy* @ERR_PTR(i32 %58)
  store %struct.phy* %59, %struct.phy** %3, align 8
  br label %78

60:                                               ; preds = %49
  %61 = load %struct.rcar_gen2_phy_driver*, %struct.rcar_gen2_phy_driver** %6, align 8
  %62 = getelementptr inbounds %struct.rcar_gen2_phy_driver, %struct.rcar_gen2_phy_driver* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %70 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load %struct.phy*, %struct.phy** %76, align 8
  store %struct.phy* %77, %struct.phy** %3, align 8
  br label %78

78:                                               ; preds = %60, %56, %16
  %79 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %79
}

declare dso_local %struct.rcar_gen2_phy_driver* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
