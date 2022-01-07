; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_start_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_start_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i32, {}*, i64, i32, i64, i64, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"(re)booting started\0A\00", align 1
@ATM_PHY_SIG_LOST = common dso_local global i32 0, align 4
@UEA_SET_MODE = common dso_local global i32 0, align 4
@UEA_LOOPBACK_ON = common dso_local global i32 0, align 4
@UEA_BOOT_IDMA = common dso_local global i32 0, align 4
@UEA_START_RESET = common dso_local global i32 0, align 4
@UEA_END_RESET = common dso_local global i32 0, align 4
@EAGLE_IV = common dso_local global i64 0, align 8
@UEA_SET_2183_DATA = common dso_local global i32 0, align 4
@UEA_MPTX_MAILBOX = common dso_local global i32 0, align 4
@UEA_MPRX_MAILBOX = common dso_local global i32 0, align 4
@UEA_SWAP_MAILBOX = common dso_local global i32 0, align 4
@E4_ADSLDIRECTIVE = common dso_local global i32 0, align 4
@E4_MODEMREADY = common dso_local global i32 0, align 4
@E1_ADSLDIRECTIVE = common dso_local global i32 0, align 4
@E1_MODEMREADY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Ready CMV received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uea_softc*)* @uea_start_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_start_reset(%struct.uea_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %7 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %6)
  %8 = call i32 @uea_enters(i32 %7)
  %9 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %10 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %9)
  %11 = call i32 @uea_info(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %13 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %15 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %14, i32 0, i32 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @ATM_PHY_SIG_LOST, align 4
  %17 = call i32 @UPDATE_ATM_SIGNAL(i32 %16)
  %18 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %19 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %18, i32 0, i32 7
  %20 = call i32 @memset(i32* %19, i32 0, i32 4)
  %21 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %22 = load i32, i32* @UEA_SET_MODE, align 4
  %23 = load i32, i32* @UEA_LOOPBACK_ON, align 4
  %24 = call i32 @uea_request(%struct.uea_softc* %21, i32 %22, i32 %23, i32 0, i32* null)
  %25 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %26 = load i32, i32* @UEA_SET_MODE, align 4
  %27 = load i32, i32* @UEA_BOOT_IDMA, align 4
  %28 = call i32 @uea_request(%struct.uea_softc* %25, i32 %26, i32 %27, i32 0, i32* null)
  %29 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %30 = load i32, i32* @UEA_SET_MODE, align 4
  %31 = load i32, i32* @UEA_START_RESET, align 4
  %32 = call i32 @uea_request(%struct.uea_softc* %29, i32 %30, i32 %31, i32 0, i32* null)
  %33 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %34 = call i32 @msecs_to_jiffies(i32 100)
  %35 = call i32 @uea_wait(%struct.uea_softc* %33, i32 0, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %128

40:                                               ; preds = %1
  %41 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %42 = load i32, i32* @UEA_SET_MODE, align 4
  %43 = load i32, i32* @UEA_END_RESET, align 4
  %44 = call i32 @uea_request(%struct.uea_softc* %41, i32 %42, i32 %43, i32 0, i32* null)
  %45 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %46 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %45)
  %47 = load i64, i64* @EAGLE_IV, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %40
  %50 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %51 = load i32, i32* @UEA_SET_2183_DATA, align 4
  %52 = load i32, i32* @UEA_MPTX_MAILBOX, align 4
  %53 = call i32 @uea_request(%struct.uea_softc* %50, i32 %51, i32 %52, i32 2, i32* %4)
  %54 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %55 = load i32, i32* @UEA_SET_2183_DATA, align 4
  %56 = load i32, i32* @UEA_MPRX_MAILBOX, align 4
  %57 = call i32 @uea_request(%struct.uea_softc* %54, i32 %55, i32 %56, i32 2, i32* %4)
  %58 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %59 = load i32, i32* @UEA_SET_2183_DATA, align 4
  %60 = load i32, i32* @UEA_SWAP_MAILBOX, align 4
  %61 = call i32 @uea_request(%struct.uea_softc* %58, i32 %59, i32 %60, i32 2, i32* %4)
  br label %62

62:                                               ; preds = %49, %40
  %63 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %64 = call i32 @msecs_to_jiffies(i32 1000)
  %65 = call i32 @uea_wait(%struct.uea_softc* %63, i32 0, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %128

70:                                               ; preds = %62
  %71 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %72 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %71)
  %73 = load i64, i64* @EAGLE_IV, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32, i32* @E4_ADSLDIRECTIVE, align 4
  %77 = load i32, i32* @E4_MODEMREADY, align 4
  %78 = call i32 @E4_MAKEFUNCTION(i32 %76, i32 %77, i32 1)
  %79 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %80 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 4
  br label %91

83:                                               ; preds = %70
  %84 = load i32, i32* @E1_ADSLDIRECTIVE, align 4
  %85 = load i32, i32* @E1_MODEMREADY, align 4
  %86 = call i32 @E1_MAKEFUNCTION(i32 %84, i32 %85)
  %87 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %88 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  br label %91

91:                                               ; preds = %83, %75
  %92 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %93 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %95 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %94, i32 0, i32 5
  store i64 0, i64* %95, align 8
  %96 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %97 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  %98 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %99 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %98, i32 0, i32 3
  %100 = call i32 @schedule_work(i32* %99)
  %101 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %102 = call i32 @wait_cmv_ack(%struct.uea_softc* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %91
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %128

107:                                              ; preds = %91
  %108 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %109 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %108)
  %110 = call i32 @uea_vdbg(i32 %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %112 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %111, i32 0, i32 1
  %113 = bitcast {}** %112 to i32 (%struct.uea_softc*)**
  %114 = load i32 (%struct.uea_softc*)*, i32 (%struct.uea_softc*)** %113, align 8
  %115 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %116 = call i32 %114(%struct.uea_softc* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %107
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %128

121:                                              ; preds = %107
  %122 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %123 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %125 = call i32 @INS_TO_USBDEV(%struct.uea_softc* %124)
  %126 = call i32 @uea_leaves(i32 %125)
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %121, %119, %105, %68, %38
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @uea_enters(i32) #1

declare dso_local i32 @INS_TO_USBDEV(%struct.uea_softc*) #1

declare dso_local i32 @uea_info(i32, i8*) #1

declare dso_local i32 @UPDATE_ATM_SIGNAL(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @uea_request(%struct.uea_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @uea_wait(%struct.uea_softc*, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @UEA_CHIP_VERSION(%struct.uea_softc*) #1

declare dso_local i32 @E4_MAKEFUNCTION(i32, i32, i32) #1

declare dso_local i32 @E1_MAKEFUNCTION(i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wait_cmv_ack(%struct.uea_softc*) #1

declare dso_local i32 @uea_vdbg(i32, i8*) #1

declare dso_local i32 @uea_leaves(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
