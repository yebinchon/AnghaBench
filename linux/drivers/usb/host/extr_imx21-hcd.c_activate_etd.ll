; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_activate_etd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_activate_etd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx21 = type { i64, i32, %struct.etd_priv* }
%struct.etd_priv = type { i32, i64, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }

@TD_DIR_IN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed bounce alloc\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed bounce map\0A\00", align 1
@USBH_ETDDONESTAT = common dso_local global i32 0, align 4
@USBH_ETDDONEEN = common dso_local global i32 0, align 4
@USBH_XFILLSTAT = common dso_local global i32 0, align 4
@USBH_YFILLSTAT = common dso_local global i32 0, align 4
@USB_ETDDMACHANLCLR = common dso_local global i32 0, align 4
@USBH_XBUFSTAT = common dso_local global i32 0, align 4
@USBH_YBUFSTAT = common dso_local global i32 0, align 4
@USB_ETDDMAEN = common dso_local global i32 0, align 4
@activated = common dso_local global i32 0, align 4
@USBH_ETDENSET = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@USBH_FRMNUB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx21*, i32, i64)* @activate_etd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate_etd(%struct.imx21* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.imx21*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.etd_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.imx21* %0, %struct.imx21** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.imx21*, %struct.imx21** %4, align 8
  %13 = getelementptr inbounds %struct.imx21, %struct.imx21* %12, i32 0, i32 2
  %14 = load %struct.etd_priv*, %struct.etd_priv** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %14, i64 %16
  store %struct.etd_priv* %17, %struct.etd_priv** %8, align 8
  %18 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %19 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %119

22:                                               ; preds = %3
  %23 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %24 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @unsuitable_for_dma(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %119

28:                                               ; preds = %22
  %29 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %30 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %33 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %31, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @TD_DIR_IN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.imx21*, %struct.imx21** %4, align 8
  %42 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %43 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %46 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %49 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @copy_to_dmem(%struct.imx21* %41, i32 %44, i32 %47, i64 %50)
  br label %52

52:                                               ; preds = %40, %36
  %53 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %54 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %118

55:                                               ; preds = %28
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @TD_DIR_IN, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %60, i32* %9, align 4
  %61 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %62 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call i32 @kmalloc(i64 %63, i32 %64)
  %66 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %67 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 8
  br label %80

68:                                               ; preds = %55
  %69 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %69, i32* %9, align 4
  %70 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %71 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %74 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @GFP_ATOMIC, align 4
  %77 = call i32 @kmemdup(i32 %72, i64 %75, i32 %76)
  %78 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %79 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %68, %59
  %81 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %82 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.imx21*, %struct.imx21** %4, align 8
  %87 = getelementptr inbounds %struct.imx21, %struct.imx21* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %200

90:                                               ; preds = %80
  %91 = load %struct.imx21*, %struct.imx21** %4, align 8
  %92 = getelementptr inbounds %struct.imx21, %struct.imx21* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %95 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %98 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @dma_map_single(i32 %93, i32 %96, i64 %99, i32 %100)
  %102 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %103 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.imx21*, %struct.imx21** %4, align 8
  %105 = getelementptr inbounds %struct.imx21, %struct.imx21* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %108 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @dma_mapping_error(i32 %106, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %90
  %113 = load %struct.imx21*, %struct.imx21** %4, align 8
  %114 = getelementptr inbounds %struct.imx21, %struct.imx21* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %195

117:                                              ; preds = %90
  br label %118

118:                                              ; preds = %117, %52
  br label %119

119:                                              ; preds = %118, %22, %3
  %120 = load %struct.imx21*, %struct.imx21** %4, align 8
  %121 = load i32, i32* @USBH_ETDDONESTAT, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @clear_toggle_bit(%struct.imx21* %120, i32 %121, i32 %122)
  %124 = load %struct.imx21*, %struct.imx21** %4, align 8
  %125 = load i32, i32* @USBH_ETDDONEEN, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @set_register_bits(%struct.imx21* %124, i32 %125, i32 %126)
  %128 = load %struct.imx21*, %struct.imx21** %4, align 8
  %129 = load i32, i32* @USBH_XFILLSTAT, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @clear_toggle_bit(%struct.imx21* %128, i32 %129, i32 %130)
  %132 = load %struct.imx21*, %struct.imx21** %4, align 8
  %133 = load i32, i32* @USBH_YFILLSTAT, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @clear_toggle_bit(%struct.imx21* %132, i32 %133, i32 %134)
  %136 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %137 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %167

140:                                              ; preds = %119
  %141 = load %struct.imx21*, %struct.imx21** %4, align 8
  %142 = load i32, i32* @USB_ETDDMACHANLCLR, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @set_register_bits(%struct.imx21* %141, i32 %142, i32 %143)
  %145 = load %struct.imx21*, %struct.imx21** %4, align 8
  %146 = load i32, i32* @USBH_XBUFSTAT, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @clear_toggle_bit(%struct.imx21* %145, i32 %146, i32 %147)
  %149 = load %struct.imx21*, %struct.imx21** %4, align 8
  %150 = load i32, i32* @USBH_YBUFSTAT, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @clear_toggle_bit(%struct.imx21* %149, i32 %150, i32 %151)
  %153 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %154 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.imx21*, %struct.imx21** %4, align 8
  %157 = getelementptr inbounds %struct.imx21, %struct.imx21* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i64 @USB_ETDSMSA(i32 %159)
  %161 = add nsw i64 %158, %160
  %162 = call i32 @writel(i32 %155, i64 %161)
  %163 = load %struct.imx21*, %struct.imx21** %4, align 8
  %164 = load i32, i32* @USB_ETDDMAEN, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @set_register_bits(%struct.imx21* %163, i32 %164, i32 %165)
  br label %181

167:                                              ; preds = %119
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* @TD_DIR_IN, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load %struct.imx21*, %struct.imx21** %4, align 8
  %173 = load i32, i32* @USBH_XFILLSTAT, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @set_toggle_bit(%struct.imx21* %172, i32 %173, i32 %174)
  %176 = load %struct.imx21*, %struct.imx21** %4, align 8
  %177 = load i32, i32* @USBH_YFILLSTAT, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @set_toggle_bit(%struct.imx21* %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %171, %167
  br label %181

181:                                              ; preds = %180, %140
  %182 = load %struct.imx21*, %struct.imx21** %4, align 8
  %183 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %184 = load i32, i32* @activated, align 4
  %185 = call i32 @DEBUG_LOG_FRAME(%struct.imx21* %182, %struct.etd_priv* %183, i32 %184)
  %186 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %187 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %186, i32 0, i32 3
  store i32 1, i32* %187, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.imx21*, %struct.imx21** %4, align 8
  %190 = getelementptr inbounds %struct.imx21, %struct.imx21* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @USBH_ETDENSET, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @writel(i32 %188, i64 %193)
  br label %209

195:                                              ; preds = %112
  %196 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %197 = getelementptr inbounds %struct.etd_priv, %struct.etd_priv* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @kfree(i32 %198)
  br label %200

200:                                              ; preds = %195, %85
  %201 = load %struct.imx21*, %struct.imx21** %4, align 8
  %202 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %203 = call i32 @free_dmem(%struct.imx21* %201, %struct.etd_priv* %202)
  %204 = load %struct.imx21*, %struct.imx21** %4, align 8
  %205 = load %struct.etd_priv*, %struct.etd_priv** %8, align 8
  %206 = load i32, i32* @ENOMEM, align 4
  %207 = sub nsw i32 0, %206
  %208 = call i32 @nonisoc_urb_completed_for_etd(%struct.imx21* %204, %struct.etd_priv* %205, i32 %207)
  br label %209

209:                                              ; preds = %200, %181
  ret void
}

declare dso_local i64 @unsuitable_for_dma(i32) #1

declare dso_local i32 @copy_to_dmem(%struct.imx21*, i32, i32, i64) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i32 @kmemdup(i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @clear_toggle_bit(%struct.imx21*, i32, i32) #1

declare dso_local i32 @set_register_bits(%struct.imx21*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @USB_ETDSMSA(i32) #1

declare dso_local i32 @set_toggle_bit(%struct.imx21*, i32, i32) #1

declare dso_local i32 @DEBUG_LOG_FRAME(%struct.imx21*, %struct.etd_priv*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_dmem(%struct.imx21*, %struct.etd_priv*) #1

declare dso_local i32 @nonisoc_urb_completed_for_etd(%struct.imx21*, %struct.etd_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
