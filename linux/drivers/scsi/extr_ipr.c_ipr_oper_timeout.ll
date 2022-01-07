; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_oper_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_oper_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.ipr_ioa_cfg* }
%struct.ipr_ioa_cfg = type { i64, %struct.TYPE_4__*, i32, %struct.ipr_cmnd*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Adapter timed out transitioning to operational.\0A\00", align 1
@WAIT_FOR_DUMP = common dso_local global i64 0, align 8
@GET_DUMP = common dso_local global i64 0, align 8
@ipr_fastfail = common dso_local global i64 0, align 8
@IPR_NUM_RESET_RELOAD_RETRIES = common dso_local global i64 0, align 8
@IPR_SHUTDOWN_NONE = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@ipr_cmd = common dso_local global %struct.ipr_cmnd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ipr_oper_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_oper_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ipr_ioa_cfg*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %7 = ptrtoint %struct.ipr_cmnd* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.ipr_cmnd* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.ipr_cmnd* %10, %struct.ipr_cmnd** %3, align 8
  store i64 0, i64* %4, align 8
  %11 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %11, i32 0, i32 0
  %13 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %12, align 8
  store %struct.ipr_ioa_cfg* %13, %struct.ipr_ioa_cfg** %5, align 8
  %14 = load i32, i32* @ENTER, align 4
  %15 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %16 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  %22 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %26, i32 0, i32 5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @WAIT_FOR_DUMP, align 8
  %32 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i64, i64* @GET_DUMP, align 8
  %38 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %39 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %1
  %41 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %42 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %47 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %46, i32 0, i32 3
  %48 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %47, align 8
  %49 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %50 = icmp eq %struct.ipr_cmnd* %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %45, %40
  %52 = load i64, i64* @ipr_fastfail, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i64, i64* @IPR_NUM_RESET_RELOAD_RETRIES, align 8
  %56 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %57 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 8
  br label %62

62:                                               ; preds = %54, %51
  %63 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %64 = load i32, i32* @IPR_SHUTDOWN_NONE, align 4
  %65 = call i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %45
  %67 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  %68 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32 %71, i64 %72)
  %74 = load i32, i32* @LEAVE, align 4
  ret void
}

declare dso_local %struct.ipr_cmnd* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
