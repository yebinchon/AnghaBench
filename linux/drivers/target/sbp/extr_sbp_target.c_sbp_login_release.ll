; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_login_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_login_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_login_descriptor = type { i32, i32, %struct.sbp_session* }
%struct.sbp_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_login_descriptor*, i32)* @sbp_login_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_login_release(%struct.sbp_login_descriptor* %0, i32 %1) #0 {
  %3 = alloca %struct.sbp_login_descriptor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbp_session*, align 8
  store %struct.sbp_login_descriptor* %0, %struct.sbp_login_descriptor** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %3, align 8
  %7 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %6, i32 0, i32 2
  %8 = load %struct.sbp_session*, %struct.sbp_session** %7, align 8
  store %struct.sbp_session* %8, %struct.sbp_session** %5, align 8
  %9 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %3, align 8
  %10 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sbp_target_agent_unregister(i32 %11)
  %13 = load %struct.sbp_session*, %struct.sbp_session** %5, align 8
  %14 = icmp ne %struct.sbp_session* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.sbp_session*, %struct.sbp_session** %5, align 8
  %17 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %3, align 8
  %20 = getelementptr inbounds %struct.sbp_login_descriptor, %struct.sbp_login_descriptor* %19, i32 0, i32 0
  %21 = call i32 @list_del(i32* %20)
  %22 = load %struct.sbp_session*, %struct.sbp_session** %5, align 8
  %23 = getelementptr inbounds %struct.sbp_session, %struct.sbp_session* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load %struct.sbp_session*, %struct.sbp_session** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @sbp_session_release(%struct.sbp_session* %25, i32 %26)
  br label %28

28:                                               ; preds = %15, %2
  %29 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %3, align 8
  %30 = call i32 @kfree(%struct.sbp_login_descriptor* %29)
  ret void
}

declare dso_local i32 @sbp_target_agent_unregister(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @sbp_session_release(%struct.sbp_session*, i32) #1

declare dso_local i32 @kfree(%struct.sbp_login_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
