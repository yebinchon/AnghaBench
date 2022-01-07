; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_probe_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_probe_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fcoe_rport = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"vn_probe_req: send reply, state %x\0A\00", align 1
@FIP_SC_VN_PROBE_REP = common dso_local global i32 0, align 4
@FIP_FL_REC_OR_P2P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"vn_probe_req: port_id collision\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"vn_probe_req: restart VN2VN negotiation\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"vn_probe_req: ignore state %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.fcoe_rport*)* @fcoe_ctlr_vn_probe_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_probe_req(%struct.fcoe_ctlr* %0, %struct.fcoe_rport* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fcoe_rport*, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.fcoe_rport* %1, %struct.fcoe_rport** %4, align 8
  %5 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %6 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %11 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %17 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %65 [
    i32 132, label %19
    i32 128, label %19
    i32 131, label %31
    i32 130, label %31
    i32 129, label %60
  ]

19:                                               ; preds = %15, %15
  %20 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %21 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %22 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %26 = load i32, i32* @FIP_SC_VN_PROBE_REP, align 4
  %27 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %28 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr* %25, i32 %26, i32 %29, i32 0)
  br label %71

31:                                               ; preds = %15, %15
  %32 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %33 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %38 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %36, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %31
  %44 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %45 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FIP_FL_REC_OR_P2P, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %43
  %51 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %52 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %54 = load i32, i32* @FIP_SC_VN_PROBE_REP, align 4
  %55 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %56 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr* %53, i32 %54, i32 %57, i32 0)
  br label %71

59:                                               ; preds = %43, %31
  br label %60

60:                                               ; preds = %15, %59
  %61 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %62 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %64 = call i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr* %63)
  br label %71

65:                                               ; preds = %15
  %66 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %67 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %68 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %14, %65, %60, %50, %19
  ret void
}

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, ...) #1

declare dso_local i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr*, i32, i32, i32) #1

declare dso_local i32 @fcoe_ctlr_vn_restart(%struct.fcoe_ctlr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
