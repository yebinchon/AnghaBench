; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_ib_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_ib_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { i64, %struct.iproc_pcie_ib_map*, %struct.device* }
%struct.iproc_pcie_ib_map = type { i64, i64 }
%struct.device = type { i32 }

@IPROC_PCIE_IARR0 = common dso_local global i32 0, align 4
@IPROC_PCIE_IMAP0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ib region [%d]: offset 0x%x axi %pap pci %pap\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"iarr lo 0x%x iarr hi 0x%x\0A\00", align 1
@IMAP_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"imap window [%d] lo 0x%x hi 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_pcie*, i32, i32, i32, i32, i32, i32)* @iproc_pcie_ib_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pcie_ib_write(%struct.iproc_pcie* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iproc_pcie*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.iproc_pcie_ib_map*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %23 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %22, i32 0, i32 2
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %16, align 8
  %25 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %26 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %25, i32 0, i32 1
  %27 = load %struct.iproc_pcie_ib_map*, %struct.iproc_pcie_ib_map** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.iproc_pcie_ib_map, %struct.iproc_pcie_ib_map* %27, i64 %29
  store %struct.iproc_pcie_ib_map* %30, %struct.iproc_pcie_ib_map** %17, align 8
  %31 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %32 = load i32, i32* @IPROC_PCIE_IARR0, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @MAP_REG(i32 %32, i32 %33)
  %35 = call i64 @iproc_pcie_reg_offset(%struct.iproc_pcie* %31, i32 %34)
  store i64 %35, i64* %18, align 8
  %36 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %37 = load i32, i32* @IPROC_PCIE_IMAP0, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @MAP_REG(i32 %37, i32 %38)
  %40 = call i64 @iproc_pcie_reg_offset(%struct.iproc_pcie* %36, i32 %39)
  store i64 %40, i64* %19, align 8
  %41 = load i64, i64* %18, align 8
  %42 = call i64 @iproc_pcie_reg_is_invalid(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %7
  %45 = load i64, i64* %19, align 8
  %46 = call i64 @iproc_pcie_reg_is_invalid(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %7
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %163

51:                                               ; preds = %44
  %52 = load %struct.device*, %struct.device** %16, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i64, i64* %18, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55, i32* %13, i32* %14)
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @lower_32_bits(i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = or i32 %58, %60
  %62 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %63 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %18, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @upper_32_bits(i32 %68)
  %70 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %71 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %18, align 8
  %74 = add nsw i64 %72, %73
  %75 = add nsw i64 %74, 4
  %76 = call i32 @writel(i32 %69, i64 %75)
  %77 = load %struct.device*, %struct.device** %16, align 8
  %78 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %79 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %18, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readl(i64 %82)
  %84 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %85 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %18, align 8
  %88 = add nsw i64 %86, %87
  %89 = add nsw i64 %88, 4
  %90 = call i32 @readl(i64 %89)
  %91 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @ilog2(i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = ashr i32 %94, %93
  store i32 %95, i32* %15, align 4
  store i32 0, i32* %21, align 4
  br label %96

96:                                               ; preds = %159, %51
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %162

100:                                              ; preds = %96
  %101 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %102 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %19, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @readl(i64 %105)
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @lower_32_bits(i32 %107)
  %109 = load i32, i32* @IMAP_VALID, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %20, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %115 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %19, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %113, i64 %118)
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @upper_32_bits(i32 %120)
  %122 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %123 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %19, align 8
  %126 = add nsw i64 %124, %125
  %127 = load %struct.iproc_pcie_ib_map*, %struct.iproc_pcie_ib_map** %17, align 8
  %128 = getelementptr inbounds %struct.iproc_pcie_ib_map, %struct.iproc_pcie_ib_map* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %126, %129
  %131 = call i32 @writel(i32 %121, i64 %130)
  %132 = load %struct.device*, %struct.device** %16, align 8
  %133 = load i32, i32* %21, align 4
  %134 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %135 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %19, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @readl(i64 %138)
  %140 = load %struct.iproc_pcie*, %struct.iproc_pcie** %9, align 8
  %141 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %19, align 8
  %144 = add nsw i64 %142, %143
  %145 = load %struct.iproc_pcie_ib_map*, %struct.iproc_pcie_ib_map** %17, align 8
  %146 = getelementptr inbounds %struct.iproc_pcie_ib_map, %struct.iproc_pcie_ib_map* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %144, %147
  %149 = call i32 @readl(i64 %148)
  %150 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %133, i32 %139, i32 %149)
  %151 = load %struct.iproc_pcie_ib_map*, %struct.iproc_pcie_ib_map** %17, align 8
  %152 = getelementptr inbounds %struct.iproc_pcie_ib_map, %struct.iproc_pcie_ib_map* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %19, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %19, align 8
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %13, align 4
  br label %159

159:                                              ; preds = %100
  %160 = load i32, i32* %21, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %21, align 4
  br label %96

162:                                              ; preds = %96
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %162, %48
  %164 = load i32, i32* %8, align 4
  ret i32 %164
}

declare dso_local i64 @iproc_pcie_reg_offset(%struct.iproc_pcie*, i32) #1

declare dso_local i32 @MAP_REG(i32, i32) #1

declare dso_local i64 @iproc_pcie_reg_is_invalid(i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
