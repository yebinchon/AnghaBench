; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_nvm_clear_auth_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_nvm_clear_auth_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32 }
%struct.nvm_auth_status = type { i32 }

@nvm_auth_status_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_switch*)* @nvm_clear_auth_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvm_clear_auth_status(%struct.tb_switch* %0) #0 {
  %2 = alloca %struct.tb_switch*, align 8
  %3 = alloca %struct.nvm_auth_status*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %2, align 8
  %4 = call i32 @mutex_lock(i32* @nvm_auth_status_lock)
  %5 = load %struct.tb_switch*, %struct.tb_switch** %2, align 8
  %6 = call %struct.nvm_auth_status* @__nvm_get_auth_status(%struct.tb_switch* %5)
  store %struct.nvm_auth_status* %6, %struct.nvm_auth_status** %3, align 8
  %7 = load %struct.nvm_auth_status*, %struct.nvm_auth_status** %3, align 8
  %8 = icmp ne %struct.nvm_auth_status* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.nvm_auth_status*, %struct.nvm_auth_status** %3, align 8
  %11 = getelementptr inbounds %struct.nvm_auth_status, %struct.nvm_auth_status* %10, i32 0, i32 0
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.nvm_auth_status*, %struct.nvm_auth_status** %3, align 8
  %14 = call i32 @kfree(%struct.nvm_auth_status* %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = call i32 @mutex_unlock(i32* @nvm_auth_status_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nvm_auth_status* @__nvm_get_auth_status(%struct.tb_switch*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.nvm_auth_status*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
