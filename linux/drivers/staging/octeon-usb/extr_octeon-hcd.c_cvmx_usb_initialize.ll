; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.octeon_hcd = type { i32, i32 }
%union.cvmx_usbcx_hcfg = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%union.cvmx_usbnx_clk_ctl = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%union.cvmx_usbcx_gintsts = type { i8* }
%union.cvmx_usbcx_gahbcfg = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64 }
%union.cvmx_usbcx_gintmsk = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }
%union.cvmx_usbcx_gusbcfg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64, i64 }
%union.cvmx_usbnx_usbp_ctl_status = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32 }

@CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN56XX = common dso_local global i32 0, align 4
@OCTEON_CN50XX = common dso_local global i32 0, align 4
@CVMX_USB_INITIALIZE_FLAGS_CLOCK_MHZ_MASK = common dso_local global i32 0, align 4
@CVMX_USB_INITIALIZE_FLAGS_NO_DMA = common dso_local global i32 0, align 4
@cvmx_usbcx_gintmsk = common dso_local global i32 0, align 4
@prtintmsk = common dso_local global i32 0, align 4
@disconnintmsk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"gintsts after reset: 0x%x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"controller reset failed (gintsts=0x%x) - retrying\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.octeon_hcd*)* @cvmx_usb_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_usb_initialize(%struct.device* %0, %struct.octeon_hcd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.octeon_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.cvmx_usbcx_hcfg, align 8
  %10 = alloca %union.cvmx_usbnx_clk_ctl, align 8
  %11 = alloca %union.cvmx_usbcx_gintsts, align 8
  %12 = alloca %union.cvmx_usbcx_gahbcfg, align 8
  %13 = alloca %union.cvmx_usbcx_gintmsk, align 8
  %14 = alloca %union.cvmx_usbcx_gusbcfg, align 8
  %15 = alloca %union.cvmx_usbnx_usbp_ctl_status, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.octeon_hcd* %1, %struct.octeon_hcd** %5, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %358, %2
  %17 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %18 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CVMX_USBNX_CLK_CTL(i32 %19)
  %21 = call i8* @cvmx_read64_uint64(i32 %20)
  %22 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to i8**
  store i8* %21, i8** %22, align 8
  %23 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 3
  store i32 0, i32* %30, align 4
  %31 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 4
  store i32 0, i32* %32, align 8
  %33 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %34 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %16
  %40 = load i32, i32* @OCTEON_CN3XXX, align 4
  %41 = call i64 @OCTEON_IS_MODEL(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @OCTEON_CN56XX, align 4
  %45 = call i64 @OCTEON_IS_MODEL(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @OCTEON_CN50XX, align 4
  %49 = call i64 @OCTEON_IS_MODEL(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %43, %39
  %52 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 5
  store i32 2, i32* %53, align 4
  br label %57

54:                                               ; preds = %47
  %55 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 5
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %59 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_CLOCK_MHZ_MASK, align 4
  %62 = and i32 %60, %61
  switch i32 %62, label %72 [
    i32 130, label %63
    i32 129, label %66
    i32 128, label %69
  ]

63:                                               ; preds = %57
  %64 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 6
  store i32 0, i32* %65, align 8
  br label %72

66:                                               ; preds = %57
  %67 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 6
  store i32 1, i32* %68, align 8
  br label %72

69:                                               ; preds = %57
  %70 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 6
  store i32 2, i32* %71, align 8
  br label %72

72:                                               ; preds = %57, %69, %66, %63
  br label %86

73:                                               ; preds = %16
  %74 = load i32, i32* @OCTEON_CN3XXX, align 4
  %75 = call i64 @OCTEON_IS_MODEL(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 5
  store i32 3, i32* %79, align 4
  br label %83

80:                                               ; preds = %73
  %81 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 5
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 6
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %72
  %87 = call i32 (...) @octeon_get_clock_rate()
  %88 = call i32 @DIV_ROUND_UP(i32 %87, i32 125000000)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 4, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %86
  %93 = load i32, i32* %7, align 4
  %94 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  %96 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 8
  store i64 0, i64* %97, align 8
  %98 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %99 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @CVMX_USBNX_CLK_CTL(i32 %100)
  %102 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to i8**
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @cvmx_write64_uint64(i32 %101, i8* %103)
  %105 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  store i32 1, i32* %106, align 4
  %107 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %108 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @CVMX_USBNX_CLK_CTL(i32 %109)
  %111 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to i8**
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @cvmx_write64_uint64(i32 %110, i8* %112)
  %114 = call i32 @__delay(i32 64)
  %115 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %118 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @CVMX_USBNX_CLK_CTL(i32 %119)
  %121 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to i8**
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @cvmx_write64_uint64(i32 %120, i8* %122)
  %124 = call i32 @mdelay(i32 1)
  %125 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %126 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @CVMX_USBNX_USBP_CTL_STATUS(i32 %127)
  %129 = call i8* @cvmx_read64_uint64(i32 %128)
  %130 = bitcast %union.cvmx_usbnx_usbp_ctl_status* %15 to i8**
  store i8* %129, i8** %130, align 8
  %131 = bitcast %union.cvmx_usbnx_usbp_ctl_status* %15 to %struct.TYPE_12__*
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %134 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @CVMX_USBNX_USBP_CTL_STATUS(i32 %135)
  %137 = bitcast %union.cvmx_usbnx_usbp_ctl_status* %15 to i8**
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @cvmx_write64_uint64(i32 %136, i8* %138)
  %140 = call i32 @__delay(i32 10)
  %141 = bitcast %union.cvmx_usbnx_usbp_ctl_status* %15 to %struct.TYPE_12__*
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  store i32 0, i32* %142, align 8
  %143 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %144 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @CVMX_USBNX_USBP_CTL_STATUS(i32 %145)
  %147 = bitcast %union.cvmx_usbnx_usbp_ctl_status* %15 to i8**
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @cvmx_write64_uint64(i32 %146, i8* %148)
  %150 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  store i32 1, i32* %151, align 8
  %152 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %153 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @CVMX_USBNX_CLK_CTL(i32 %154)
  %156 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to i8**
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @cvmx_write64_uint64(i32 %155, i8* %157)
  %159 = bitcast %union.cvmx_usbnx_usbp_ctl_status* %15 to %struct.TYPE_12__*
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %162 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @CVMX_USBNX_USBP_CTL_STATUS(i32 %163)
  %165 = bitcast %union.cvmx_usbnx_usbp_ctl_status* %15 to i8**
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @cvmx_write64_uint64(i32 %164, i8* %166)
  %168 = call i32 @udelay(i32 1)
  %169 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  store i32 1, i32* %170, align 4
  %171 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %172 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @CVMX_USBNX_CLK_CTL(i32 %173)
  %175 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to i8**
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @cvmx_write64_uint64(i32 %174, i8* %176)
  %178 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to %struct.TYPE_13__*
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 4
  store i32 1, i32* %179, align 8
  %180 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %181 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @CVMX_USBNX_CLK_CTL(i32 %182)
  %184 = bitcast %union.cvmx_usbnx_clk_ctl* %10 to i8**
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @cvmx_write64_uint64(i32 %183, i8* %185)
  %187 = call i32 @udelay(i32 1)
  %188 = bitcast %union.cvmx_usbcx_gahbcfg* %12 to i8**
  store i8* null, i8** %188, align 8
  %189 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %190 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_NO_DMA, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = bitcast %union.cvmx_usbcx_gahbcfg* %12 to %struct.TYPE_14__*
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = bitcast %union.cvmx_usbcx_gahbcfg* %12 to %struct.TYPE_14__*
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 4
  store i64 0, i64* %200, align 8
  %201 = bitcast %union.cvmx_usbcx_gahbcfg* %12 to %struct.TYPE_14__*
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  store i32 1, i32* %202, align 4
  %203 = bitcast %union.cvmx_usbcx_gahbcfg* %12 to %struct.TYPE_14__*
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 2
  store i32 1, i32* %204, align 8
  %205 = bitcast %union.cvmx_usbcx_gahbcfg* %12 to %struct.TYPE_14__*
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 3
  store i32 1, i32* %206, align 4
  %207 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %208 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %209 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @CVMX_USBCX_GAHBCFG(i32 %210)
  %212 = bitcast %union.cvmx_usbcx_gahbcfg* %12 to i8**
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @cvmx_usb_write_csr32(%struct.octeon_hcd* %207, i32 %211, i8* %213)
  %215 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %216 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %217 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @CVMX_USBCX_GUSBCFG(i32 %218)
  %220 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %215, i32 %219)
  %221 = bitcast %union.cvmx_usbcx_gusbcfg* %14 to i8**
  store i8* %220, i8** %221, align 8
  %222 = bitcast %union.cvmx_usbcx_gusbcfg* %14 to %struct.TYPE_8__*
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 3
  store i64 0, i64* %223, align 8
  %224 = bitcast %union.cvmx_usbcx_gusbcfg* %14 to %struct.TYPE_8__*
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 2
  store i64 0, i64* %225, align 8
  %226 = bitcast %union.cvmx_usbcx_gusbcfg* %14 to %struct.TYPE_8__*
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  store i32 5, i32* %227, align 8
  %228 = bitcast %union.cvmx_usbcx_gusbcfg* %14 to %struct.TYPE_8__*
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  store i64 0, i64* %229, align 8
  %230 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %231 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %232 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @CVMX_USBCX_GUSBCFG(i32 %233)
  %235 = bitcast %union.cvmx_usbcx_gusbcfg* %14 to i8**
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @cvmx_usb_write_csr32(%struct.octeon_hcd* %230, i32 %234, i8* %236)
  %238 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %239 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %240 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @CVMX_USBCX_GINTMSK(i32 %241)
  %243 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %238, i32 %242)
  %244 = bitcast %union.cvmx_usbcx_gintmsk* %13 to i8**
  store i8* %243, i8** %244, align 8
  %245 = bitcast %union.cvmx_usbcx_gintmsk* %13 to %struct.TYPE_9__*
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  store i32 1, i32* %246, align 8
  %247 = bitcast %union.cvmx_usbcx_gintmsk* %13 to %struct.TYPE_9__*
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 1
  store i32 1, i32* %248, align 4
  %249 = bitcast %union.cvmx_usbcx_gintmsk* %13 to %struct.TYPE_9__*
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 2
  store i32 1, i32* %250, align 8
  %251 = bitcast %union.cvmx_usbcx_gintmsk* %13 to %struct.TYPE_9__*
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 4
  store i64 0, i64* %252, align 8
  %253 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %254 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @CVMX_USB_INITIALIZE_FLAGS_NO_DMA, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %92
  %260 = bitcast %union.cvmx_usbcx_gintmsk* %13 to %struct.TYPE_9__*
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 3
  store i32 1, i32* %261, align 4
  br label %262

262:                                              ; preds = %259, %92
  %263 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %264 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %265 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @CVMX_USBCX_GINTMSK(i32 %266)
  %268 = bitcast %union.cvmx_usbcx_gintmsk* %13 to i8**
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @cvmx_usb_write_csr32(%struct.octeon_hcd* %263, i32 %267, i8* %269)
  store i32 0, i32* %6, align 4
  br label %271

271:                                              ; preds = %282, %262
  %272 = load i32, i32* %6, align 4
  %273 = icmp slt i32 %272, 8
  br i1 %273, label %274, label %285

274:                                              ; preds = %271
  %275 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %276 = load i32, i32* %6, align 4
  %277 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %278 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @CVMX_USBCX_HCINTMSKX(i32 %276, i32 %279)
  %281 = call i32 @cvmx_usb_write_csr32(%struct.octeon_hcd* %275, i32 %280, i8* null)
  br label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %6, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %6, align 4
  br label %271

285:                                              ; preds = %271
  %286 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %287 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @CVMX_USBCX_GINTMSK(i32 %288)
  %290 = load i32, i32* @cvmx_usbcx_gintmsk, align 4
  %291 = load i32, i32* @prtintmsk, align 4
  %292 = call i32 @USB_SET_FIELD32(i32 %289, i32 %290, i32 %291, i32 1)
  %293 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %294 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @CVMX_USBCX_GINTMSK(i32 %295)
  %297 = load i32, i32* @cvmx_usbcx_gintmsk, align 4
  %298 = load i32, i32* @disconnintmsk, align 4
  %299 = call i32 @USB_SET_FIELD32(i32 %296, i32 %297, i32 %298, i32 1)
  %300 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %301 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %302 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @CVMX_USBCX_HCFG(i32 %303)
  %305 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %300, i32 %304)
  %306 = bitcast %union.cvmx_usbcx_hcfg* %9 to i8**
  store i8* %305, i8** %306, align 8
  %307 = bitcast %union.cvmx_usbcx_hcfg* %9 to %struct.TYPE_10__*
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 1
  store i64 0, i64* %308, align 8
  %309 = bitcast %union.cvmx_usbcx_hcfg* %9 to %struct.TYPE_10__*
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  store i64 0, i64* %310, align 8
  %311 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %312 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %313 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @CVMX_USBCX_HCFG(i32 %314)
  %316 = bitcast %union.cvmx_usbcx_hcfg* %9 to i8**
  %317 = load i8*, i8** %316, align 8
  %318 = call i32 @cvmx_usb_write_csr32(%struct.octeon_hcd* %311, i32 %315, i8* %317)
  %319 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %320 = call i32 @cvmx_fifo_setup(%struct.octeon_hcd* %319)
  %321 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %322 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %323 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @CVMX_USBCX_GINTSTS(i32 %324)
  %326 = call i8* @cvmx_usb_read_csr32(%struct.octeon_hcd* %321, i32 %325)
  %327 = bitcast %union.cvmx_usbcx_gintsts* %11 to i8**
  store i8* %326, i8** %327, align 8
  %328 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %329 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %330 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @CVMX_USBCX_GINTSTS(i32 %331)
  %333 = bitcast %union.cvmx_usbcx_gintsts* %11 to i8**
  %334 = load i8*, i8** %333, align 8
  %335 = call i32 @cvmx_usb_write_csr32(%struct.octeon_hcd* %328, i32 %332, i8* %334)
  %336 = load %struct.device*, %struct.device** %4, align 8
  %337 = bitcast %union.cvmx_usbcx_gintsts* %11 to i8**
  %338 = load i8*, i8** %337, align 8
  %339 = ptrtoint i8* %338 to i32
  %340 = call i32 @dev_dbg(%struct.device* %336, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %339)
  %341 = bitcast %union.cvmx_usbcx_gintsts* %11 to %struct.TYPE_11__*
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %351, label %345

345:                                              ; preds = %285
  %346 = bitcast %union.cvmx_usbcx_gintsts* %11 to %struct.TYPE_11__*
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %345
  store i32 0, i32* %3, align 4
  br label %368

351:                                              ; preds = %345, %285
  %352 = load i32, i32* %8, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %8, align 4
  %354 = icmp sge i32 %352, 5
  br i1 %354, label %355, label %358

355:                                              ; preds = %351
  %356 = load i32, i32* @EAGAIN, align 4
  %357 = sub nsw i32 0, %356
  store i32 %357, i32* %3, align 4
  br label %368

358:                                              ; preds = %351
  %359 = load %struct.device*, %struct.device** %4, align 8
  %360 = bitcast %union.cvmx_usbcx_gintsts* %11 to i8**
  %361 = load i8*, i8** %360, align 8
  %362 = ptrtoint i8* %361 to i32
  %363 = call i32 @dev_info(%struct.device* %359, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %362)
  %364 = call i32 @msleep(i32 50)
  %365 = load %struct.octeon_hcd*, %struct.octeon_hcd** %5, align 8
  %366 = call i32 @cvmx_usb_shutdown(%struct.octeon_hcd* %365)
  %367 = call i32 @msleep(i32 50)
  br label %16

368:                                              ; preds = %355, %350
  %369 = load i32, i32* %3, align 4
  ret i32 %369
}

declare dso_local i8* @cvmx_read64_uint64(i32) #1

declare dso_local i32 @CVMX_USBNX_CLK_CTL(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @octeon_get_clock_rate(...) #1

declare dso_local i32 @cvmx_write64_uint64(i32, i8*) #1

declare dso_local i32 @__delay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @CVMX_USBNX_USBP_CTL_STATUS(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cvmx_usb_write_csr32(%struct.octeon_hcd*, i32, i8*) #1

declare dso_local i32 @CVMX_USBCX_GAHBCFG(i32) #1

declare dso_local i8* @cvmx_usb_read_csr32(%struct.octeon_hcd*, i32) #1

declare dso_local i32 @CVMX_USBCX_GUSBCFG(i32) #1

declare dso_local i32 @CVMX_USBCX_GINTMSK(i32) #1

declare dso_local i32 @CVMX_USBCX_HCINTMSKX(i32, i32) #1

declare dso_local i32 @USB_SET_FIELD32(i32, i32, i32, i32) #1

declare dso_local i32 @CVMX_USBCX_HCFG(i32) #1

declare dso_local i32 @cvmx_fifo_setup(%struct.octeon_hcd*) #1

declare dso_local i32 @CVMX_USBCX_GINTSTS(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cvmx_usb_shutdown(%struct.octeon_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
