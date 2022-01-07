; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_do_test_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_do_test_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32, %struct.usba_ep*, %struct.TYPE_2__* }
%struct.usba_ep = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@do_test_mode.test_packet_buffer = internal constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\AA\AA\AA\AA\AA\AA\AA\AA\EE\EE\EE\EE\EE\EE\EE\EE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\BF\DF\EF\F7\FB\FD\FC~\BF\DF\EF\F7\FB\FD~", align 16
@TST = common dso_local global i32 0, align 4
@USBA_TST_J_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Entering Test_J mode...\0A\00", align 1
@USBA_TST_K_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Entering Test_K mode...\0A\00", align 1
@SPEED_CFG = common dso_local global i32 0, align 4
@USBA_SPEED_CFG_FORCE_HIGH = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4
@EPT_SIZE = common dso_local global i32 0, align 4
@USBA_EPT_SIZE_64 = common dso_local global i32 0, align 4
@USBA_EPT_DIR_IN = common dso_local global i32 0, align 4
@EPT_TYPE = common dso_local global i32 0, align 4
@USBA_EPT_TYPE_BULK = common dso_local global i32 0, align 4
@BK_NUMBER = common dso_local global i32 0, align 4
@USBA_EPT_MAPPED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Test_SE0_NAK: ep0 not mapped\0A\00", align 1
@CTL_ENB = common dso_local global i32 0, align 4
@USBA_EPT_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Entering Test_SE0_NAK mode...\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Test_Packet: ep0 not mapped\0A\00", align 1
@USBA_TST_PKT_MODE = common dso_local global i32 0, align 4
@SET_STA = common dso_local global i32 0, align 4
@USBA_TX_PK_RDY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Entering Test_Packet mode...\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Invalid test mode: 0x%04x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usba_udc*)* @do_test_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test_mode(%struct.usba_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usba_udc*, align 8
  %4 = alloca %struct.usba_ep*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.usba_udc* %0, %struct.usba_udc** %3, align 8
  %7 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %8 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %12 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %15 = call i32 @reset_all_endpoints(%struct.usba_udc* %14)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %129 [
    i32 256, label %17
    i32 512, label %24
    i32 768, label %31
    i32 1024, label %77
  ]

17:                                               ; preds = %1
  %18 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %19 = load i32, i32* @TST, align 4
  %20 = load i32, i32* @USBA_TST_J_MODE, align 4
  %21 = call i32 @usba_writel(%struct.usba_udc* %18, i32 %19, i32 %20)
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i32 @dev_info(%struct.device* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %135

24:                                               ; preds = %1
  %25 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %26 = load i32, i32* @TST, align 4
  %27 = load i32, i32* @USBA_TST_K_MODE, align 4
  %28 = call i32 @usba_writel(%struct.usba_udc* %25, i32 %26, i32 %27)
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @dev_info(%struct.device* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %135

31:                                               ; preds = %1
  %32 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %33 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %32, i32 0, i32 1
  %34 = load %struct.usba_ep*, %struct.usba_ep** %33, align 8
  %35 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %34, i64 0
  store %struct.usba_ep* %35, %struct.usba_ep** %4, align 8
  %36 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %37 = load i32, i32* @TST, align 4
  %38 = load i32, i32* @SPEED_CFG, align 4
  %39 = load i32, i32* @USBA_SPEED_CFG_FORCE_HIGH, align 4
  %40 = call i32 @USBA_BF(i32 %38, i32 %39)
  %41 = call i32 @usba_writel(%struct.usba_udc* %36, i32 %37, i32 %40)
  %42 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %43 = load i32, i32* @CFG, align 4
  %44 = load i32, i32* @EPT_SIZE, align 4
  %45 = load i32, i32* @USBA_EPT_SIZE_64, align 4
  %46 = call i32 @USBA_BF(i32 %44, i32 %45)
  %47 = load i32, i32* @USBA_EPT_DIR_IN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @EPT_TYPE, align 4
  %50 = load i32, i32* @USBA_EPT_TYPE_BULK, align 4
  %51 = call i32 @USBA_BF(i32 %49, i32 %50)
  %52 = or i32 %48, %51
  %53 = load i32, i32* @BK_NUMBER, align 4
  %54 = call i32 @USBA_BF(i32 %53, i32 1)
  %55 = or i32 %52, %54
  %56 = call i32 @usba_ep_writel(%struct.usba_ep* %42, i32 %43, i32 %55)
  %57 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %58 = load i32, i32* @CFG, align 4
  %59 = call i32 @usba_ep_readl(%struct.usba_ep* %57, i32 %58)
  %60 = load i32, i32* @USBA_EPT_MAPPED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %31
  %64 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %65 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %66 = call i32 @set_protocol_stall(%struct.usba_udc* %64, %struct.usba_ep* %65)
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %76

69:                                               ; preds = %31
  %70 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %71 = load i32, i32* @CTL_ENB, align 4
  %72 = load i32, i32* @USBA_EPT_ENABLE, align 4
  %73 = call i32 @usba_ep_writel(%struct.usba_ep* %70, i32 %71, i32 %72)
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = call i32 @dev_info(%struct.device* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %69, %63
  br label %135

77:                                               ; preds = %1
  %78 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %79 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %78, i32 0, i32 1
  %80 = load %struct.usba_ep*, %struct.usba_ep** %79, align 8
  %81 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %80, i64 0
  store %struct.usba_ep* %81, %struct.usba_ep** %4, align 8
  %82 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %83 = load i32, i32* @CFG, align 4
  %84 = load i32, i32* @EPT_SIZE, align 4
  %85 = load i32, i32* @USBA_EPT_SIZE_64, align 4
  %86 = call i32 @USBA_BF(i32 %84, i32 %85)
  %87 = load i32, i32* @USBA_EPT_DIR_IN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @EPT_TYPE, align 4
  %90 = load i32, i32* @USBA_EPT_TYPE_BULK, align 4
  %91 = call i32 @USBA_BF(i32 %89, i32 %90)
  %92 = or i32 %88, %91
  %93 = load i32, i32* @BK_NUMBER, align 4
  %94 = call i32 @USBA_BF(i32 %93, i32 1)
  %95 = or i32 %92, %94
  %96 = call i32 @usba_ep_writel(%struct.usba_ep* %82, i32 %83, i32 %95)
  %97 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %98 = load i32, i32* @CFG, align 4
  %99 = call i32 @usba_ep_readl(%struct.usba_ep* %97, i32 %98)
  %100 = load i32, i32* @USBA_EPT_MAPPED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %77
  %104 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %105 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %106 = call i32 @set_protocol_stall(%struct.usba_udc* %104, %struct.usba_ep* %105)
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %128

109:                                              ; preds = %77
  %110 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %111 = load i32, i32* @CTL_ENB, align 4
  %112 = load i32, i32* @USBA_EPT_ENABLE, align 4
  %113 = call i32 @usba_ep_writel(%struct.usba_ep* %110, i32 %111, i32 %112)
  %114 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %115 = load i32, i32* @TST, align 4
  %116 = load i32, i32* @USBA_TST_PKT_MODE, align 4
  %117 = call i32 @usba_writel(%struct.usba_udc* %114, i32 %115, i32 %116)
  %118 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %119 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @memcpy_toio(i32 %120, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @do_test_mode.test_packet_buffer, i64 0, i64 0), i32 53)
  %122 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %123 = load i32, i32* @SET_STA, align 4
  %124 = load i32, i32* @USBA_TX_PK_RDY, align 4
  %125 = call i32 @usba_ep_writel(%struct.usba_ep* %122, i32 %123, i32 %124)
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = call i32 @dev_info(%struct.device* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %109, %103
  br label %135

129:                                              ; preds = %1
  %130 = load %struct.device*, %struct.device** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %136

135:                                              ; preds = %128, %76, %24, %17
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %129
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @reset_all_endpoints(%struct.usba_udc*) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @USBA_BF(i32, i32) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @usba_ep_readl(%struct.usba_ep*, i32) #1

declare dso_local i32 @set_protocol_stall(%struct.usba_udc*, %struct.usba_ep*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @memcpy_toio(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
