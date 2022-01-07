; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-omap.c_ohci_hcd_omap_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-omap.c_ohci_hcd_omap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.usb_hcd = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"invalid num_resources: %i\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@IORESOURCE_IRQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid resource type\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"usb_hhc_ck\00", align 1
@usb_host_ck = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"usb_dc_ck\00", align 1
@usb_dc_ck = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"lb_ck\00", align 1
@ohci_omap_hc_driver = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hcd_name = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"request_mem_region failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"can't ioremap OHCI HCD\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ohci_hcd_omap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_hcd_omap_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.usb_hcd* null, %struct.usb_hcd** %6, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %189

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IORESOURCE_MEM, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %20
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IORESOURCE_IRQ, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %29, %20
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 1
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %189

44:                                               ; preds = %29
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 1
  %47 = call i32 @clk_get(i32* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %47, i32* @usb_host_ck, align 4
  %48 = load i32, i32* @usb_host_ck, align 4
  %49 = call i64 @IS_ERR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @usb_host_ck, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %189

54:                                               ; preds = %44
  %55 = call i32 (...) @cpu_is_omap15xx()
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 1
  %60 = call i32 @clk_get(i32* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %60, i32* @usb_dc_ck, align 4
  br label %65

61:                                               ; preds = %54
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 1
  %64 = call i32 @clk_get(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %64, i32* @usb_dc_ck, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* @usb_dc_ck, align 4
  %67 = call i64 @IS_ERR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* @usb_host_ck, align 4
  %71 = call i32 @clk_put(i32 %70)
  %72 = load i32, i32* @usb_dc_ck, align 4
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %189

74:                                               ; preds = %65
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 1
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 1
  %79 = call i32 @dev_name(i32* %78)
  %80 = call %struct.usb_hcd* @usb_create_hcd(i32* @ohci_omap_hc_driver, i32* %76, i32 %79)
  store %struct.usb_hcd* %80, %struct.usb_hcd** %6, align 8
  %81 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %82 = icmp ne %struct.usb_hcd* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %183

86:                                               ; preds = %74
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %94 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %100, %106
  %108 = add nsw i64 %107, 1
  %109 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %110 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %112 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %115 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @hcd_name, align 4
  %118 = call i32 @request_mem_region(i64 %113, i64 %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %86
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 1
  %123 = call i32 @dev_dbg(i32* %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* @EBUSY, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %180

126:                                              ; preds = %86
  %127 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %128 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %131 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @ioremap(i64 %129, i64 %132)
  %134 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %135 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %137 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %126
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 1
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %172

146:                                              ; preds = %126
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = call i32 @platform_get_irq(%struct.platform_device* %147, i32 0)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* @ENXIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %167

154:                                              ; preds = %146
  %155 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @usb_add_hcd(%struct.usb_hcd* %155, i32 %156, i32 0)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %167

161:                                              ; preds = %154
  %162 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %163 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @device_wakeup_enable(i32 %165)
  store i32 0, i32* %2, align 4
  br label %189

167:                                              ; preds = %160, %151
  %168 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %169 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @iounmap(i32 %170)
  br label %172

172:                                              ; preds = %167, %140
  %173 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %174 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %177 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @release_mem_region(i64 %175, i64 %178)
  br label %180

180:                                              ; preds = %172, %120
  %181 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %182 = call i32 @usb_put_hcd(%struct.usb_hcd* %181)
  br label %183

183:                                              ; preds = %180, %83
  %184 = load i32, i32* @usb_dc_ck, align 4
  %185 = call i32 @clk_put(i32 %184)
  %186 = load i32, i32* @usb_host_ck, align 4
  %187 = call i32 @clk_put(i32 %186)
  %188 = load i32, i32* %4, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %183, %161, %69, %51, %38, %11
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @cpu_is_omap15xx(...) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, i32*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @request_mem_region(i64, i64, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
