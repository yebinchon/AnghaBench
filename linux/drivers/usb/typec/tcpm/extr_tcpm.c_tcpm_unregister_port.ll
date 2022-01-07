; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_unregister_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_unregister_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcpm_unregister_port(%struct.tcpm_port* %0) #0 {
  %2 = alloca %struct.tcpm_port*, align 8
  %3 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %2, align 8
  %4 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %5 = call i32 @tcpm_reset_port(%struct.tcpm_port* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %9 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %6
  %14 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %15 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @typec_unregister_altmode(i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %27 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @typec_unregister_port(i32 %28)
  %30 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %31 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_role_switch_put(i32 %32)
  %34 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %35 = call i32 @tcpm_debugfs_exit(%struct.tcpm_port* %34)
  %36 = load %struct.tcpm_port*, %struct.tcpm_port** %2, align 8
  %37 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @destroy_workqueue(i32 %38)
  ret void
}

declare dso_local i32 @tcpm_reset_port(%struct.tcpm_port*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @typec_unregister_altmode(i32) #1

declare dso_local i32 @typec_unregister_port(i32) #1

declare dso_local i32 @usb_role_switch_put(i32) #1

declare dso_local i32 @tcpm_debugfs_exit(%struct.tcpm_port*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
