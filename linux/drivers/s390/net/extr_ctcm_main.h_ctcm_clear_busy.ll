; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.h_ctcm_clear_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.h_ctcm_clear_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.mpc_group = type { i64 }
%struct.ctcm_priv = type { %struct.mpc_group* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ctcm_clear_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctcm_clear_busy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mpc_group*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.ctcm_priv*
  %8 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %7, i32 0, i32 0
  %9 = load %struct.mpc_group*, %struct.mpc_group** %8, align 8
  store %struct.mpc_group* %9, %struct.mpc_group** %3, align 8
  %10 = load %struct.mpc_group*, %struct.mpc_group** %3, align 8
  %11 = icmp ne %struct.mpc_group* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.mpc_group*, %struct.mpc_group** %3, align 8
  %14 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @ctcm_clear_busy_do(%struct.net_device* %18)
  br label %20

20:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @ctcm_clear_busy_do(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
