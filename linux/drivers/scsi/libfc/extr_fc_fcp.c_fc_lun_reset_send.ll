; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_lun_reset_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_lun_reset_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { %struct.TYPE_4__, i32, %struct.fc_lport* }
%struct.TYPE_4__ = type { void (%struct.timer_list*)* }
%struct.timer_list = type { i32 }
%struct.fc_lport = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.fc_lport.0*, %struct.fc_fcp_pkt.1*, i32)* }
%struct.fc_lport.0 = type opaque
%struct.fc_fcp_pkt.1 = type opaque

@timer = common dso_local global i32 0, align 4
@fc_tm_done = common dso_local global i32 0, align 4
@FC_MAX_RECOV_RETRY = common dso_local global i64 0, align 8
@fsp = common dso_local global %struct.fc_fcp_pkt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @fc_lun_reset_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lun_reset_send(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %6 = ptrtoint %struct.fc_fcp_pkt* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.fc_fcp_pkt* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.fc_fcp_pkt* %9, %struct.fc_fcp_pkt** %3, align 8
  %10 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %11 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %10, i32 0, i32 2
  %12 = load %struct.fc_lport*, %struct.fc_lport** %11, align 8
  store %struct.fc_lport* %12, %struct.fc_lport** %4, align 8
  %13 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64 (%struct.fc_lport.0*, %struct.fc_fcp_pkt.1*, i32)*, i64 (%struct.fc_lport.0*, %struct.fc_fcp_pkt.1*, i32)** %15, align 8
  %17 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %18 = bitcast %struct.fc_lport* %17 to %struct.fc_lport.0*
  %19 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %20 = bitcast %struct.fc_fcp_pkt* %19 to %struct.fc_fcp_pkt.1*
  %21 = load i32, i32* @fc_tm_done, align 4
  %22 = call i64 %16(%struct.fc_lport.0* %18, %struct.fc_fcp_pkt.1* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %1
  %25 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %26 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = sext i32 %27 to i64
  %30 = load i64, i64* @FC_MAX_RECOV_RETRY, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %48

33:                                               ; preds = %24
  %34 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %35 = call i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %48

38:                                               ; preds = %33
  %39 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %40 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store void (%struct.timer_list*)* @fc_lun_reset_send, void (%struct.timer_list*)** %41, align 8
  %42 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %43 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %44 = call i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt* %43)
  %45 = call i32 @fc_fcp_timer_set(%struct.fc_fcp_pkt* %42, i32 %44)
  %46 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %47 = call i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %46)
  br label %48

48:                                               ; preds = %32, %37, %38, %1
  ret void
}

declare dso_local %struct.fc_fcp_pkt* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_timer_set(%struct.fc_fcp_pkt*, i32) #1

declare dso_local i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
