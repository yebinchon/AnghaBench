; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_conndone_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_conndone_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.dwc3 = type { i32, i64, i32, i32, i32, %struct.dwc3_ep**, i32, i32, i64, %struct.TYPE_7__ }
%struct.dwc3_ep = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@DWC3_DSTS = common dso_local global i32 0, align 4
@DWC3_DSTS_CONNECTSPD = common dso_local global i32 0, align 4
@dwc3_gadget_ep0_desc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@USB_SPEED_SUPER_PLUS = common dso_local global i32 0, align 4
@DWC3_REVISION_190A = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i32 0, align 4
@DWC3_REVISION_194A = common dso_local global i64 0, align 8
@DWC3_DCFG = common dso_local global i32 0, align 4
@DWC3_DCFG_LPM_CAP = common dso_local global i32 0, align 4
@DWC3_DCTL = common dso_local global i32 0, align 4
@DWC3_DCTL_HIRD_THRES_MASK = common dso_local global i32 0, align 4
@DWC3_DCTL_L1_HIBER_EN = common dso_local global i32 0, align 4
@DWC3_REVISION_240A = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"LPM Erratum not available on dwc3 revisions < 2.40a\0A\00", align 1
@DWC3_DEPCFG_ACTION_MODIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to enable %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_gadget_conndone_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_gadget_conndone_interrupt(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %7 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %8 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @DWC3_DSTS, align 4
  %11 = call i32 @dwc3_readl(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DWC3_DSTS_CONNECTSPD, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %83 [
    i32 128, label %19
    i32 129, label %30
    i32 131, label %50
    i32 132, label %61
    i32 130, label %72
  ]

19:                                               ; preds = %1
  %20 = call i8* @cpu_to_le16(i32 512)
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dwc3_gadget_ep0_desc, i32 0, i32 0), align 8
  %21 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %22 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 512, i32* %25, align 4
  %26 = load i32, i32* @USB_SPEED_SUPER_PLUS, align 4
  %27 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %28 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  br label %83

30:                                               ; preds = %1
  %31 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %32 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DWC3_REVISION_190A, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %38 = call i32 @dwc3_gadget_reset_interrupt(%struct.dwc3* %37)
  br label %39

39:                                               ; preds = %36, %30
  %40 = call i8* @cpu_to_le16(i32 512)
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dwc3_gadget_ep0_desc, i32 0, i32 0), align 8
  %41 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %42 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %41, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 512, i32* %45, align 4
  %46 = load i32, i32* @USB_SPEED_SUPER, align 4
  %47 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %48 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  br label %83

50:                                               ; preds = %1
  %51 = call i8* @cpu_to_le16(i32 64)
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dwc3_gadget_ep0_desc, i32 0, i32 0), align 8
  %52 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %53 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 64, i32* %56, align 4
  %57 = load i32, i32* @USB_SPEED_HIGH, align 4
  %58 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %59 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %58, i32 0, i32 9
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  br label %83

61:                                               ; preds = %1
  %62 = call i8* @cpu_to_le16(i32 64)
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dwc3_gadget_ep0_desc, i32 0, i32 0), align 8
  %63 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %64 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 64, i32* %67, align 4
  %68 = load i32, i32* @USB_SPEED_FULL, align 4
  %69 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %70 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  br label %83

72:                                               ; preds = %1
  %73 = call i8* @cpu_to_le16(i32 8)
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dwc3_gadget_ep0_desc, i32 0, i32 0), align 8
  %74 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %75 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %74, i32 0, i32 9
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 8, i32* %78, align 4
  %79 = load i32, i32* @USB_SPEED_LOW, align 4
  %80 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %81 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 8
  br label %83

83:                                               ; preds = %1, %72, %61, %50, %39, %19
  %84 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %85 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %84, i32 0, i32 9
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %91 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %90, i32 0, i32 5
  %92 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %91, align 8
  %93 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %92, i64 1
  %94 = load %struct.dwc3_ep*, %struct.dwc3_ep** %93, align 8
  %95 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %89, i32* %96, align 4
  %97 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %98 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DWC3_REVISION_194A, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %183

102:                                              ; preds = %83
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 129
  br i1 %104, label %105, label %183

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 128
  br i1 %107, label %108, label %183

108:                                              ; preds = %105
  %109 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %110 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @DWC3_DCFG, align 4
  %113 = call i32 @dwc3_readl(i32 %111, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* @DWC3_DCFG_LPM_CAP, align 4
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %118 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @DWC3_DCFG, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @dwc3_writel(i32 %119, i32 %120, i32 %121)
  %123 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %124 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @DWC3_DCTL, align 4
  %127 = call i32 @dwc3_readl(i32 %125, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @DWC3_DCTL_HIRD_THRES_MASK, align 4
  %129 = load i32, i32* @DWC3_DCTL_L1_HIBER_EN, align 4
  %130 = or i32 %128, %129
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %5, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %135 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %138 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 4
  %141 = or i32 %136, %140
  %142 = call i32 @DWC3_DCTL_HIRD_THRES(i32 %141)
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %5, align 4
  %145 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %146 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @DWC3_REVISION_240A, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %108
  %151 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %152 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %151, i32 0, i32 8
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br label %155

155:                                              ; preds = %150, %108
  %156 = phi i1 [ false, %108 ], [ %154, %150 ]
  %157 = zext i1 %156 to i32
  %158 = call i32 @WARN_ONCE(i32 %157, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %159 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %160 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %159, i32 0, i32 8
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %155
  %164 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %165 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @DWC3_REVISION_240A, align 8
  %168 = icmp sge i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %171 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @DWC3_DCTL_NYET_THRES(i32 %172)
  %174 = load i32, i32* %5, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %169, %163, %155
  %177 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %178 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @DWC3_DCTL, align 4
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @dwc3_writel(i32 %179, i32 %180, i32 %181)
  br label %199

183:                                              ; preds = %105, %102, %83
  %184 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %185 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @DWC3_DCTL, align 4
  %188 = call i32 @dwc3_readl(i32 %186, i32 %187)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* @DWC3_DCTL_HIRD_THRES_MASK, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %5, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %5, align 4
  %193 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %194 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @DWC3_DCTL, align 4
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @dwc3_writel(i32 %195, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %183, %176
  %200 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %201 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %200, i32 0, i32 5
  %202 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %201, align 8
  %203 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %202, i64 0
  %204 = load %struct.dwc3_ep*, %struct.dwc3_ep** %203, align 8
  store %struct.dwc3_ep* %204, %struct.dwc3_ep** %3, align 8
  %205 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %206 = load i32, i32* @DWC3_DEPCFG_ACTION_MODIFY, align 4
  %207 = call i32 @__dwc3_gadget_ep_enable(%struct.dwc3_ep* %205, i32 %206)
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* %4, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %199
  %211 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %212 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %215 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @dev_err(i32 %213, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %216)
  br label %237

218:                                              ; preds = %199
  %219 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %220 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %219, i32 0, i32 5
  %221 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %220, align 8
  %222 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %221, i64 1
  %223 = load %struct.dwc3_ep*, %struct.dwc3_ep** %222, align 8
  store %struct.dwc3_ep* %223, %struct.dwc3_ep** %3, align 8
  %224 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %225 = load i32, i32* @DWC3_DEPCFG_ACTION_MODIFY, align 4
  %226 = call i32 @__dwc3_gadget_ep_enable(%struct.dwc3_ep* %224, i32 %225)
  store i32 %226, i32* %4, align 4
  %227 = load i32, i32* %4, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %218
  %230 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %231 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %234 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @dev_err(i32 %232, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %210, %229, %218
  ret void
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @dwc3_gadget_reset_interrupt(%struct.dwc3*) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @DWC3_DCTL_HIRD_THRES(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @DWC3_DCTL_NYET_THRES(i32) #1

declare dso_local i32 @__dwc3_gadget_ep_enable(%struct.dwc3_ep*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
