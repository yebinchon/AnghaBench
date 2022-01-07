; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_handle_proto_violation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_handle_proto_violation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i64, i32* }
%struct.ahc_devinfo = type { i32 }
%struct.scb = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SCB_TAG = common dso_local global i32 0, align 4
@SEQ_FLAGS = common dso_local global i32 0, align 4
@SCSISIGI = common dso_local global i32 0, align 4
@PHASE_MASK = common dso_local global i32 0, align 4
@LASTPHASE = common dso_local global i32 0, align 4
@NOT_IDENTIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Target did not send an IDENTIFY message. LASTPHASE = 0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"No SCB found during protocol violation\0A\00", align 1
@CAM_SEQUENCE_FAIL = common dso_local global i32 0, align 4
@NO_CDB_SENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"No or incomplete CDB sent to device.\0A\00", align 1
@SCB_CONTROL = common dso_local global i32 0, align 4
@STATUS_RCVD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Completed command without status.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unknown protocol violation.\0A\00", align 1
@P_DATAIN_DT = common dso_local global i32 0, align 4
@P_COMMAND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"%s: Issued Channel %c Bus Reset. %d SCBs aborted\0A\00", align 1
@SCSISEQ = common dso_local global i32 0, align 4
@ENSELO = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@HOST_MSG = common dso_local global i32 0, align 4
@MSG_ABORT_TASK = common dso_local global i32 0, align 4
@MSG_TYPE_INITIATOR_MSGOUT = common dso_local global i32 0, align 4
@SCB_ABORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"Protocol violation %s.  Attempting to abort.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_handle_proto_violation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_handle_proto_violation(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca %struct.ahc_devinfo, align 4
  %4 = alloca %struct.scb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %11 = call i32 @ahc_fetch_devinfo(%struct.ahc_softc* %10, %struct.ahc_devinfo* %3)
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %13 = load i32, i32* @SCB_TAG, align 4
  %14 = call i32 @ahc_inb(%struct.ahc_softc* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %15, i32 %16)
  store %struct.scb* %17, %struct.scb** %4, align 8
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %19 = load i32, i32* @SEQ_FLAGS, align 4
  %20 = call i32 @ahc_inb(%struct.ahc_softc* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %22 = load i32, i32* @SCSISIGI, align 4
  %23 = call i32 @ahc_inb(%struct.ahc_softc* %21, i32 %22)
  %24 = load i32, i32* @PHASE_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %27 = load i32, i32* @LASTPHASE, align 4
  %28 = call i32 @ahc_inb(%struct.ahc_softc* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @NOT_IDENTIFIED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %35 = call i32 @ahc_print_devinfo(%struct.ahc_softc* %34, %struct.ahc_devinfo* %3)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %36)
  store %struct.scb* null, %struct.scb** %4, align 8
  br label %80

38:                                               ; preds = %1
  %39 = load %struct.scb*, %struct.scb** %4, align 8
  %40 = icmp eq %struct.scb* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %43 = call i32 @ahc_print_devinfo(%struct.ahc_softc* %42, %struct.ahc_devinfo* %3)
  %44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %91

45:                                               ; preds = %38
  %46 = load %struct.scb*, %struct.scb** %4, align 8
  %47 = load i32, i32* @CAM_SEQUENCE_FAIL, align 4
  %48 = call i32 @ahc_set_transaction_status(%struct.scb* %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @NO_CDB_SENT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %55 = load %struct.scb*, %struct.scb** %4, align 8
  %56 = call i32 @ahc_print_path(%struct.ahc_softc* %54, %struct.scb* %55)
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %78

58:                                               ; preds = %45
  %59 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %60 = load i32, i32* @SCB_CONTROL, align 4
  %61 = call i32 @ahc_inb(%struct.ahc_softc* %59, i32 %60)
  %62 = load i32, i32* @STATUS_RCVD, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %67 = load %struct.scb*, %struct.scb** %4, align 8
  %68 = call i32 @ahc_print_path(%struct.ahc_softc* %66, %struct.scb* %67)
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %77

70:                                               ; preds = %58
  %71 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %72 = load %struct.scb*, %struct.scb** %4, align 8
  %73 = call i32 @ahc_print_path(%struct.ahc_softc* %71, %struct.scb* %72)
  %74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %76 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %75)
  br label %77

77:                                               ; preds = %70, %65
  br label %78

78:                                               ; preds = %77, %53
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %33
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @P_DATAIN_DT, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @P_COMMAND, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86, %80
  br label %91

91:                                               ; preds = %90, %41
  %92 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %93 = load i32, i32* @TRUE, align 4
  %94 = call i32 @ahc_reset_channel(%struct.ahc_softc* %92, i8 signext 65, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %96 = call i32 @ahc_name(%struct.ahc_softc* %95)
  %97 = load i32, i32* %9, align 4
  %98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %96, i32 65, i32 %97)
  br label %147

99:                                               ; preds = %86
  %100 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %101 = load i32, i32* @SCSISEQ, align 4
  %102 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %103 = load i32, i32* @SCSISEQ, align 4
  %104 = call i32 @ahc_inb(%struct.ahc_softc* %102, i32 %103)
  %105 = load i32, i32* @ENSELO, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  %108 = call i32 @ahc_outb(%struct.ahc_softc* %100, i32 %101, i32 %107)
  %109 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %110 = call i32 @ahc_assert_atn(%struct.ahc_softc* %109)
  %111 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %112 = load i32, i32* @MSG_OUT, align 4
  %113 = load i32, i32* @HOST_MSG, align 4
  %114 = call i32 @ahc_outb(%struct.ahc_softc* %111, i32 %112, i32 %113)
  %115 = load %struct.scb*, %struct.scb** %4, align 8
  %116 = icmp eq %struct.scb* %115, null
  br i1 %116, label %117, label %132

117:                                              ; preds = %99
  %118 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %119 = call i32 @ahc_print_devinfo(%struct.ahc_softc* %118, %struct.ahc_devinfo* %3)
  %120 = load i32, i32* @MSG_ABORT_TASK, align 4
  %121 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %122 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %120, i32* %124, align 4
  %125 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %126 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %128 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load i32, i32* @MSG_TYPE_INITIATOR_MSGOUT, align 4
  %130 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %131 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %141

132:                                              ; preds = %99
  %133 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %134 = load %struct.scb*, %struct.scb** %4, align 8
  %135 = call i32 @ahc_print_path(%struct.ahc_softc* %133, %struct.scb* %134)
  %136 = load i32, i32* @SCB_ABORT, align 4
  %137 = load %struct.scb*, %struct.scb** %4, align 8
  %138 = getelementptr inbounds %struct.scb, %struct.scb* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %132, %117
  %142 = load i32, i32* %7, align 4
  %143 = call %struct.TYPE_2__* @ahc_lookup_phase_entry(i32 %142)
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %141, %91
  ret void
}

declare dso_local i32 @ahc_fetch_devinfo(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local %struct.scb* @ahc_lookup_scb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_print_devinfo(%struct.ahc_softc*, %struct.ahc_devinfo*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ahc_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahc_print_path(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_dump_card_state(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_reset_channel(%struct.ahc_softc*, i8 signext, i32) #1

declare dso_local i32 @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_assert_atn(%struct.ahc_softc*) #1

declare dso_local %struct.TYPE_2__* @ahc_lookup_phase_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
