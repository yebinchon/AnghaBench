; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_get_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_get_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_meson_g12a = type { i32, i32, i32, i32* }

@PHY_COUNT = common dso_local global i32 0, align 4
@phy_names = common dso_local global i32* null, align 8
@USB3_HOST_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"USB2 ports: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"USB3 ports: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_meson_g12a*)* @dwc3_meson_g12a_get_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_meson_g12a_get_phys(%struct.dwc3_meson_g12a* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_meson_g12a*, align 8
  %4 = alloca i32, align 4
  store %struct.dwc3_meson_g12a* %0, %struct.dwc3_meson_g12a** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %68, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PHY_COUNT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %71

9:                                                ; preds = %5
  %10 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %11 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @phy_names, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @devm_phy_optional_get(i32 %12, i32 %17)
  %19 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %20 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %18, i32* %24, align 4
  %25 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %26 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %9
  br label %68

34:                                               ; preds = %9
  %35 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %36 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %46 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %86

53:                                               ; preds = %34
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @USB3_HOST_PHY, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %59 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %67

62:                                               ; preds = %53
  %63 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %64 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %33
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %5

71:                                               ; preds = %5
  %72 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %73 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %76 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_info(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %80 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %83 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_info(i32 %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %71, %44
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @devm_phy_optional_get(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
