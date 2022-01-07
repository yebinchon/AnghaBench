; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_abort_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_abort_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_7__, %struct.ipr_cmnd*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ipr_ioa_cfg* }
%struct.TYPE_7__ = type { %struct.ipr_cmd_pkt, i32 }
%struct.ipr_cmd_pkt = type { i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Abort timed out. Resetting bus.\0A\00", align 1
@IPR_RQTYPE_IOACMD = common dso_local global i32 0, align 4
@IPR_RESET_DEVICE = common dso_local global i32 0, align 4
@IPR_RESET_TYPE_SELECT = common dso_local global i32 0, align 4
@IPR_BUS_RESET = common dso_local global i32 0, align 4
@ipr_bus_reset_done = common dso_local global i32 0, align 4
@ipr_timeout = common dso_local global i32 0, align 4
@IPR_DEVICE_RESET_TIMEOUT = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@ipr_cmd = common dso_local global %struct.ipr_cmnd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ipr_abort_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_abort_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_cmnd*, align 8
  %5 = alloca %struct.ipr_ioa_cfg*, align 8
  %6 = alloca %struct.ipr_cmd_pkt*, align 8
  %7 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %9 = ptrtoint %struct.ipr_cmnd* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @timer, align 4
  %12 = call %struct.ipr_cmnd* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.ipr_cmnd* %12, %struct.ipr_cmnd** %3, align 8
  %13 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %13, i32 0, i32 4
  %15 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %14, align 8
  store %struct.ipr_ioa_cfg* %15, %struct.ipr_ioa_cfg** %5, align 8
  store i64 0, i64* %7, align 8
  %16 = load i32, i32* @ENTER, align 4
  %17 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %18 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32 %21, i64 %22)
  %24 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %25 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %31 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %1
  %35 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %36 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32 %39, i64 %40)
  br label %95

42:                                               ; preds = %29
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %45 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sdev_printk(i32 %43, i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %50 = call %struct.ipr_cmnd* @ipr_get_free_ipr_cmnd(%struct.ipr_ioa_cfg* %49)
  store %struct.ipr_cmnd* %50, %struct.ipr_cmnd** %4, align 8
  %51 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %52 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %53 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %52, i32 0, i32 1
  store %struct.ipr_cmnd* %51, %struct.ipr_cmnd** %53, align 8
  %54 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %55 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %56 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %55, i32 0, i32 1
  store %struct.ipr_cmnd* %54, %struct.ipr_cmnd** %56, align 8
  %57 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %58 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %62 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %65 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store %struct.ipr_cmd_pkt* %66, %struct.ipr_cmd_pkt** %6, align 8
  %67 = load i32, i32* @IPR_RQTYPE_IOACMD, align 4
  %68 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %6, align 8
  %69 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @IPR_RESET_DEVICE, align 4
  %71 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %6, align 8
  %72 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @IPR_RESET_TYPE_SELECT, align 4
  %76 = load i32, i32* @IPR_BUS_RESET, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.ipr_cmd_pkt*, %struct.ipr_cmd_pkt** %6, align 8
  %79 = getelementptr inbounds %struct.ipr_cmd_pkt, %struct.ipr_cmd_pkt* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %77, i32* %81, align 4
  %82 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %83 = load i32, i32* @ipr_bus_reset_done, align 4
  %84 = load i32, i32* @ipr_timeout, align 4
  %85 = load i32, i32* @IPR_DEVICE_RESET_TIMEOUT, align 4
  %86 = call i32 @ipr_do_req(%struct.ipr_cmnd* %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %88 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32 %91, i64 %92)
  %94 = load i32, i32* @LEAVE, align 4
  br label %95

95:                                               ; preds = %42, %34
  ret void
}

declare dso_local %struct.ipr_cmnd* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @sdev_printk(i32, i32, i8*) #1

declare dso_local %struct.ipr_cmnd* @ipr_get_free_ipr_cmnd(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
