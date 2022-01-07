; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_disallow_sync_reply.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_disallow_sync_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32 }

@LSFL_RCOM_WAIT = common dso_local global i32 0, align 4
@LSFL_RCOM_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*)* @disallow_sync_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disallow_sync_reply(%struct.dlm_ls* %0) #0 {
  %2 = alloca %struct.dlm_ls*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %2, align 8
  %3 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %4 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %3, i32 0, i32 0
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load i32, i32* @LSFL_RCOM_WAIT, align 4
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %8 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %7, i32 0, i32 1
  %9 = call i32 @clear_bit(i32 %6, i32* %8)
  %10 = load i32, i32* @LSFL_RCOM_READY, align 4
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %12 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %11, i32 0, i32 1
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %15 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock(i32* %15)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
