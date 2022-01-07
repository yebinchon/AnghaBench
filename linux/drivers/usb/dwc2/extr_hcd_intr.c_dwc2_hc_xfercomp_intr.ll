; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_xfercomp_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_xfercomp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.dwc2_host_chan = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.dwc2_qtd = type { i32, i32, i64, %struct.dwc2_hcd_urb* }
%struct.dwc2_hcd_urb = type { i32, i32, i32 }

@DWC2_HC_XFER_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"--Host Channel %d Interrupt: Transfer Complete--\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"  Control setup transaction done\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"  Control data transfer done\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"  Control transfer complete\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@DWC2_HC_XFER_URB_COMPLETE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"  Bulk transfer complete\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"  Interrupt transfer complete\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"  Isochronous transfer complete\0A\00", align 1
@DWC2_HCSPLT_XACTPOS_ALL = common dso_local global i32 0, align 4
@HCINTMSK_XFERCOMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*)* @dwc2_hc_xfercomp_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_xfercomp_intr(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_host_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc2_qtd*, align 8
  %9 = alloca %struct.dwc2_hcd_urb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %8, align 8
  %13 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %14 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %13, i32 0, i32 3
  %15 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %14, align 8
  store %struct.dwc2_hcd_urb* %15, %struct.dwc2_hcd_urb** %9, align 8
  %16 = load i32, i32* @DWC2_HC_XFER_COMPLETE, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %18 = call i64 @dbg_hc(%struct.dwc2_host_chan* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %20, %4
  %27 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %28 = icmp ne %struct.dwc2_hcd_urb* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %265

30:                                               ; preds = %26
  %31 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %32 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %31, i32 0, i32 2
  %33 = call i32 @dwc2_hcd_get_pipe_type(i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %35 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %41 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dwc2_hcd_complete_xfer_ddma(%struct.dwc2_hsotg* %40, %struct.dwc2_host_chan* %41, i32 %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 128
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %270

48:                                               ; preds = %39
  br label %265

49:                                               ; preds = %30
  %50 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %51 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %49
  %57 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %58 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 128
  br i1 %60, label %61, label %86

61:                                               ; preds = %56
  %62 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %63 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %68 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %74 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %79 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %82 = call i64 @dwc2_xfercomp_isoc_split_in(%struct.dwc2_hsotg* %78, %struct.dwc2_host_chan* %79, i32 %80, %struct.dwc2_qtd* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %265

85:                                               ; preds = %77, %72
  br label %89

86:                                               ; preds = %66, %61, %56
  %87 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %88 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %89, %49
  %91 = load i32, i32* %11, align 4
  switch i32 %91, label %264 [
    i32 130, label %92
    i32 131, label %166
    i32 129, label %201
    i32 128, label %236
  ]

92:                                               ; preds = %90
  %93 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %94 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %159 [
    i32 133, label %96
    i32 134, label %113
    i32 132, label %137
  ]

96:                                               ; preds = %92
  %97 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %98 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %103 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %102, i32 0, i32 0
  store i32 134, i32* %103, align 8
  br label %107

104:                                              ; preds = %96
  %105 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %106 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %105, i32 0, i32 0
  store i32 132, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %109 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @DWC2_HC_XFER_COMPLETE, align 4
  store i32 %112, i32* %10, align 4
  br label %159

113:                                              ; preds = %92
  %114 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %115 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %118 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %119 = call i32 @dwc2_update_urb_state(%struct.dwc2_hsotg* %114, %struct.dwc2_host_chan* %115, i32 %116, %struct.dwc2_hcd_urb* %117, %struct.dwc2_qtd* %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %113
  %123 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %124 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %123, i32 0, i32 0
  store i32 132, i32* %124, align 8
  %125 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %126 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %135

129:                                              ; preds = %113
  %130 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %131 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %134 = call i32 @dwc2_hcd_save_data_toggle(%struct.dwc2_hsotg* %130, %struct.dwc2_host_chan* %131, i32 %132, %struct.dwc2_qtd* %133)
  br label %135

135:                                              ; preds = %129, %122
  %136 = load i32, i32* @DWC2_HC_XFER_COMPLETE, align 4
  store i32 %136, i32* %10, align 4
  br label %159

137:                                              ; preds = %92
  %138 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %139 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %142 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %143 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @EINPROGRESS, align 4
  %146 = sub nsw i32 0, %145
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %137
  %149 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %150 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %149, i32 0, i32 0
  store i32 0, i32* %150, align 4
  br label %151

151:                                              ; preds = %148, %137
  %152 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %153 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %154 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %155 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @dwc2_host_complete(%struct.dwc2_hsotg* %152, %struct.dwc2_qtd* %153, i32 %156)
  %158 = load i32, i32* @DWC2_HC_XFER_URB_COMPLETE, align 4
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %92, %151, %135, %107
  %160 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %161 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @dwc2_complete_non_periodic_xfer(%struct.dwc2_hsotg* %160, %struct.dwc2_host_chan* %161, i32 %162, %struct.dwc2_qtd* %163, i32 %164)
  br label %264

166:                                              ; preds = %90
  %167 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %168 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %172 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %175 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %176 = call i32 @dwc2_update_urb_state(%struct.dwc2_hsotg* %171, %struct.dwc2_host_chan* %172, i32 %173, %struct.dwc2_hcd_urb* %174, %struct.dwc2_qtd* %175)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %166
  %180 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %181 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %182 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %183 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @dwc2_host_complete(%struct.dwc2_hsotg* %180, %struct.dwc2_qtd* %181, i32 %184)
  %186 = load i32, i32* @DWC2_HC_XFER_URB_COMPLETE, align 4
  store i32 %186, i32* %10, align 4
  br label %189

187:                                              ; preds = %166
  %188 = load i32, i32* @DWC2_HC_XFER_COMPLETE, align 4
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %187, %179
  %190 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %191 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %192 = load i32, i32* %7, align 4
  %193 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %194 = call i32 @dwc2_hcd_save_data_toggle(%struct.dwc2_hsotg* %190, %struct.dwc2_host_chan* %191, i32 %192, %struct.dwc2_qtd* %193)
  %195 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %196 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @dwc2_complete_non_periodic_xfer(%struct.dwc2_hsotg* %195, %struct.dwc2_host_chan* %196, i32 %197, %struct.dwc2_qtd* %198, i32 %199)
  br label %264

201:                                              ; preds = %90
  %202 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %203 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %204, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %206 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %207 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %210 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %211 = call i32 @dwc2_update_urb_state(%struct.dwc2_hsotg* %206, %struct.dwc2_host_chan* %207, i32 %208, %struct.dwc2_hcd_urb* %209, %struct.dwc2_qtd* %210)
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %201
  %215 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %216 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %217 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %9, align 8
  %218 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @dwc2_host_complete(%struct.dwc2_hsotg* %215, %struct.dwc2_qtd* %216, i32 %219)
  %221 = load i32, i32* @DWC2_HC_XFER_URB_COMPLETE, align 4
  store i32 %221, i32* %10, align 4
  br label %224

222:                                              ; preds = %201
  %223 = load i32, i32* @DWC2_HC_XFER_COMPLETE, align 4
  store i32 %223, i32* %10, align 4
  br label %224

224:                                              ; preds = %222, %214
  %225 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %226 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %227 = load i32, i32* %7, align 4
  %228 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %229 = call i32 @dwc2_hcd_save_data_toggle(%struct.dwc2_hsotg* %225, %struct.dwc2_host_chan* %226, i32 %227, %struct.dwc2_qtd* %228)
  %230 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %231 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %232 = load i32, i32* %7, align 4
  %233 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @dwc2_complete_periodic_xfer(%struct.dwc2_hsotg* %230, %struct.dwc2_host_chan* %231, i32 %232, %struct.dwc2_qtd* %233, i32 %234)
  br label %264

236:                                              ; preds = %90
  %237 = call i32 (...) @dbg_perio()
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %241 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %242, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %244

244:                                              ; preds = %239, %236
  %245 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %246 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @DWC2_HCSPLT_XACTPOS_ALL, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %257

250:                                              ; preds = %244
  %251 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %252 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %253 = load i32, i32* %7, align 4
  %254 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %255 = load i32, i32* @DWC2_HC_XFER_COMPLETE, align 4
  %256 = call i32 @dwc2_update_isoc_urb_state(%struct.dwc2_hsotg* %251, %struct.dwc2_host_chan* %252, i32 %253, %struct.dwc2_qtd* %254, i32 %255)
  store i32 %256, i32* %10, align 4
  br label %257

257:                                              ; preds = %250, %244
  %258 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %259 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %260 = load i32, i32* %7, align 4
  %261 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @dwc2_complete_periodic_xfer(%struct.dwc2_hsotg* %258, %struct.dwc2_host_chan* %259, i32 %260, %struct.dwc2_qtd* %261, i32 %262)
  br label %264

264:                                              ; preds = %90, %257, %224, %189, %159
  br label %265

265:                                              ; preds = %264, %84, %48, %29
  %266 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* @HCINTMSK_XFERCOMPL, align 4
  %269 = call i32 @disable_hc_int(%struct.dwc2_hsotg* %266, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %265, %47
  ret void
}

declare dso_local i64 @dbg_hc(%struct.dwc2_host_chan*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, ...) #1

declare dso_local i32 @dwc2_hcd_get_pipe_type(i32*) #1

declare dso_local i32 @dwc2_hcd_complete_xfer_ddma(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, i32) #1

declare dso_local i64 @dwc2_xfercomp_isoc_split_in(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*) #1

declare dso_local i32 @dwc2_update_urb_state(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_hcd_urb*, %struct.dwc2_qtd*) #1

declare dso_local i32 @dwc2_hcd_save_data_toggle(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*) #1

declare dso_local i32 @dwc2_host_complete(%struct.dwc2_hsotg*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_complete_non_periodic_xfer(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_complete_periodic_xfer(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dbg_perio(...) #1

declare dso_local i32 @dwc2_update_isoc_urb_state(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @disable_hc_int(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
