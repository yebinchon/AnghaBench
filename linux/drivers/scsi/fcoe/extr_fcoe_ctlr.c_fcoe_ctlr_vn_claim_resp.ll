; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_claim_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_claim_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64 }
%struct.fcoe_rport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"claim resp from from rport %x - state %s\0A\00", align 1
@FIP_ST_VNMP_UP = common dso_local global i64 0, align 8
@FIP_ST_VNMP_CLAIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.fcoe_rport*)* @fcoe_ctlr_vn_claim_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_claim_resp(%struct.fcoe_ctlr* %0, %struct.fcoe_rport* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fcoe_rport*, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.fcoe_rport* %1, %struct.fcoe_rport** %4, align 8
  %5 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %6 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %7 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %12 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @fcoe_ctlr_state(i64 %13)
  %15 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14)
  %16 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %17 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FIP_ST_VNMP_UP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %23 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FIP_ST_VNMP_CLAIM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21, %2
  %28 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %29 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %30 = call i32 @fcoe_ctlr_vn_add(%struct.fcoe_ctlr* %28, %struct.fcoe_rport* %29)
  br label %31

31:                                               ; preds = %27, %21
  ret void
}

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, i32, i32) #1

declare dso_local i32 @fcoe_ctlr_state(i64) #1

declare dso_local i32 @fcoe_ctlr_vn_add(%struct.fcoe_ctlr*, %struct.fcoe_rport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
