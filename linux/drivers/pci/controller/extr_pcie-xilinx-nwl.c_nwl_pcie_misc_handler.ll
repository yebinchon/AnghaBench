; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_pcie_misc_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx-nwl.c_nwl_pcie_misc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nwl_pcie = type { %struct.device* }
%struct.device = type { i32 }

@MSGF_MISC_STATUS = common dso_local global i32 0, align 4
@MSGF_MISC_SR_MASKALL = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@MSGF_MISC_SR_RXMSG_OVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Received Message FIFO Overflow\0A\00", align 1
@MSGF_MISC_SR_SLAVE_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Slave error\0A\00", align 1
@MSGF_MISC_SR_MASTER_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Master error\0A\00", align 1
@MSGF_MISC_SR_I_ADDR_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"In Misc Ingress address translation error\0A\00", align 1
@MSGF_MISC_SR_E_ADDR_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"In Misc Egress address translation error\0A\00", align 1
@MSGF_MISC_SR_FATAL_AER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Fatal Error in AER Capability\0A\00", align 1
@MSGF_MISC_SR_NON_FATAL_AER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Non-Fatal Error in AER Capability\0A\00", align 1
@MSGF_MISC_SR_CORR_AER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Correctable Error in AER Capability\0A\00", align 1
@MSGF_MISC_SR_UR_DETECT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Unsupported request Detected\0A\00", align 1
@MSGF_MISC_SR_NON_FATAL_DEV = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Non-Fatal Error Detected\0A\00", align 1
@MSGF_MISC_SR_FATAL_DEV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"Fatal Error Detected\0A\00", align 1
@MSGF_MSIC_SR_LINK_AUTO_BWIDTH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [53 x i8] c"Link Autonomous Bandwidth Management Status bit set\0A\00", align 1
@MSGF_MSIC_SR_LINK_BWIDTH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"Link Bandwidth Management Status bit set\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nwl_pcie_misc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nwl_pcie_misc_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nwl_pcie*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.nwl_pcie*
  store %struct.nwl_pcie* %10, %struct.nwl_pcie** %6, align 8
  %11 = load %struct.nwl_pcie*, %struct.nwl_pcie** %6, align 8
  %12 = getelementptr inbounds %struct.nwl_pcie, %struct.nwl_pcie* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.nwl_pcie*, %struct.nwl_pcie** %6, align 8
  %15 = load i32, i32* @MSGF_MISC_STATUS, align 4
  %16 = call i32 @nwl_bridge_readl(%struct.nwl_pcie* %14, i32 %15)
  %17 = load i32, i32* @MSGF_MISC_SR_MASKALL, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %133

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MSGF_MISC_SR_RXMSG_OVER, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %7, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MSGF_MISC_SR_SLAVE_ERR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MSGF_MISC_SR_MASTER_ERR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @MSGF_MISC_SR_I_ADDR_ERR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MSGF_MISC_SR_E_ADDR_ERR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @MSGF_MISC_SR_FATAL_AER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.device*, %struct.device** %7, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @MSGF_MISC_SR_NON_FATAL_AER, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.device*, %struct.device** %7, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @MSGF_MISC_SR_CORR_AER, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.device*, %struct.device** %7, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @MSGF_MISC_SR_UR_DETECT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.device*, %struct.device** %7, align 8
  %94 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @MSGF_MISC_SR_NON_FATAL_DEV, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.device*, %struct.device** %7, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @MSGF_MISC_SR_FATAL_DEV, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.device*, %struct.device** %7, align 8
  %110 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @MSGF_MSIC_SR_LINK_AUTO_BWIDTH, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.device*, %struct.device** %7, align 8
  %118 = call i32 @dev_info(%struct.device* %117, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @MSGF_MSIC_SR_LINK_BWIDTH, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.device*, %struct.device** %7, align 8
  %126 = call i32 @dev_info(%struct.device* %125, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %119
  %128 = load %struct.nwl_pcie*, %struct.nwl_pcie** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @MSGF_MISC_STATUS, align 4
  %131 = call i32 @nwl_bridge_writel(%struct.nwl_pcie* %128, i32 %129, i32 %130)
  %132 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %127, %21
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @nwl_bridge_readl(%struct.nwl_pcie*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @nwl_bridge_writel(%struct.nwl_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
