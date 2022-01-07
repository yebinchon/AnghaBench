; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_s10_tlp_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_s10_tlp_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_pcie = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@TLP_LOOP = common dso_local global i32 0, align 4
@S10_RP_RXCPL_STATUS = common dso_local global i32 0, align 4
@RP_RXCPL_SOP = common dso_local global i32 0, align 4
@S10_RP_RXCPL_REG = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@RP_RXCPL_EOP = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Malformed TLP packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_pcie*, i32*)* @s10_tlp_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s10_tlp_read_packet(%struct.altera_pcie* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.altera_pcie*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  store %struct.altera_pcie* %0, %struct.altera_pcie** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.altera_pcie*, %struct.altera_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %10, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @TLP_LOOP, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load %struct.altera_pcie*, %struct.altera_pcie** %4, align 8
  %21 = load i32, i32* @S10_RP_RXCPL_STATUS, align 4
  %22 = call i32 @cra_readl(%struct.altera_pcie* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @RP_RXCPL_SOP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.altera_pcie*, %struct.altera_pcie** %4, align 8
  %29 = load i32, i32* @S10_RP_RXCPL_REG, align 4
  %30 = call i32 @cra_readl(%struct.altera_pcie* %28, i32 %29)
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  br label %37

32:                                               ; preds = %19
  %33 = call i32 @udelay(i32 5)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %15

37:                                               ; preds = %27, %15
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @TLP_LOOP, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %42, i32* %3, align 4
  br label %95

43:                                               ; preds = %37
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %90, %43
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %91

49:                                               ; preds = %44
  %50 = load %struct.altera_pcie*, %struct.altera_pcie** %4, align 8
  %51 = load i32, i32* @S10_RP_RXCPL_STATUS, align 4
  %52 = call i32 @cra_readl(%struct.altera_pcie* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.altera_pcie*, %struct.altera_pcie** %4, align 8
  %54 = load i32, i32* @S10_RP_RXCPL_REG, align 4
  %55 = call i32 @cra_readl(%struct.altera_pcie* %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @RP_RXCPL_EOP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %49
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @TLP_COMP_STATUS(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %71, i32* %3, align 4
  br label %95

72:                                               ; preds = %64
  %73 = load i32*, i32** %5, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @TLP_BYTE_COUNT(i32 %77)
  %79 = sext i32 %78 to i64
  %80 = icmp eq i64 %79, 4
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %5, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %81, %75, %72
  %89 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %89, i32* %3, align 4
  br label %95

90:                                               ; preds = %49
  br label %44

91:                                               ; preds = %44
  %92 = load %struct.device*, %struct.device** %10, align 8
  %93 = call i32 @dev_warn(%struct.device* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %88, %70, %41
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @cra_readl(%struct.altera_pcie*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @TLP_COMP_STATUS(i32) #1

declare dso_local i32 @TLP_BYTE_COUNT(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
