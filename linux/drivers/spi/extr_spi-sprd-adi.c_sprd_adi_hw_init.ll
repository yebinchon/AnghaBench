; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd-adi.c_sprd_adi_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd-adi.c_sprd_adi_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_adi = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@REG_ADI_CHN_PRIL = common dso_local global i64 0, align 8
@REG_ADI_CHN_PRIH = common dso_local global i64 0, align 8
@REG_ADI_GSSI_CFG0 = common dso_local global i64 0, align 8
@BIT_CLK_ALL_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sprd,hw-channels\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"no hw channels setting in node\0A\00", align 1
@REG_ADI_CHN_EN = common dso_local global i64 0, align 8
@ADI_HW_CHNS = common dso_local global i32 0, align 4
@REG_ADI_CHN_EN1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_adi*)* @sprd_adi_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_adi_hw_init(%struct.sprd_adi* %0) #0 {
  %2 = alloca %struct.sprd_adi*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sprd_adi* %0, %struct.sprd_adi** %2, align 8
  %12 = load %struct.sprd_adi*, %struct.sprd_adi** %2, align 8
  %13 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %3, align 8
  %17 = load %struct.sprd_adi*, %struct.sprd_adi** %2, align 8
  %18 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REG_ADI_CHN_PRIL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 0, i64 %21)
  %23 = load %struct.sprd_adi*, %struct.sprd_adi** %2, align 8
  %24 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REG_ADI_CHN_PRIH, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel_relaxed(i32 0, i64 %27)
  %29 = load %struct.sprd_adi*, %struct.sprd_adi** %2, align 8
  %30 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @REG_ADI_GSSI_CFG0, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl_relaxed(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @BIT_CLK_ALL_ON, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.sprd_adi*, %struct.sprd_adi** %2, align 8
  %41 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REG_ADI_GSSI_CFG0, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel_relaxed(i32 %39, i64 %44)
  %46 = load %struct.device_node*, %struct.device_node** %3, align 8
  %47 = call i32* @of_get_property(%struct.device_node* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %1
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50, %1
  %54 = load %struct.sprd_adi*, %struct.sprd_adi** %2, align 8
  %55 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = call i32 @dev_info(%struct.TYPE_2__* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %134

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = sdiv i32 %59, 8
  store i32 %60, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %131, %58
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %134

65:                                               ; preds = %61
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %7, align 8
  %68 = load i32, i32* %66, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %7, align 8
  %72 = load i32, i32* %70, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %131

77:                                               ; preds = %65
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.sprd_adi*, %struct.sprd_adi** %2, align 8
  %80 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i64 @REG_ADI_CHN_ADDR(i32 %82)
  %84 = add nsw i64 %81, %83
  %85 = call i32 @writel_relaxed(i32 %78, i64 %84)
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 32
  br i1 %87, label %88, label %106

88:                                               ; preds = %77
  %89 = load %struct.sprd_adi*, %struct.sprd_adi** %2, align 8
  %90 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @REG_ADI_CHN_EN, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @readl_relaxed(i64 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @BIT(i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.sprd_adi*, %struct.sprd_adi** %2, align 8
  %101 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @REG_ADI_CHN_EN, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel_relaxed(i32 %99, i64 %104)
  br label %130

106:                                              ; preds = %77
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @ADI_HW_CHNS, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = load %struct.sprd_adi*, %struct.sprd_adi** %2, align 8
  %112 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @REG_ADI_CHN_EN1, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @readl_relaxed(i64 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %117, 32
  %119 = call i32 @BIT(i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.sprd_adi*, %struct.sprd_adi** %2, align 8
  %124 = getelementptr inbounds %struct.sprd_adi, %struct.sprd_adi* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @REG_ADI_CHN_EN1, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel_relaxed(i32 %122, i64 %127)
  br label %129

129:                                              ; preds = %110, %106
  br label %130

130:                                              ; preds = %129, %88
  br label %131

131:                                              ; preds = %130, %76
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  br label %61

134:                                              ; preds = %53, %61
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @REG_ADI_CHN_ADDR(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
