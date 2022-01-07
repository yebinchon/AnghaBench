; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_enabling_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_iocpf_sm_enabling_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf_s = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf_s*)* @bfa_iocpf_sm_enabling_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_enabling_entry(%struct.bfa_iocpf_s* %0) #0 {
  %2 = alloca %struct.bfa_iocpf_s*, align 8
  store %struct.bfa_iocpf_s* %0, %struct.bfa_iocpf_s** %2, align 8
  %3 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %3, i32 0, i32 0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = call i32 @bfa_iocpf_timer_start(%struct.TYPE_5__* %5)
  %7 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %8 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %15 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %13(i32 %18)
  %20 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %2, align 8
  %21 = getelementptr inbounds %struct.bfa_iocpf_s, %struct.bfa_iocpf_s* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = call i32 @bfa_ioc_send_enable(%struct.TYPE_5__* %22)
  ret void
}

declare dso_local i32 @bfa_iocpf_timer_start(%struct.TYPE_5__*) #1

declare dso_local i32 @bfa_ioc_send_enable(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
