; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_hcd.c_whc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_hcd.c_whc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umc_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.usb_hcd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wusbhc = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.whc = type { i64, %struct.umc_dev*, i32 }

@whc_hc_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"whci\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to create hcd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot get radio controller\0A\00", align 1
@USB_MAXCHILDREN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"USB_MAXCHILDREN too low for WUSB adapter (%u ports)\0A\00", align 1
@whc_wusbhc_start = common dso_local global i32 0, align 4
@whc_wusbhc_stop = common dso_local global i32 0, align 4
@whc_mmcie_add = common dso_local global i32 0, align 4
@whc_mmcie_rm = common dso_local global i32 0, align 4
@whc_dev_info_set = common dso_local global i32 0, align 4
@whc_bwa_set = common dso_local global i32 0, align 4
@whc_set_num_dnts = common dso_local global i32 0, align 4
@whc_set_ptk = common dso_local global i32 0, align 4
@whc_set_gtk = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"cannot add HCD: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"WUSBHC phase B setup failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umc_dev*)* @whc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whc_probe(%struct.umc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.umc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.wusbhc*, align 8
  %7 = alloca %struct.whc*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.umc_dev* %0, %struct.umc_dev** %3, align 8
  %9 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %8, align 8
  %11 = load %struct.device*, %struct.device** %8, align 8
  %12 = call %struct.usb_hcd* @usb_create_hcd(i32* @whc_hc_driver, %struct.device* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.usb_hcd* %12, %struct.usb_hcd** %5, align 8
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %14 = icmp eq %struct.usb_hcd* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %167

20:                                               ; preds = %1
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %22 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 2048, i32* %25, align 4
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %27 = call %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd* %26)
  store %struct.wusbhc* %27, %struct.wusbhc** %6, align 8
  %28 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %29 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %28)
  store %struct.whc* %29, %struct.whc** %7, align 8
  %30 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %31 = load %struct.whc*, %struct.whc** %7, align 8
  %32 = getelementptr inbounds %struct.whc, %struct.whc* %31, i32 0, i32 1
  store %struct.umc_dev* %30, %struct.umc_dev** %32, align 8
  %33 = load %struct.whc*, %struct.whc** %7, align 8
  %34 = call i32 @whc_init(%struct.whc* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  br label %163

38:                                               ; preds = %20
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %41 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %40, i32 0, i32 12
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.umc_dev*, %struct.umc_dev** %3, align 8
  %43 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @uwb_rc_get_by_grandpa(i32 %45)
  %47 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %48 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %50 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %38
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %160

58:                                               ; preds = %38
  %59 = load %struct.whc*, %struct.whc** %7, align 8
  %60 = getelementptr inbounds %struct.whc, %struct.whc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @USB_MAXCHILDREN, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = load %struct.whc*, %struct.whc** %7, align 8
  %67 = getelementptr inbounds %struct.whc, %struct.whc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dev_warn(%struct.device* %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* @USB_MAXCHILDREN, align 8
  %71 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %72 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %79

73:                                               ; preds = %58
  %74 = load %struct.whc*, %struct.whc** %7, align 8
  %75 = getelementptr inbounds %struct.whc, %struct.whc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %78 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %64
  %80 = load %struct.whc*, %struct.whc** %7, align 8
  %81 = getelementptr inbounds %struct.whc, %struct.whc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %84 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %83, i32 0, i32 11
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @whc_wusbhc_start, align 4
  %86 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %87 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @whc_wusbhc_stop, align 4
  %89 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %90 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @whc_mmcie_add, align 4
  %92 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %93 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %92, i32 0, i32 8
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @whc_mmcie_rm, align 4
  %95 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %96 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @whc_dev_info_set, align 4
  %98 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %99 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @whc_bwa_set, align 4
  %101 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %102 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @whc_set_num_dnts, align 4
  %104 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %105 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @whc_set_ptk, align 4
  %107 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %108 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @whc_set_gtk, align 4
  %110 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %111 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %113 = call i32 @wusbhc_create(%struct.wusbhc* %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %79
  br label %155

117:                                              ; preds = %79
  %118 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %119 = load %struct.whc*, %struct.whc** %7, align 8
  %120 = getelementptr inbounds %struct.whc, %struct.whc* %119, i32 0, i32 1
  %121 = load %struct.umc_dev*, %struct.umc_dev** %120, align 8
  %122 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IRQF_SHARED, align 4
  %125 = call i32 @usb_add_hcd(%struct.usb_hcd* %118, i32 %123, i32 %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = load %struct.device*, %struct.device** %8, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  br label %152

132:                                              ; preds = %117
  %133 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %134 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @device_wakeup_enable(i32 %136)
  %138 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %139 = call i32 @wusbhc_b_create(%struct.wusbhc* %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %132
  %143 = load %struct.device*, %struct.device** %8, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  br label %149

146:                                              ; preds = %132
  %147 = load %struct.whc*, %struct.whc** %7, align 8
  %148 = call i32 @whc_dbg_init(%struct.whc* %147)
  store i32 0, i32* %2, align 4
  br label %167

149:                                              ; preds = %142
  %150 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %151 = call i32 @usb_remove_hcd(%struct.usb_hcd* %150)
  br label %152

152:                                              ; preds = %149, %128
  %153 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %154 = call i32 @wusbhc_destroy(%struct.wusbhc* %153)
  br label %155

155:                                              ; preds = %152, %116
  %156 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %157 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @uwb_rc_put(i32 %158)
  br label %160

160:                                              ; preds = %155, %53
  %161 = load %struct.whc*, %struct.whc** %7, align 8
  %162 = call i32 @whc_clean_up(%struct.whc* %161)
  br label %163

163:                                              ; preds = %160, %37
  %164 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %165 = call i32 @usb_put_hcd(%struct.usb_hcd* %164)
  %166 = load i32, i32* %4, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %163, %146, %15
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd*) #1

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @whc_init(%struct.whc*) #1

declare dso_local i32 @uwb_rc_get_by_grandpa(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @wusbhc_create(%struct.wusbhc*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local i32 @wusbhc_b_create(%struct.wusbhc*) #1

declare dso_local i32 @whc_dbg_init(%struct.whc*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @wusbhc_destroy(%struct.wusbhc*) #1

declare dso_local i32 @uwb_rc_put(i32) #1

declare dso_local i32 @whc_clean_up(%struct.whc*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
