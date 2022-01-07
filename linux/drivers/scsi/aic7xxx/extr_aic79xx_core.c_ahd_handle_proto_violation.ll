; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_proto_violation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_proto_violation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i64, i32* }
%struct.ahd_devinfo = type { i32 }
%struct.scb = type { i32 }
%struct.TYPE_2__ = type { i32 }

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
@SCSISEQ0 = common dso_local global i32 0, align 4
@ENSELO = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@HOST_MSG = common dso_local global i32 0, align 4
@MSG_ABORT_TASK = common dso_local global i32 0, align 4
@MSG_TYPE_INITIATOR_MSGOUT = common dso_local global i32 0, align 4
@SCB_ABORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"Protocol violation %s.  Attempting to abort.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_handle_proto_violation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_handle_proto_violation(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.ahd_devinfo, align 4
  %4 = alloca %struct.scb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %10 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %11 = call i32 @ahd_fetch_devinfo(%struct.ahd_softc* %10, %struct.ahd_devinfo* %3)
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %13 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %14, i32 %15)
  store %struct.scb* %16, %struct.scb** %4, align 8
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %18 = load i32, i32* @SEQ_FLAGS, align 4
  %19 = call i32 @ahd_inb(%struct.ahd_softc* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %21 = load i32, i32* @SCSISIGI, align 4
  %22 = call i32 @ahd_inb(%struct.ahd_softc* %20, i32 %21)
  %23 = load i32, i32* @PHASE_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %26 = load i32, i32* @LASTPHASE, align 4
  %27 = call i32 @ahd_inb(%struct.ahd_softc* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @NOT_IDENTIFIED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %34 = call i32 @ahd_print_devinfo(%struct.ahd_softc* %33, %struct.ahd_devinfo* %3)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %35)
  store %struct.scb* null, %struct.scb** %4, align 8
  br label %79

37:                                               ; preds = %1
  %38 = load %struct.scb*, %struct.scb** %4, align 8
  %39 = icmp eq %struct.scb* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %42 = call i32 @ahd_print_devinfo(%struct.ahd_softc* %41, %struct.ahd_devinfo* %3)
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %90

44:                                               ; preds = %37
  %45 = load %struct.scb*, %struct.scb** %4, align 8
  %46 = load i32, i32* @CAM_SEQUENCE_FAIL, align 4
  %47 = call i32 @ahd_set_transaction_status(%struct.scb* %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @NO_CDB_SENT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %54 = load %struct.scb*, %struct.scb** %4, align 8
  %55 = call i32 @ahd_print_path(%struct.ahd_softc* %53, %struct.scb* %54)
  %56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %77

57:                                               ; preds = %44
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %59 = load i32, i32* @SCB_CONTROL, align 4
  %60 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %58, i32 %59)
  %61 = load i32, i32* @STATUS_RCVD, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %66 = load %struct.scb*, %struct.scb** %4, align 8
  %67 = call i32 @ahd_print_path(%struct.ahd_softc* %65, %struct.scb* %66)
  %68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %76

69:                                               ; preds = %57
  %70 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %71 = load %struct.scb*, %struct.scb** %4, align 8
  %72 = call i32 @ahd_print_path(%struct.ahd_softc* %70, %struct.scb* %71)
  %73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %75 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %74)
  br label %76

76:                                               ; preds = %69, %64
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78, %32
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @P_DATAIN_DT, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @P_COMMAND, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85, %79
  br label %90

90:                                               ; preds = %89, %40
  %91 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @ahd_reset_channel(%struct.ahd_softc* %91, i8 signext 65, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %95 = call i32 @ahd_name(%struct.ahd_softc* %94)
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %95, i32 65, i32 %96)
  br label %146

98:                                               ; preds = %85
  %99 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %100 = load i32, i32* @SCSISEQ0, align 4
  %101 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %102 = load i32, i32* @SCSISEQ0, align 4
  %103 = call i32 @ahd_inb(%struct.ahd_softc* %101, i32 %102)
  %104 = load i32, i32* @ENSELO, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  %107 = call i32 @ahd_outb(%struct.ahd_softc* %99, i32 %100, i32 %106)
  %108 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %109 = call i32 @ahd_assert_atn(%struct.ahd_softc* %108)
  %110 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %111 = load i32, i32* @MSG_OUT, align 4
  %112 = load i32, i32* @HOST_MSG, align 4
  %113 = call i32 @ahd_outb(%struct.ahd_softc* %110, i32 %111, i32 %112)
  %114 = load %struct.scb*, %struct.scb** %4, align 8
  %115 = icmp eq %struct.scb* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %98
  %117 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %118 = call i32 @ahd_print_devinfo(%struct.ahd_softc* %117, %struct.ahd_devinfo* %3)
  %119 = load i32, i32* @MSG_ABORT_TASK, align 4
  %120 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %121 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %119, i32* %123, align 4
  %124 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %125 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %127 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* @MSG_TYPE_INITIATOR_MSGOUT, align 4
  %129 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %130 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %140

131:                                              ; preds = %98
  %132 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %133 = load %struct.scb*, %struct.scb** %4, align 8
  %134 = call i32 @ahd_print_path(%struct.ahd_softc* %132, %struct.scb* %133)
  %135 = load i32, i32* @SCB_ABORT, align 4
  %136 = load %struct.scb*, %struct.scb** %4, align 8
  %137 = getelementptr inbounds %struct.scb, %struct.scb* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %131, %116
  %141 = load i32, i32* %7, align 4
  %142 = call %struct.TYPE_2__* @ahd_lookup_phase_entry(i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %140, %90
  ret void
}

declare dso_local i32 @ahd_fetch_devinfo(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_print_devinfo(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ahd_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahd_print_path(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_inb_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_reset_channel(%struct.ahd_softc*, i8 signext, i32) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_assert_atn(%struct.ahd_softc*) #1

declare dso_local %struct.TYPE_2__* @ahd_lookup_phase_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
