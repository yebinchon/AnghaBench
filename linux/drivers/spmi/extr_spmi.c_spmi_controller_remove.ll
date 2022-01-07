; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_controller_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_controller_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_controller = type { i32 }

@spmi_ctrl_remove_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spmi_controller_remove(%struct.spmi_controller* %0) #0 {
  %2 = alloca %struct.spmi_controller*, align 8
  %3 = alloca i32, align 4
  store %struct.spmi_controller* %0, %struct.spmi_controller** %2, align 8
  %4 = load %struct.spmi_controller*, %struct.spmi_controller** %2, align 8
  %5 = icmp ne %struct.spmi_controller* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %15

7:                                                ; preds = %1
  %8 = load %struct.spmi_controller*, %struct.spmi_controller** %2, align 8
  %9 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %8, i32 0, i32 0
  %10 = load i32, i32* @spmi_ctrl_remove_device, align 4
  %11 = call i32 @device_for_each_child(i32* %9, i32* null, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.spmi_controller*, %struct.spmi_controller** %2, align 8
  %13 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %12, i32 0, i32 0
  %14 = call i32 @device_del(i32* %13)
  br label %15

15:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @device_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
