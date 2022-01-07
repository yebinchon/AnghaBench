; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_flush_receive_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vc_flush_receive_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"\09rawval %#08x\0A\00", align 1
@MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT = common dso_local global i64 0, align 8
@MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_1BYTE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"\09DCS short response, 1 byte: %#x\0A\00", align 1
@MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_2BYTE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"\09DCS short response, 2 byte: %#x\0A\00", align 1
@MIPI_DSI_RX_DCS_LONG_READ_RESPONSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"\09DCS long response, len %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\09unknown datatype 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.platform_device*, i32)* @dsi_vc_flush_receive_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dsi_vc_flush_receive_data(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %8

8:                                                ; preds = %64, %2
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @DSI_VC_CTRL(i32 %10)
  %12 = call i64 @REG_GET(%struct.platform_device* %9, i32 %11, i32 20, i32 20)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @DSI_VC_SHORT_PACKET_HEADER(i32 %16)
  %18 = call i64 @dsi_read_reg(%struct.platform_device* %15, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @DSSERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @FLD_GET(i64 %21, i32 5, i32 0)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @FLD_GET(i64 %27, i32 23, i32 8)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @dsi_show_rx_ack_with_err(i64 %29)
  br label %64

31:                                               ; preds = %14
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_1BYTE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @FLD_GET(i64 %36, i32 23, i32 8)
  %38 = call i32 @DSSERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  br label %63

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_2BYTE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @FLD_GET(i64 %44, i32 23, i32 8)
  %46 = call i32 @DSSERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  br label %62

47:                                               ; preds = %39
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @MIPI_DSI_RX_DCS_LONG_READ_RESPONSE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @FLD_GET(i64 %52, i32 23, i32 8)
  %54 = call i32 @DSSERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @dsi_vc_flush_long_data(%struct.platform_device* %55, i32 %56)
  br label %61

58:                                               ; preds = %47
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @DSSERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %58, %51
  br label %62

62:                                               ; preds = %61, %43
  br label %63

63:                                               ; preds = %62, %35
  br label %64

64:                                               ; preds = %63, %26
  br label %8

65:                                               ; preds = %8
  ret i64 0
}

declare dso_local i64 @REG_GET(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i64 @dsi_read_reg(%struct.platform_device*, i32) #1

declare dso_local i32 @DSI_VC_SHORT_PACKET_HEADER(i32) #1

declare dso_local i32 @DSSERR(i8*, i64) #1

declare dso_local i64 @FLD_GET(i64, i32, i32) #1

declare dso_local i32 @dsi_show_rx_ack_with_err(i64) #1

declare dso_local i32 @dsi_vc_flush_long_data(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
