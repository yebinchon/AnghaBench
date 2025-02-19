; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fill_unplug_rsp_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fill_unplug_rsp_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwserial_mgmt_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@FWSC_VIRT_CABLE_UNPLUG_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwserial_mgmt_pkt*)* @fill_unplug_rsp_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_unplug_rsp_ok(%struct.fwserial_mgmt_pkt* %0) #0 {
  %2 = alloca %struct.fwserial_mgmt_pkt*, align 8
  store %struct.fwserial_mgmt_pkt* %0, %struct.fwserial_mgmt_pkt** %2, align 8
  %3 = load i32, i32* @FWSC_VIRT_CABLE_UNPLUG_RSP, align 4
  %4 = call i8* @cpu_to_be16(i32 %3)
  %5 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %2, align 8
  %6 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %2, align 8
  %9 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @mgmt_pkt_expected_len(i8* %11)
  %13 = call i8* @cpu_to_be16(i32 %12)
  %14 = load %struct.fwserial_mgmt_pkt*, %struct.fwserial_mgmt_pkt** %2, align 8
  %15 = getelementptr inbounds %struct.fwserial_mgmt_pkt, %struct.fwserial_mgmt_pkt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i8* %13, i8** %16, align 8
  ret void
}

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @mgmt_pkt_expected_len(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
