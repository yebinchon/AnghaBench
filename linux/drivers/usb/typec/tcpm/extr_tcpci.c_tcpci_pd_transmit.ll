; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_pd_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_pd_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpc_dev = type { i32 }
%struct.pd_message = type { i32, i32 }
%struct.tcpci = type { i32 }

@TCPC_TX_BYTE_CNT = common dso_local global i32 0, align 4
@TCPC_TX_HDR = common dso_local global i32 0, align 4
@TCPC_TX_DATA = common dso_local global i32 0, align 4
@PD_RETRY_COUNT = common dso_local global i32 0, align 4
@TCPC_TRANSMIT_RETRY_SHIFT = common dso_local global i32 0, align 4
@TCPC_TRANSMIT_TYPE_SHIFT = common dso_local global i32 0, align 4
@TCPC_TRANSMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpc_dev*, i32, %struct.pd_message*)* @tcpci_pd_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpci_pd_transmit(%struct.tcpc_dev* %0, i32 %1, %struct.pd_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pd_message*, align 8
  %8 = alloca %struct.tcpci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tcpc_dev* %0, %struct.tcpc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pd_message* %2, %struct.pd_message** %7, align 8
  %13 = load %struct.tcpc_dev*, %struct.tcpc_dev** %5, align 8
  %14 = call %struct.tcpci* @tcpc_to_tcpci(%struct.tcpc_dev* %13)
  store %struct.tcpci* %14, %struct.tcpci** %8, align 8
  %15 = load %struct.pd_message*, %struct.pd_message** %7, align 8
  %16 = icmp ne %struct.pd_message* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.pd_message*, %struct.pd_message** %7, align 8
  %19 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i32 [ %21, %17 ], [ 0, %22 ]
  store i32 %24, i32* %9, align 4
  %25 = load %struct.pd_message*, %struct.pd_message** %7, align 8
  %26 = icmp ne %struct.pd_message* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @pd_header_cnt(i32 %28)
  %30 = mul nsw i32 %29, 4
  br label %32

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ 0, %31 ]
  store i32 %33, i32* %11, align 4
  %34 = load %struct.tcpci*, %struct.tcpci** %8, align 8
  %35 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TCPC_TX_BYTE_CNT, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add i32 %38, 2
  %40 = call i32 @regmap_write(i32 %36, i32 %37, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %4, align 4
  br label %90

45:                                               ; preds = %32
  %46 = load %struct.tcpci*, %struct.tcpci** %8, align 8
  %47 = load i32, i32* @TCPC_TX_HDR, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @tcpci_write16(%struct.tcpci* %46, i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %90

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  %56 = icmp ugt i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.tcpci*, %struct.tcpci** %8, align 8
  %59 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @TCPC_TX_DATA, align 4
  %62 = load %struct.pd_message*, %struct.pd_message** %7, align 8
  %63 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %62, i32 0, i32 0
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @regmap_raw_write(i32 %60, i32 %61, i32* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %4, align 4
  br label %90

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i32, i32* @PD_RETRY_COUNT, align 4
  %73 = load i32, i32* @TCPC_TRANSMIT_RETRY_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @TCPC_TRANSMIT_TYPE_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %74, %77
  store i32 %78, i32* %10, align 4
  %79 = load %struct.tcpci*, %struct.tcpci** %8, align 8
  %80 = getelementptr inbounds %struct.tcpci, %struct.tcpci* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TCPC_TRANSMIT, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @regmap_write(i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %4, align 4
  br label %90

89:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %87, %68, %52, %43
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.tcpci* @tcpc_to_tcpci(%struct.tcpc_dev*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @pd_header_cnt(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @tcpci_write16(%struct.tcpci*, i32, i32) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
