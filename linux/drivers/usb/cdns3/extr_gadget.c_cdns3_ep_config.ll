; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_ep_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_ep_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, i32, i32, i32, i32, i32, %struct.cdns3_device* }
%struct.cdns3_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@USB_ENDPOINT_XFER_ISOC = common dso_local global i32 0, align 4
@CDNS3_EP_BUF_SIZE = common dso_local global i32 0, align 4
@DEV_VER_V2 = common dso_local global i32 0, align 4
@EP_CFG_TDL_CHK = common dso_local global i32 0, align 4
@CDNS3_EP_ISO_HS_MULT = common dso_local global i32 0, align 4
@CDNS3_EP_ISO_SS_BURST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"onchip mem is full, ep is invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Configure %s: with val %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdns3_ep_config(%struct.cdns3_endpoint* %0) #0 {
  %2 = alloca %struct.cdns3_endpoint*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdns3_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %2, align 8
  %12 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %13 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %19 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %18, i32 0, i32 6
  %20 = load %struct.cdns3_device*, %struct.cdns3_device** %19, align 8
  store %struct.cdns3_device* %20, %struct.cdns3_device** %4, align 8
  %21 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %22 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %25 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %23, %26
  store i32 %27, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %28 = load i32, i32* @CDNS3_EP_BUF_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %31 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %32 = call i32 @cdns3_configure_dmult(%struct.cdns3_device* %30, %struct.cdns3_endpoint* %31)
  %33 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %34 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %82 [
    i32 131, label %36
    i32 132, label %59
  ]

36:                                               ; preds = %1
  %37 = call i32 @EP_CFG_EPTYPE(i32 131)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %39 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DEV_VER_V2, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %45 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43, %36
  %49 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %50 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DEV_VER_V2, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48, %43
  %55 = load i32, i32* @EP_CFG_TDL_CHK, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %48
  br label %89

59:                                               ; preds = %1
  %60 = call i32 @EP_CFG_EPTYPE(i32 132)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %62 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DEV_VER_V2, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %68 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66, %59
  %72 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %73 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DEV_VER_V2, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71, %66
  %78 = load i32, i32* @EP_CFG_TDL_CHK, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %71
  br label %89

82:                                               ; preds = %1
  %83 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %84 = call i32 @EP_CFG_EPTYPE(i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* @CDNS3_EP_ISO_HS_MULT, align 4
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %82, %81, %58
  %90 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %91 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %130 [
    i32 130, label %94
    i32 129, label %99
    i32 128, label %104
  ]

94:                                               ; preds = %89
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1023, i32 64
  store i32 %98, i32* %6, align 4
  br label %131

99:                                               ; preds = %89
  %100 = load i32, i32* %3, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1024, i32 512
  store i32 %103, i32* %6, align 4
  br label %131

104:                                              ; preds = %89
  store i32 0, i32* %10, align 4
  store i32 1024, i32* %6, align 4
  %105 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %106 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %104
  %111 = load i32, i32* @CDNS3_EP_ISO_SS_BURST, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  %117 = mul nsw i32 %114, %116
  store i32 %117, i32* %9, align 4
  %118 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %119 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %120, 1
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %122, %110
  br label %129

126:                                              ; preds = %104
  %127 = load i32, i32* @CDNS3_EP_BUF_SIZE, align 4
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %126, %125
  br label %131

130:                                              ; preds = %89
  br label %197

131:                                              ; preds = %129, %99, %94
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 1024
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %136 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %135, i32 0, i32 4
  store i32 128, i32* %136, align 8
  br label %147

137:                                              ; preds = %131
  %138 = load i32, i32* %6, align 4
  %139 = icmp sge i32 %138, 512
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %142 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %141, i32 0, i32 4
  store i32 64, i32* %142, align 8
  br label %146

143:                                              ; preds = %137
  %144 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %145 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %144, i32 0, i32 4
  store i32 16, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %134
  %148 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  %151 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %152 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = call i32 @cdns3_ep_onchip_buffer_reserve(%struct.cdns3_device* %148, i32 %150, i32 %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %147
  %162 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %163 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dev_err(i32 %164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %197

166:                                              ; preds = %147
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @EP_CFG_MAXPKTSIZE(i32 %167)
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @EP_CFG_MULT(i32 %169)
  %171 = or i32 %168, %170
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @EP_CFG_BUFFERING(i32 %172)
  %174 = or i32 %171, %173
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @EP_CFG_MAXBURST(i32 %175)
  %177 = or i32 %174, %176
  %178 = load i32, i32* %8, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %8, align 4
  %180 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @cdns3_select_ep(%struct.cdns3_device* %180, i32 %181)
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %185 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = call i32 @writel(i32 %183, i32* %187)
  %189 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %190 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %193 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @dev_dbg(i32 %191, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %166, %161, %130
  ret void
}

declare dso_local i32 @cdns3_configure_dmult(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

declare dso_local i32 @EP_CFG_EPTYPE(i32) #1

declare dso_local i32 @cdns3_ep_onchip_buffer_reserve(%struct.cdns3_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @EP_CFG_MAXPKTSIZE(i32) #1

declare dso_local i32 @EP_CFG_MULT(i32) #1

declare dso_local i32 @EP_CFG_BUFFERING(i32) #1

declare dso_local i32 @EP_CFG_MAXBURST(i32) #1

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
