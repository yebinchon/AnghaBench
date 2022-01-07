; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i32*, i32, %struct.TYPE_13__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.intr_pkt = type { i32 }

@EAGLE_IV = common dso_local global i64 0, align 8
@E4_INTR_PKT_SIZE = common dso_local global i32 0, align 4
@uea_dispatch_cmv_e4 = common dso_local global i32 0, align 4
@uea_schedule_load_page_e4 = common dso_local global i32 0, align 4
@uea_stat_e4 = common dso_local global i32 0, align 4
@uea_send_cmvs_e4 = common dso_local global i32 0, align 4
@uea_load_page_e4 = common dso_local global i32 0, align 4
@E1_INTR_PKT_SIZE = common dso_local global i32 0, align 4
@uea_dispatch_cmv_e1 = common dso_local global i32 0, align 4
@uea_schedule_load_page_e1 = common dso_local global i32 0, align 4
@uea_stat_e1 = common dso_local global i32 0, align 4
@uea_send_cmvs_e1 = common dso_local global i32 0, align 4
@uea_load_page_e1 = common dso_local global i32 0, align 4
@ADI930 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@UEA_INTR_PIPE = common dso_local global i32 0, align 4
@uea_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"urb submission failed with error %d\0A\00", align 1
@uea_kthread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ueagle-atm\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to create thread\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*)* @uea_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_boot(%struct.uea_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_pkt*, align 8
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  %7 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %8 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %7)
  %9 = call i32 @uea_enters(i32 %8)
  %10 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %11 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %10)
  %12 = load i64, i64* @EAGLE_IV, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load i32, i32* @E4_INTR_PKT_SIZE, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @uea_dispatch_cmv_e4, align 4
  %17 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %18 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @uea_schedule_load_page_e4, align 4
  %20 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %21 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @uea_stat_e4, align 4
  %23 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %24 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @uea_send_cmvs_e4, align 4
  %26 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %27 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %29 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %28, i32 0, i32 4
  %30 = load i32, i32* @uea_load_page_e4, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  br label %50

32:                                               ; preds = %1
  %33 = load i32, i32* @E1_INTR_PKT_SIZE, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @uea_dispatch_cmv_e1, align 4
  %35 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %36 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @uea_schedule_load_page_e1, align 4
  %38 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @uea_stat_e1, align 4
  %41 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %42 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @uea_send_cmvs_e1, align 4
  %44 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %45 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %47 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %46, i32 0, i32 4
  %48 = load i32, i32* @uea_load_page_e1, align 4
  %49 = call i32 @INIT_WORK(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %32, %14
  %51 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %52 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %51, i32 0, i32 3
  %53 = call i32 @init_waitqueue_head(i32* %52)
  %54 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %55 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %54)
  %56 = load i64, i64* @ADI930, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %60 = call i32 @load_XILINX_firmware(%struct.uea_softc* %59)
  br label %61

61:                                               ; preds = %58, %50
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.intr_pkt* @kmalloc(i32 %62, i32 %63)
  store %struct.intr_pkt* %64, %struct.intr_pkt** %6, align 8
  %65 = load %struct.intr_pkt*, %struct.intr_pkt** %6, align 8
  %66 = icmp ne %struct.intr_pkt* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %158

68:                                               ; preds = %61
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32* @usb_alloc_urb(i32 0, i32 %69)
  %71 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %72 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  %73 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %74 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  br label %149

78:                                               ; preds = %68
  %79 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %80 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %83 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %82, i32 0, i32 2
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %86 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %85, i32 0, i32 2
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load i32, i32* @UEA_INTR_PIPE, align 4
  %89 = call i32 @usb_rcvintpipe(%struct.TYPE_13__* %87, i32 %88)
  %90 = load %struct.intr_pkt*, %struct.intr_pkt** %6, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @uea_intr, align 4
  %93 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %94 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %95 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %94, i32 0, i32 2
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %100, i64 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @usb_fill_int_urb(i32* %81, %struct.TYPE_13__* %84, i32 %89, %struct.intr_pkt* %90, i32 %91, i32 %92, %struct.uea_softc* %93, i32 %111)
  %113 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %114 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i32 @usb_submit_urb(i32* %115, i32 %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %78
  %121 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %122 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %121)
  %123 = load i32, i32* %4, align 4
  %124 = call i32 (i32, i8*, ...) @uea_err(i32 %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %123)
  br label %149

125:                                              ; preds = %78
  %126 = load i32, i32* @uea_kthread, align 4
  %127 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %128 = call i32 @kthread_create(i32 %126, %struct.uea_softc* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %129 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %130 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %132 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @IS_ERR(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %125
  %137 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %138 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %137)
  %139 = call i32 (i32, i8*, ...) @uea_err(i32 %138, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %144

140:                                              ; preds = %125
  %141 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %142 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %141)
  %143 = call i32 @uea_leaves(i32 %142)
  store i32 0, i32* %2, align 4
  br label %164

144:                                              ; preds = %136
  %145 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %146 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @usb_kill_urb(i32* %147)
  br label %149

149:                                              ; preds = %144, %120, %77
  %150 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %151 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @usb_free_urb(i32* %152)
  %154 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %155 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %154, i32 0, i32 0
  store i32* null, i32** %155, align 8
  %156 = load %struct.intr_pkt*, %struct.intr_pkt** %6, align 8
  %157 = call i32 @kfree(%struct.intr_pkt* %156)
  br label %158

158:                                              ; preds = %149, %67
  %159 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %160 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %159)
  %161 = call i32 @uea_leaves(i32 %160)
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %158, %140
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @uea_enters(i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i64 @UEA_CHIP_VERSION(%struct.uea_softc*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @load_XILINX_firmware(%struct.uea_softc*) #1

declare dso_local %struct.intr_pkt* @kmalloc(i32, i32) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32*, %struct.TYPE_13__*, i32, %struct.intr_pkt*, i32, i32, %struct.uea_softc*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @uea_err(i32, i8*, ...) #1

declare dso_local i32 @kthread_create(i32, %struct.uea_softc*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @uea_leaves(i32) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(%struct.intr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
