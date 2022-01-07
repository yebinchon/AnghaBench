; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32 }

@AF_POWER_DOWN = common dso_local global i32 0, align 4
@AF_FIRST_INIT = common dso_local global i32 0, align 4
@AF_POWER_MGT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_power_up(%struct.esas2r_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @AF_POWER_DOWN, align 4
  %7 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %7, i32 0, i32 0
  %9 = call i32 @clear_bit(i32 %6, i32* %8)
  %10 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %11 = call i32 @esas2r_init_pci_cfg_space(%struct.esas2r_adapter* %10)
  %12 = load i32, i32* @AF_FIRST_INIT, align 4
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %16, i32 0, i32 1
  %18 = call i32 @atomic_inc(i32* %17)
  %19 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %20 = call i32 @esas2r_check_adapter(%struct.esas2r_adapter* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @esas2r_init_adapter_hw(%struct.esas2r_adapter* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %28 = call i32 @esas2r_send_reset_ae(%struct.esas2r_adapter* %27, i32 1)
  %29 = load i32, i32* @AF_POWER_MGT, align 4
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %30, i32 0, i32 0
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @esas2r_init_pci_cfg_space(%struct.esas2r_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @esas2r_check_adapter(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_init_adapter_hw(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_send_reset_ae(%struct.esas2r_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
