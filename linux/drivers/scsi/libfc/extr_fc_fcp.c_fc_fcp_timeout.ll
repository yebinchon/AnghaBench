; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.fc_rport* }
%struct.TYPE_6__ = type { void (%struct.timer_list*)* }
%struct.timer_list = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.fc_rport = type { %struct.fc_rport_libfc_priv* }
%struct.fc_rport_libfc_priv = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"fcp timeout, resetting timer delay %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"fcp timeout, delay %d flags %x state %x\0A\00", align 1
@FC_SRB_FCP_PROCESSING_TMO = common dso_local global i32 0, align 4
@FC_RP_FLAGS_REC_SUPPORTED = common dso_local global i32 0, align 4
@FC_SRB_RCV_STATUS = common dso_local global i32 0, align 4
@FC_TIMED_OUT = common dso_local global i32 0, align 4
@fsp = common dso_local global %struct.fc_fcp_pkt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @fc_fcp_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  %4 = alloca %struct.fc_rport*, align 8
  %5 = alloca %struct.fc_rport_libfc_priv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %7 = ptrtoint %struct.fc_fcp_pkt* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.fc_fcp_pkt* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.fc_fcp_pkt* %10, %struct.fc_fcp_pkt** %3, align 8
  %11 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %12 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %11, i32 0, i32 5
  %13 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  store %struct.fc_rport* %13, %struct.fc_rport** %4, align 8
  %14 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %15 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %14, i32 0, i32 0
  %16 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %15, align 8
  store %struct.fc_rport_libfc_priv* %16, %struct.fc_rport_libfc_priv** %5, align 8
  %17 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %18 = call i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %100

21:                                               ; preds = %1
  %22 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %23 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %97

28:                                               ; preds = %21
  %29 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %30 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %37 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %38 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.fc_fcp_pkt*, i8*, i32, ...) @FC_FCP_DBG(%struct.fc_fcp_pkt* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %42 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store void (%struct.timer_list*)* @fc_fcp_timeout, void (%struct.timer_list*)** %43, align 8
  %44 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %45 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %46 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fc_fcp_timer_set(%struct.fc_fcp_pkt* %44, i32 %47)
  br label %97

49:                                               ; preds = %28
  %50 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %51 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %52 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %5, align 8
  %55 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %58 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.fc_fcp_pkt*, i8*, i32, ...) @FC_FCP_DBG(%struct.fc_fcp_pkt* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56, i32 %59)
  %61 = load i32, i32* @FC_SRB_FCP_PROCESSING_TMO, align 4
  %62 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %63 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %5, align 8
  %67 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FC_RP_FLAGS_REC_SUPPORTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %49
  %73 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %74 = call i32 @fc_fcp_rec(%struct.fc_fcp_pkt* %73)
  br label %90

75:                                               ; preds = %49
  %76 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %77 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @FC_SRB_RCV_STATUS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %84 = call i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt* %83)
  br label %89

85:                                               ; preds = %75
  %86 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %87 = load i32, i32* @FC_TIMED_OUT, align 4
  %88 = call i32 @fc_fcp_recovery(%struct.fc_fcp_pkt* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %82
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32, i32* @FC_SRB_FCP_PROCESSING_TMO, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %94 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %90, %35, %27
  %98 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %99 = call i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %98)
  br label %100

100:                                              ; preds = %97, %20
  ret void
}

declare dso_local %struct.fc_fcp_pkt* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @FC_FCP_DBG(%struct.fc_fcp_pkt*, i8*, i32, ...) #1

declare dso_local i32 @fc_fcp_timer_set(%struct.fc_fcp_pkt*, i32) #1

declare dso_local i32 @fc_fcp_rec(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_recovery(%struct.fc_fcp_pkt*, i32) #1

declare dso_local i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
