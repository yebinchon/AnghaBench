; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_tgt_discovery_evt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fcloop.c_fcloop_tgt_discovery_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_target_port = type { i32 }
%struct.fcloop_rscn = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@fcloop_tgt_rscn_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_target_port*)* @fcloop_tgt_discovery_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcloop_tgt_discovery_evt(%struct.nvmet_fc_target_port* %0) #0 {
  %2 = alloca %struct.nvmet_fc_target_port*, align 8
  %3 = alloca %struct.fcloop_rscn*, align 8
  store %struct.nvmet_fc_target_port* %0, %struct.nvmet_fc_target_port** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.fcloop_rscn* @kzalloc(i32 8, i32 %4)
  store %struct.fcloop_rscn* %5, %struct.fcloop_rscn** %3, align 8
  %6 = load %struct.fcloop_rscn*, %struct.fcloop_rscn** %3, align 8
  %7 = icmp ne %struct.fcloop_rscn* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.nvmet_fc_target_port*, %struct.nvmet_fc_target_port** %2, align 8
  %11 = getelementptr inbounds %struct.nvmet_fc_target_port, %struct.nvmet_fc_target_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fcloop_rscn*, %struct.fcloop_rscn** %3, align 8
  %14 = getelementptr inbounds %struct.fcloop_rscn, %struct.fcloop_rscn* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.fcloop_rscn*, %struct.fcloop_rscn** %3, align 8
  %16 = getelementptr inbounds %struct.fcloop_rscn, %struct.fcloop_rscn* %15, i32 0, i32 0
  %17 = load i32, i32* @fcloop_tgt_rscn_work, align 4
  %18 = call i32 @INIT_WORK(i32* %16, i32 %17)
  %19 = load %struct.fcloop_rscn*, %struct.fcloop_rscn** %3, align 8
  %20 = getelementptr inbounds %struct.fcloop_rscn, %struct.fcloop_rscn* %19, i32 0, i32 0
  %21 = call i32 @schedule_work(i32* %20)
  br label %22

22:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.fcloop_rscn* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
