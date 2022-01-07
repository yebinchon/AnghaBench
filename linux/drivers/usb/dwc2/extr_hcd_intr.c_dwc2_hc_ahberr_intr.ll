; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_ahberr_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_ahberr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dwc2_host_chan = type { i32 }
%struct.dwc2_qtd = type { %struct.dwc2_hcd_urb* }
%struct.dwc2_hcd_urb = type { i8*, i8*, i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"--Host Channel %d Interrupt: AHB Error--\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"AHB ERROR, Channel %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"  hcchar 0x%08x, hcsplt 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"  hctsiz 0x%08x, hc_dma 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"  Device address: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"  Endpoint: %d, %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"CONTROL\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"BULK\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"INTERRUPT\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"ISOCHRONOUS\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"  Endpoint type: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"HIGH\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"FULL\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"LOW\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"  Speed: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"  Max packet size: %d (mult %d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"  Data buffer length: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"  Transfer buffer: %p, Transfer DMA: %08lx\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"  Setup buffer: %p, Setup DMA: %08lx\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"  Interval: %d\0A\00", align 1
@DWC2_HC_XFER_AHB_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HCINTMSK_AHBERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*)* @dwc2_hc_ahberr_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_ahberr_intr(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_host_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc2_qtd*, align 8
  %9 = alloca %struct.dwc2_hcd_urb*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %8, align 8
  %16 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %17 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %16, i32 0, i32 0
  %18 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %17, align 8
  store %struct.dwc2_hcd_urb* %18, %struct.dwc2_hcd_urb** %9, align 8
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %20 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %25 = icmp ne %struct.dwc2_hcd_urb* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %173

27:                                               ; preds = %4
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %29 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %30 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %31 = call i32 @dwc2_hc_handle_tt_clear(%struct.dwc2_hsotg* %28, %struct.dwc2_host_chan* %29, %struct.dwc2_qtd* %30)
  %32 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @HCCHAR(i32 %33)
  %35 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %32, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @HCSPLT(i32 %37)
  %39 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %36, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @HCTSIZ(i32 %41)
  %43 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %40, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @HCDMA(i32 %45)
  %47 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %44, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %49 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %54 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %60 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %66 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %69 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %68, i32 0, i32 6
  %70 = call i8* @dwc2_hcd_get_dev_addr(i32* %69)
  %71 = call i32 (i32, i8*, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  %72 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %73 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %76 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %75, i32 0, i32 6
  %77 = call i32 @dwc2_hcd_get_ep_num(i32* %76)
  %78 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %79 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %78, i32 0, i32 6
  %80 = call i64 @dwc2_hcd_is_pipe_in(i32* %79)
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %84 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %77, i8* %83)
  %85 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %86 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %85, i32 0, i32 6
  %87 = call i32 @dwc2_hcd_get_pipe_type(i32* %86)
  switch i32 %87, label %92 [
    i32 133, label %88
    i32 134, label %89
    i32 132, label %90
    i32 131, label %91
  ]

88:                                               ; preds = %27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %93

89:                                               ; preds = %27
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %93

90:                                               ; preds = %27
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %93

91:                                               ; preds = %27
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %93

92:                                               ; preds = %27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %93

93:                                               ; preds = %92, %91, %90, %89, %88
  %94 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %95 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %97)
  %99 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %100 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %105 [
    i32 129, label %102
    i32 130, label %103
    i32 128, label %104
  ]

102:                                              ; preds = %93
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %11, align 8
  br label %106

103:                                              ; preds = %93
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %11, align 8
  br label %106

104:                                              ; preds = %93
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %11, align 8
  br label %106

105:                                              ; preds = %93
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  br label %106

106:                                              ; preds = %105, %104, %103, %102
  %107 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %108 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 (i32, i8*, ...) @dev_err(i32 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* %110)
  %112 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %113 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %116 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %115, i32 0, i32 6
  %117 = call i32 @dwc2_hcd_get_maxp(i32* %116)
  %118 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %119 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %118, i32 0, i32 6
  %120 = call i32 @dwc2_hcd_get_maxp_mult(i32* %119)
  %121 = call i32 (i32, i8*, ...) @dev_err(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 %117, i32 %120)
  %122 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %123 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %126 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i8* %127)
  %129 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %130 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %133 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %136 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = call i32 (i32, i8*, ...) @dev_err(i32 %131, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0), i32 %134, i64 %137)
  %139 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %140 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %143 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %146 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i32, i8*, ...) @dev_err(i32 %141, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i32 %144, i64 %147)
  %149 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %150 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %153 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i32, i8*, ...) @dev_err(i32 %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* %154)
  %156 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %157 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %106
  %162 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %163 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @DWC2_HC_XFER_AHB_ERR, align 4
  %166 = call i32 @dwc2_hcd_complete_xfer_ddma(%struct.dwc2_hsotg* %162, %struct.dwc2_host_chan* %163, i32 %164, i32 %165)
  br label %178

167:                                              ; preds = %106
  %168 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %169 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %170 = load i32, i32* @EIO, align 4
  %171 = sub nsw i32 0, %170
  %172 = call i32 @dwc2_host_complete(%struct.dwc2_hsotg* %168, %struct.dwc2_qtd* %169, i32 %171)
  br label %173

173:                                              ; preds = %167, %26
  %174 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %175 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %176 = load i32, i32* @DWC2_HC_XFER_AHB_ERR, align 4
  %177 = call i32 @dwc2_hc_halt(%struct.dwc2_hsotg* %174, %struct.dwc2_host_chan* %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %161
  %179 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @HCINTMSK_AHBERR, align 4
  %182 = call i32 @disable_hc_int(%struct.dwc2_hsotg* %179, i32 %180, i32 %181)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dwc2_hc_handle_tt_clear(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @HCCHAR(i32) #1

declare dso_local i32 @HCSPLT(i32) #1

declare dso_local i32 @HCTSIZ(i32) #1

declare dso_local i32 @HCDMA(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i8* @dwc2_hcd_get_dev_addr(i32*) #1

declare dso_local i32 @dwc2_hcd_get_ep_num(i32*) #1

declare dso_local i64 @dwc2_hcd_is_pipe_in(i32*) #1

declare dso_local i32 @dwc2_hcd_get_pipe_type(i32*) #1

declare dso_local i32 @dwc2_hcd_get_maxp(i32*) #1

declare dso_local i32 @dwc2_hcd_get_maxp_mult(i32*) #1

declare dso_local i32 @dwc2_hcd_complete_xfer_ddma(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, i32) #1

declare dso_local i32 @dwc2_host_complete(%struct.dwc2_hsotg*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_hc_halt(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32) #1

declare dso_local i32 @disable_hc_int(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
