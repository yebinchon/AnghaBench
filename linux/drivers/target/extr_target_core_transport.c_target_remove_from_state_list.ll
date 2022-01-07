; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_remove_from_state_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_remove_from_state_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, %struct.se_device* }
%struct.se_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*)* @target_remove_from_state_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @target_remove_from_state_list(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 2
  %7 = load %struct.se_device*, %struct.se_device** %6, align 8
  store %struct.se_device* %7, %struct.se_device** %3, align 8
  %8 = load %struct.se_device*, %struct.se_device** %3, align 8
  %9 = icmp ne %struct.se_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.se_device*, %struct.se_device** %3, align 8
  %13 = getelementptr inbounds %struct.se_device, %struct.se_device* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 1
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %20, %11
  %27 = load %struct.se_device*, %struct.se_device** %3, align 8
  %28 = getelementptr inbounds %struct.se_device, %struct.se_device* %27, i32 0, i32 0
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %26, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
