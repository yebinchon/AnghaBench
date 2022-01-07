; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_ob_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_ob_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { i64, %struct.device* }
%struct.device = type { i32 }

@IPROC_PCIE_OARR0 = common dso_local global i32 0, align 4
@IPROC_PCIE_OMAP0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OARR_SIZE_CFG_SHIFT = common dso_local global i32 0, align 4
@OARR_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ob window [%d]: offset 0x%x axi %pap pci %pap\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"oarr lo 0x%x oarr hi 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"omap lo 0x%x omap hi 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_pcie*, i32, i32, i32, i32)* @iproc_pcie_ob_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pcie_ob_write(%struct.iproc_pcie* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iproc_pcie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.iproc_pcie*, %struct.iproc_pcie** %7, align 8
  %16 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %15, i32 0, i32 1
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %12, align 8
  %18 = load %struct.iproc_pcie*, %struct.iproc_pcie** %7, align 8
  %19 = load i32, i32* @IPROC_PCIE_OARR0, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @MAP_REG(i32 %19, i32 %20)
  %22 = call i64 @iproc_pcie_reg_offset(%struct.iproc_pcie* %18, i32 %21)
  store i64 %22, i64* %13, align 8
  %23 = load %struct.iproc_pcie*, %struct.iproc_pcie** %7, align 8
  %24 = load i32, i32* @IPROC_PCIE_OMAP0, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @MAP_REG(i32 %24, i32 %25)
  %27 = call i64 @iproc_pcie_reg_offset(%struct.iproc_pcie* %23, i32 %26)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i64 @iproc_pcie_reg_is_invalid(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %5
  %32 = load i64, i64* %14, align 8
  %33 = call i64 @iproc_pcie_reg_is_invalid(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %114

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @lower_32_bits(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @OARR_SIZE_CFG_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  %45 = load i32, i32* @OARR_VALID, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.iproc_pcie*, %struct.iproc_pcie** %7, align 8
  %48 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @upper_32_bits(i32 %53)
  %55 = load %struct.iproc_pcie*, %struct.iproc_pcie** %7, align 8
  %56 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = add nsw i64 %57, %58
  %60 = add nsw i64 %59, 4
  %61 = call i32 @writel(i32 %54, i64 %60)
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @lower_32_bits(i32 %62)
  %64 = load %struct.iproc_pcie*, %struct.iproc_pcie** %7, align 8
  %65 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @upper_32_bits(i32 %70)
  %72 = load %struct.iproc_pcie*, %struct.iproc_pcie** %7, align 8
  %73 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %14, align 8
  %76 = add nsw i64 %74, %75
  %77 = add nsw i64 %76, 4
  %78 = call i32 @writel(i32 %71, i64 %77)
  %79 = load %struct.device*, %struct.device** %12, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i64, i64* %13, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %82, i32* %10, i32* %11)
  %84 = load %struct.device*, %struct.device** %12, align 8
  %85 = load %struct.iproc_pcie*, %struct.iproc_pcie** %7, align 8
  %86 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl(i64 %89)
  %91 = load %struct.iproc_pcie*, %struct.iproc_pcie** %7, align 8
  %92 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = add nsw i64 %93, %94
  %96 = add nsw i64 %95, 4
  %97 = call i32 @readl(i64 %96)
  %98 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %97)
  %99 = load %struct.device*, %struct.device** %12, align 8
  %100 = load %struct.iproc_pcie*, %struct.iproc_pcie** %7, align 8
  %101 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @readl(i64 %104)
  %106 = load %struct.iproc_pcie*, %struct.iproc_pcie** %7, align 8
  %107 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %14, align 8
  %110 = add nsw i64 %108, %109
  %111 = add nsw i64 %110, 4
  %112 = call i32 @readl(i64 %111)
  %113 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %112)
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %38, %35
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i64 @iproc_pcie_reg_offset(%struct.iproc_pcie*, i32) #1

declare dso_local i32 @MAP_REG(i32, i32) #1

declare dso_local i64 @iproc_pcie_reg_is_invalid(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
