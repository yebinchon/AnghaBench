; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FIP_ST_LINK_WAIT = common dso_local global i32 0, align 4
@FC_XID_UNKNOWN = common dso_local global i32 0, align 4
@fcoe_ctlr_timeout = common dso_local global i32 0, align 4
@fcoe_ctlr_timer_work = common dso_local global i32 0, align 4
@fcoe_ctlr_recv_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcoe_ctlr_init(%struct.fcoe_ctlr* %0, i32 %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca i32, align 4
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %6 = load i32, i32* @FIP_ST_LINK_WAIT, align 4
  %7 = call i32 @fcoe_ctlr_set_state(%struct.fcoe_ctlr* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %10 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %12 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %14 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %13, i32 0, i32 9
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %17 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %16, i32 0, i32 8
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %20 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %19, i32 0, i32 7
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load i32, i32* @FC_XID_UNKNOWN, align 4
  %23 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %24 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %26 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %25, i32 0, i32 5
  %27 = load i32, i32* @fcoe_ctlr_timeout, align 4
  %28 = call i32 @timer_setup(i32* %26, i32 %27, i32 0)
  %29 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %30 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %29, i32 0, i32 4
  %31 = load i32, i32* @fcoe_ctlr_timer_work, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %34 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %33, i32 0, i32 3
  %35 = load i32, i32* @fcoe_ctlr_recv_work, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %38 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %37, i32 0, i32 2
  %39 = call i32 @skb_queue_head_init(i32* %38)
  ret void
}

declare dso_local i32 @fcoe_ctlr_set_state(%struct.fcoe_ctlr*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
