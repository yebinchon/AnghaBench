; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorbus_remove_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorbus_remove_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_device = type { i32, i64, i32, i32 }

@CONTROLVM_BUS_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @visorbus_remove_instance(%struct.visor_device* %0) #0 {
  %2 = alloca %struct.visor_device*, align 8
  store %struct.visor_device* %0, %struct.visor_device** %2, align 8
  %3 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %4 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @kfree(i32 %5)
  %7 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %8 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %7, i32 0, i32 2
  %9 = call i32 @list_del(i32* %8)
  %10 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %11 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %16 = load i32, i32* @CONTROLVM_BUS_DESTROY, align 4
  %17 = call i32 @visorbus_response(%struct.visor_device* %15, i32 0, i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %20 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %19, i32 0, i32 0
  %21 = call i32 @device_unregister(i32* %20)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @visorbus_response(%struct.visor_device*, i32, i32) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
