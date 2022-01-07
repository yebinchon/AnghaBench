; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_ctlr_inactive_on_rport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_ctlr_inactive_on_rport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { %struct.nvme_fc_rport* }
%struct.nvme_fc_rport = type { %struct.TYPE_4__, i32, %struct.nvme_fc_lport* }
%struct.TYPE_4__ = type { i64 }
%struct.nvme_fc_lport = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@FC_OBJSTATE_DELETED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*)* @nvme_fc_ctlr_inactive_on_rport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_ctlr_inactive_on_rport(%struct.nvme_fc_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_fc_ctrl*, align 8
  %3 = alloca %struct.nvme_fc_rport*, align 8
  %4 = alloca %struct.nvme_fc_lport*, align 8
  %5 = alloca i64, align 8
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %2, align 8
  %6 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %6, i32 0, i32 0
  %8 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %7, align 8
  store %struct.nvme_fc_rport* %8, %struct.nvme_fc_rport** %3, align 8
  %9 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %9, i32 0, i32 2
  %11 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %10, align 8
  store %struct.nvme_fc_lport* %11, %struct.nvme_fc_lport** %4, align 8
  %12 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %12, i32 0, i32 1
  %14 = call i64 @atomic_dec_return(i32* %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %3, align 8
  %19 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FC_OBJSTATE_DELETED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.nvme_fc_lport*, %struct.nvme_fc_lport** %4, align 8
  %26 = getelementptr inbounds %struct.nvme_fc_lport, %struct.nvme_fc_lport* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %28, align 8
  %30 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %30, i32 0, i32 0
  %32 = call i32 %29(%struct.TYPE_4__* %31)
  br label %33

33:                                               ; preds = %24, %17
  %34 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %3, align 8
  %35 = call i32 @nvme_fc_rport_inactive_on_lport(%struct.nvme_fc_rport* %34)
  br label %36

36:                                               ; preds = %33, %1
  ret i32 0
}

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @nvme_fc_rport_inactive_on_lport(%struct.nvme_fc_rport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
