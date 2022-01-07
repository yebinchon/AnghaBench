; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdomain_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_xdomain_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_xdomain = type { i32 }

@unregister_service = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_xdomain_remove(%struct.tb_xdomain* %0) #0 {
  %2 = alloca %struct.tb_xdomain*, align 8
  store %struct.tb_xdomain* %0, %struct.tb_xdomain** %2, align 8
  %3 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %4 = call i32 @stop_handshake(%struct.tb_xdomain* %3)
  %5 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %6 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %5, i32 0, i32 0
  %7 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %8 = load i32, i32* @unregister_service, align 4
  %9 = call i32 @device_for_each_child_reverse(i32* %6, %struct.tb_xdomain* %7, i32 %8)
  %10 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %11 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %10, i32 0, i32 0
  %12 = call i32 @pm_runtime_disable(i32* %11)
  %13 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %14 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %13, i32 0, i32 0
  %15 = call i32 @pm_runtime_put_noidle(i32* %14)
  %16 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %17 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %16, i32 0, i32 0
  %18 = call i32 @pm_runtime_set_suspended(i32* %17)
  %19 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %20 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %19, i32 0, i32 0
  %21 = call i32 @device_is_registered(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %25 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %24, i32 0, i32 0
  %26 = call i32 @put_device(i32* %25)
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.tb_xdomain*, %struct.tb_xdomain** %2, align 8
  %29 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %28, i32 0, i32 0
  %30 = call i32 @device_unregister(i32* %29)
  br label %31

31:                                               ; preds = %27, %23
  ret void
}

declare dso_local i32 @stop_handshake(%struct.tb_xdomain*) #1

declare dso_local i32 @device_for_each_child_reverse(i32*, %struct.tb_xdomain*, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
