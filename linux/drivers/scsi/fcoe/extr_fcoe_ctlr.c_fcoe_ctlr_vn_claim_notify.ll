; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_claim_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_claim_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fcoe_rport = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@FIP_FL_REC_OR_P2P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"send probe req for P2P/REC\0A\00", align 1
@FIP_SC_VN_PROBE_REQ = common dso_local global i32 0, align 4
@fcoe_all_vn2vn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"vn_claim_notify: restart, state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"vn_claim_notify: restart, port_id collision\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"vn_claim_notify: send claim notify\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"vn_claim_notify: send reply to %x\0A\00", align 1
@FIP_SC_VN_CLAIM_REP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"vn_claim_notify: ignoring claim from %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.fcoe_rport*)* @fcoe_ctlr_vn_claim_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_claim_notify(%struct.fcoe_ctlr* %0, %struct.fcoe_rport* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fcoe_rport*, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.fcoe_rport* %1, %struct.fcoe_rport** %4, align 8
  %5 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %6 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FIP_FL_REC_OR_P2P, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %13 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %15 = load i32, i32* @FIP_SC_VN_PROBE_REQ, align 4
  %16 = load i32, i32* @fcoe_all_vn2vn, align 4
  %17 = call i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr* %14, i32 %15, i32 %16, i32 0)
  br label %104

18:                                               ; preds = %2
  %19 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %20 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %96 [
    i32 129, label %22
    i32 131, label %22
    i32 130, label %22
    i32 132, label %41
    i32 128, label %41
  ]

22:                                               ; preds = %18, %18, %18
  %23 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %24 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %29 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %34 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %35 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %39 = call i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr* %38)
  br label %40

40:                                               ; preds = %32, %22
  br label %104

41:                                               ; preds = %18, %18
  %42 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %43 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %48 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %41
  %52 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %53 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %58 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %56, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %65 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %67 = call i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr* %66)
  br label %104

68:                                               ; preds = %51
  %69 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %70 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %72 = call i32 @fcoe_ctlr_vn_send_claim(%struct.fcoe_ctlr* %71)
  br label %104

73:                                               ; preds = %41
  %74 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %75 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %76 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %82 = load i32, i32* @FIP_SC_VN_CLAIM_REP, align 4
  %83 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %84 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %87 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %90 = call i32 @fcoe_ctlr_fcoe_size(%struct.fcoe_ctlr* %89)
  %91 = call i32 @min(i32 %88, i32 %90)
  %92 = call i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr* %81, i32 %82, i32 %85, i32 %91)
  %93 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %94 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %95 = call i32 @fcoe_ctlr_vn_add(%struct.fcoe_ctlr* %93, %struct.fcoe_rport* %94)
  br label %104

96:                                               ; preds = %18
  %97 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %98 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %99 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %11, %96, %73, %68, %63, %40
  ret void
}

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, ...) #1

declare dso_local i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr*, i32, i32, i32) #1

declare dso_local i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr*) #1

declare dso_local i32 @fcoe_ctlr_vn_send_claim(%struct.fcoe_ctlr*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fcoe_ctlr_fcoe_size(%struct.fcoe_ctlr*) #1

declare dso_local i32 @fcoe_ctlr_vn_add(%struct.fcoe_ctlr*, %struct.fcoe_rport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
