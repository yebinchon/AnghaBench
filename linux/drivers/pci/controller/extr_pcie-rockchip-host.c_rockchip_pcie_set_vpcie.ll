; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_set_vpcie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_set_vpcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"fail to enable vpcie12v regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"fail to enable vpcie3v3 regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"fail to enable vpcie1v8 regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"fail to enable vpcie0v9 regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie*)* @rockchip_pcie_set_vpcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_set_vpcie(%struct.rockchip_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %3, align 8
  %6 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %6, i32 0, i32 4
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @IS_ERR(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %16 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @regulator_enable(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %113

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %27 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IS_ERR(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %33 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regulator_enable(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %101

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %44 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @IS_ERR(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %50 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @regulator_enable(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %89

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %42
  %60 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %61 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IS_ERR(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %67 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @regulator_enable(i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %77

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %59
  store i32 0, i32* %2, align 4
  br label %115

77:                                               ; preds = %72
  %78 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %79 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @IS_ERR(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  %84 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %85 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @regulator_disable(i32 %86)
  br label %88

88:                                               ; preds = %83, %77
  br label %89

89:                                               ; preds = %88, %55
  %90 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %91 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @IS_ERR(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %97 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @regulator_disable(i32 %98)
  br label %100

100:                                              ; preds = %95, %89
  br label %101

101:                                              ; preds = %100, %38
  %102 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %103 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @IS_ERR(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %101
  %108 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %109 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @regulator_disable(i32 %110)
  br label %112

112:                                              ; preds = %107, %101
  br label %113

113:                                              ; preds = %112, %21
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %76
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
