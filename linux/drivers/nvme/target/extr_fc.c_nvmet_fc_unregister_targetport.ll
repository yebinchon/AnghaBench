; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_unregister_targetport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_unregister_targetport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_target_port = type { i32 }
%struct.nvmet_fc_tgtport = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmet_fc_unregister_targetport(%struct.nvmet_fc_target_port* %0) #0 {
  %2 = alloca %struct.nvmet_fc_target_port*, align 8
  %3 = alloca %struct.nvmet_fc_tgtport*, align 8
  store %struct.nvmet_fc_target_port* %0, %struct.nvmet_fc_target_port** %2, align 8
  %4 = load %struct.nvmet_fc_target_port*, %struct.nvmet_fc_target_port** %2, align 8
  %5 = call %struct.nvmet_fc_tgtport* @targetport_to_tgtport(%struct.nvmet_fc_target_port* %4)
  store %struct.nvmet_fc_tgtport* %5, %struct.nvmet_fc_tgtport** %3, align 8
  %6 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %7 = call i32 @nvmet_fc_portentry_unbind_tgt(%struct.nvmet_fc_tgtport* %6)
  %8 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %9 = call i32 @__nvmet_fc_free_assocs(%struct.nvmet_fc_tgtport* %8)
  %10 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %11 = call i32 @nvmet_fc_tgtport_put(%struct.nvmet_fc_tgtport* %10)
  ret i32 0
}

declare dso_local %struct.nvmet_fc_tgtport* @targetport_to_tgtport(%struct.nvmet_fc_target_port*) #1

declare dso_local i32 @nvmet_fc_portentry_unbind_tgt(%struct.nvmet_fc_tgtport*) #1

declare dso_local i32 @__nvmet_fc_free_assocs(%struct.nvmet_fc_tgtport*) #1

declare dso_local i32 @nvmet_fc_tgtport_put(%struct.nvmet_fc_tgtport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
