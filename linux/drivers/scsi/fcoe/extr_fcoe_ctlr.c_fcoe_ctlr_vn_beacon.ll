; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64, i64, %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.fcoe_rport = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.fc_rport_priv = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }

@FIP_FL_REC_OR_P2P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"p2p beacon while in vn2vn mode\0A\00", align 1
@FIP_SC_VN_PROBE_REQ = common dso_local global i32 0, align 4
@fcoe_all_vn2vn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"beacon from rport %x\0A\00", align 1
@FIP_ST_VNMP_UP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"beacon expired for rport %x\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@fc_rport_destroy = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"beacon from new rport %x. sending claim notify\0A\00", align 1
@FIP_VN_ANN_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.fcoe_rport*)* @fcoe_ctlr_vn_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_beacon(%struct.fcoe_ctlr* %0, %struct.fcoe_rport* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fcoe_rport*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_rport_priv*, align 8
  %7 = alloca %struct.fcoe_rport*, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.fcoe_rport* %1, %struct.fcoe_rport** %4, align 8
  %8 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %9 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %8, i32 0, i32 2
  %10 = load %struct.fc_lport*, %struct.fc_lport** %9, align 8
  store %struct.fc_lport* %10, %struct.fc_lport** %5, align 8
  %11 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %12 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FIP_FL_REC_OR_P2P, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %19 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %21 = load i32, i32* @FIP_SC_VN_PROBE_REQ, align 4
  %22 = load i32, i32* @fcoe_all_vn2vn, align 4
  %23 = call i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr* %20, i32 %21, i32 %22, i32 0)
  br label %120

24:                                               ; preds = %2
  %25 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %26 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %27 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport* %25, i32 %30)
  store %struct.fc_rport_priv* %31, %struct.fc_rport_priv** %6, align 8
  %32 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %33 = icmp ne %struct.fc_rport_priv* %32, null
  br i1 %33, label %34, label %93

34:                                               ; preds = %24
  %35 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %36 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %40 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %45, label %88

45:                                               ; preds = %34
  %46 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %47 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %51 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %45
  %57 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %58 = call %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv* %57)
  store %struct.fcoe_rport* %58, %struct.fcoe_rport** %7, align 8
  %59 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %60 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %61 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.fcoe_rport*, %struct.fcoe_rport** %7, align 8
  %66 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %56
  %70 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %71 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @FIP_ST_VNMP_UP, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %77 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %78 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %83 = call i32 @fc_rport_login(%struct.fc_rport_priv* %82)
  br label %84

84:                                               ; preds = %75, %69, %56
  %85 = load i64, i64* @jiffies, align 8
  %86 = load %struct.fcoe_rport*, %struct.fcoe_rport** %7, align 8
  %87 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %45, %34
  %89 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %90 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %89, i32 0, i32 0
  %91 = load i32, i32* @fc_rport_destroy, align 4
  %92 = call i32 @kref_put(i32* %90, i32 %91)
  br label %120

93:                                               ; preds = %24
  %94 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %95 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FIP_ST_VNMP_UP, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %120

100:                                              ; preds = %93
  %101 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %102 = load %struct.fcoe_rport*, %struct.fcoe_rport** %4, align 8
  %103 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (%struct.fcoe_ctlr*, i8*, ...) @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %101, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i64, i64* @jiffies, align 8
  %109 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %110 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* @FIP_VN_ANN_WAIT, align 4
  %113 = call i64 @msecs_to_jiffies(i32 %112)
  %114 = add nsw i64 %111, %113
  %115 = call i64 @time_after(i64 %108, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %100
  %118 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %119 = call i32 @fcoe_ctlr_vn_send_claim(%struct.fcoe_ctlr* %118)
  br label %120

120:                                              ; preds = %17, %88, %99, %117, %100
  ret void
}

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, ...) #1

declare dso_local i32 @fcoe_ctlr_vn_send(%struct.fcoe_ctlr*, i32, i32, i32) #1

declare dso_local %struct.fc_rport_priv* @fc_rport_lookup(%struct.fc_lport*, i32) #1

declare dso_local %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv*) #1

declare dso_local i32 @fc_rport_login(%struct.fc_rport_priv*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @fcoe_ctlr_vn_send_claim(%struct.fcoe_ctlr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
