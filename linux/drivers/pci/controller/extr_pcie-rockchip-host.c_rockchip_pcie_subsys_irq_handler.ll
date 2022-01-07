; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_subsys_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_subsys_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { %struct.device* }
%struct.device = type { i32 }

@PCIE_CLIENT_INT_STATUS = common dso_local global i32 0, align 4
@PCIE_CLIENT_INT_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"local interrupt received\0A\00", align 1
@PCIE_CORE_INT_STATUS = common dso_local global i32 0, align 4
@PCIE_CORE_INT_PRFPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"parity error detected while reading from the PNP receive FIFO RAM\0A\00", align 1
@PCIE_CORE_INT_CRFPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"parity error detected while reading from the Completion Receive FIFO RAM\0A\00", align 1
@PCIE_CORE_INT_RRPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"parity error detected while reading from replay buffer RAM\0A\00", align 1
@PCIE_CORE_INT_PRFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"overflow occurred in the PNP receive FIFO\0A\00", align 1
@PCIE_CORE_INT_CRFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"overflow occurred in the completion receive FIFO\0A\00", align 1
@PCIE_CORE_INT_RT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"replay timer timed out\0A\00", align 1
@PCIE_CORE_INT_RTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [64 x i8] c"replay timer rolled over after 4 transmissions of the same TLP\0A\00", align 1
@PCIE_CORE_INT_PE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"phy error detected on receive side\0A\00", align 1
@PCIE_CORE_INT_MTR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"malformed TLP received from the link\0A\00", align 1
@PCIE_CORE_INT_UCR = common dso_local global i32 0, align 4
@PCIE_CORE_INT_FCE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [78 x i8] c"an error was observed in the flow control advertisements from the other side\0A\00", align 1
@PCIE_CORE_INT_CT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"a request timed out waiting for completion\0A\00", align 1
@PCIE_CORE_INT_UTC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"unmapped TC error\0A\00", align 1
@PCIE_CORE_INT_MMVC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"MSI mask register changes\0A\00", align 1
@PCIE_CLIENT_INT_PHY = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"phy link changes\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rockchip_pcie_subsys_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_subsys_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rockchip_pcie*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rockchip_pcie*
  store %struct.rockchip_pcie* %10, %struct.rockchip_pcie** %5, align 8
  %11 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %5, align 8
  %12 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %5, align 8
  %15 = load i32, i32* @PCIE_CLIENT_INT_STATUS, align 4
  %16 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PCIE_CLIENT_INT_LOCAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %143

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call i32 @dev_dbg(%struct.device* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %5, align 8
  %25 = load i32, i32* @PCIE_CORE_INT_STATUS, align 4
  %26 = call i32 @rockchip_pcie_read(%struct.rockchip_pcie* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PCIE_CORE_INT_PRFPE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %21
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @PCIE_CORE_INT_CRFPE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PCIE_CORE_INT_RRPE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = call i32 @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PCIE_CORE_INT_PRFO, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i32 @dev_dbg(%struct.device* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @PCIE_CORE_INT_CRFO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = call i32 @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @PCIE_CORE_INT_RT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @PCIE_CORE_INT_RTR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = call i32 @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @PCIE_CORE_INT_PE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = call i32 @dev_dbg(%struct.device* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @PCIE_CORE_INT_MTR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = call i32 @dev_dbg(%struct.device* %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @PCIE_CORE_INT_UCR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = call i32 @dev_dbg(%struct.device* %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %98
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @PCIE_CORE_INT_FCE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = call i32 @dev_dbg(%struct.device* %112, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @PCIE_CORE_INT_CT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.device*, %struct.device** %6, align 8
  %121 = call i32 @dev_dbg(%struct.device* %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @PCIE_CORE_INT_UTC, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.device*, %struct.device** %6, align 8
  %129 = call i32 @dev_dbg(%struct.device* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %122
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @PCIE_CORE_INT_MMVC, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = call i32 @dev_dbg(%struct.device* %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %130
  %139 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %5, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @PCIE_CORE_INT_STATUS, align 4
  %142 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %139, i32 %140, i32 %141)
  br label %156

143:                                              ; preds = %2
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @PCIE_CLIENT_INT_PHY, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.device*, %struct.device** %6, align 8
  %150 = call i32 @dev_dbg(%struct.device* %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %151 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %5, align 8
  %152 = call i32 @rockchip_pcie_update_txcredit_mui(%struct.rockchip_pcie* %151)
  %153 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %5, align 8
  %154 = call i32 @rockchip_pcie_clr_bw_int(%struct.rockchip_pcie* %153)
  br label %155

155:                                              ; preds = %148, %143
  br label %156

156:                                              ; preds = %155, %138
  %157 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %5, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @PCIE_CLIENT_INT_LOCAL, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* @PCIE_CLIENT_INT_STATUS, align 4
  %162 = call i32 @rockchip_pcie_write(%struct.rockchip_pcie* %157, i32 %160, i32 %161)
  %163 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %163
}

declare dso_local i32 @rockchip_pcie_read(%struct.rockchip_pcie*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @rockchip_pcie_write(%struct.rockchip_pcie*, i32, i32) #1

declare dso_local i32 @rockchip_pcie_update_txcredit_mui(%struct.rockchip_pcie*) #1

declare dso_local i32 @rockchip_pcie_clr_bw_int(%struct.rockchip_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
