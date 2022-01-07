; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hc_init_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hc_init_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dwc2_host_chan = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dwc2_qtd = type { i64, i32, i32, i32, %struct.dwc2_hcd_urb* }
%struct.dwc2_hcd_urb = type { i32, i32, i32, i32, %struct.dwc2_hcd_iso_packet_desc*, i32, i32 }
%struct.dwc2_hcd_iso_packet_desc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"  Control setup transaction\0A\00", align 1
@DWC2_HC_PID_SETUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"  Control data transaction\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"  Control status transaction\0A\00", align 1
@DWC2_HC_PID_DATA1 = common dso_local global i32 0, align 4
@DWC2_HCSPLT_XACTPOS_ALL = common dso_local global i32 0, align 4
@DWC2_HCSPLT_XACTPOS_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*)* @dwc2_hc_init_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_init_xfer(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, %struct.dwc2_qtd* %2) #0 {
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.dwc2_host_chan*, align 8
  %6 = alloca %struct.dwc2_qtd*, align 8
  %7 = alloca %struct.dwc2_hcd_urb*, align 8
  %8 = alloca %struct.dwc2_hcd_iso_packet_desc*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %5, align 8
  store %struct.dwc2_qtd* %2, %struct.dwc2_qtd** %6, align 8
  %9 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %6, align 8
  %10 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %9, i32 0, i32 4
  %11 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %10, align 8
  store %struct.dwc2_hcd_urb* %11, %struct.dwc2_hcd_urb** %7, align 8
  %12 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %13 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %12, i32 0, i32 5
  %14 = call i32 @dwc2_hcd_get_pipe_type(i32* %13)
  switch i32 %14, label %208 [
    i32 130, label %15
    i32 131, label %114
    i32 129, label %117
    i32 128, label %120
  ]

15:                                               ; preds = %3
  %16 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %17 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %16, i32 0, i32 0
  store i32 130, i32* %17, align 4
  %18 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %6, align 8
  %19 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %113 [
    i32 133, label %21
    i32 134, label %53
    i32 132, label %63
  ]

21:                                               ; preds = %15
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_vdbg(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %27 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %26, i32 0, i32 7
  store i32 0, i32* %27, align 4
  %28 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %29 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @DWC2_HC_PID_SETUP, align 4
  %31 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %32 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %21
  %39 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %40 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %43 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %50

44:                                               ; preds = %21
  %45 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %46 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %49 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %52 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %51, i32 0, i32 4
  store i32 8, i32* %52, align 4
  br label %113

53:                                               ; preds = %15
  %54 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %55 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_vdbg(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %6, align 8
  %59 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %62 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  br label %113

63:                                               ; preds = %15
  %64 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %65 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_vdbg(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %69 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %74 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  br label %81

75:                                               ; preds = %63
  %76 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %77 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %76, i32 0, i32 5
  %78 = call i32 @dwc2_hcd_is_pipe_out(i32* %77)
  %79 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %80 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %72
  %82 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %83 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %88 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %87, i32 0, i32 7
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* @DWC2_HC_PID_DATA1, align 4
  %91 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %92 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %94 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %93, i32 0, i32 4
  store i32 0, i32* %94, align 4
  %95 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %96 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %89
  %101 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %102 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %105 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  br label %112

106:                                              ; preds = %89
  %107 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %108 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %111 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %106, %100
  br label %113

113:                                              ; preds = %15, %112, %53, %50
  br label %208

114:                                              ; preds = %3
  %115 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %116 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %115, i32 0, i32 0
  store i32 131, i32* %116, align 4
  br label %208

117:                                              ; preds = %3
  %118 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %119 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %118, i32 0, i32 0
  store i32 129, i32* %119, align 4
  br label %208

120:                                              ; preds = %3
  %121 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %122 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %121, i32 0, i32 0
  store i32 128, i32* %122, align 4
  %123 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %124 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %208

129:                                              ; preds = %120
  %130 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %131 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %130, i32 0, i32 4
  %132 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %131, align 8
  %133 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %6, align 8
  %134 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %132, i64 %135
  store %struct.dwc2_hcd_iso_packet_desc* %136, %struct.dwc2_hcd_iso_packet_desc** %8, align 8
  %137 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %8, align 8
  %138 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %137, i32 0, i32 2
  store i32 0, i32* %138, align 4
  %139 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %140 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %129
  %145 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %146 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %149 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %8, align 8
  %151 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %6, align 8
  %154 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %152, %155
  %157 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %158 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %178

161:                                              ; preds = %129
  %162 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %7, align 8
  %163 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %166 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %8, align 8
  %168 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %6, align 8
  %171 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %169, %172
  %174 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %175 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %161, %144
  %179 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %8, align 8
  %180 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %6, align 8
  %183 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %181, %184
  %186 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %187 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 4
  %188 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %189 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @DWC2_HCSPLT_XACTPOS_ALL, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %207

193:                                              ; preds = %178
  %194 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %195 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = icmp sle i32 %196, 188
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load i32, i32* @DWC2_HCSPLT_XACTPOS_ALL, align 4
  %200 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %201 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %200, i32 0, i32 5
  store i32 %199, i32* %201, align 4
  br label %206

202:                                              ; preds = %193
  %203 = load i32, i32* @DWC2_HCSPLT_XACTPOS_BEGIN, align 4
  %204 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %205 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %202, %198
  br label %207

207:                                              ; preds = %206, %178
  br label %208

208:                                              ; preds = %3, %207, %128, %117, %114, %113
  ret void
}

declare dso_local i32 @dwc2_hcd_get_pipe_type(i32*) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @dwc2_hcd_is_pipe_out(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
