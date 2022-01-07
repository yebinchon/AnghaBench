; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_nvm_authenticate_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_nvm_authenticate_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32, i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*)* @nvm_authenticate_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_authenticate_host(%struct.tb_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  %5 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %6 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %1
  %10 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %11 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @tb_domain_disconnect_all_paths(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %9
  %19 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %20 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dma_port_flash_update_auth(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 0, %27 ], [ %29, %28 ]
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %1
  %33 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %34 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dma_port_power_cycle(i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %30, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @tb_domain_disconnect_all_paths(i32) #1

declare dso_local i32 @dma_port_flash_update_auth(i32) #1

declare dso_local i32 @dma_port_power_cycle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
