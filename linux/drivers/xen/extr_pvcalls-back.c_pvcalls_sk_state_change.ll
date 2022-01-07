; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_sk_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_sk_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sock_mapping* }
%struct.sock_mapping = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @pvcalls_sk_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvcalls_sk_state_change(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sock_mapping*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  store %struct.sock_mapping* %6, %struct.sock_mapping** %3, align 8
  %7 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %8 = icmp eq %struct.sock_mapping* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %12 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %11, i32 0, i32 1
  %13 = call i32 @atomic_inc(i32* %12)
  %14 = load %struct.sock_mapping*, %struct.sock_mapping** %3, align 8
  %15 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @notify_remote_via_irq(i32 %16)
  br label %18

18:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
