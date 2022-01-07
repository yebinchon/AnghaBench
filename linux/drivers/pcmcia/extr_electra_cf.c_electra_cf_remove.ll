; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_electra_cf.c_electra_cf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_electra_cf.c_electra_cf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.electra_cf_socket = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @electra_cf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @electra_cf_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.electra_cf_socket*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.electra_cf_socket* @dev_get_drvdata(%struct.device* %7)
  store %struct.electra_cf_socket* %8, %struct.electra_cf_socket** %4, align 8
  %9 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %10 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %9, i32 0, i32 10
  store i64 0, i64* %10, align 8
  %11 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %12 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %11, i32 0, i32 9
  %13 = call i32 @pcmcia_unregister_socket(i32* %12)
  %14 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %15 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.electra_cf_socket* %17)
  %19 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %20 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %19, i32 0, i32 7
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %23 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %26 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @__iounmap_at(i32 %24, i32 %27)
  %29 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %30 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iounmap(i32 %31)
  %33 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %34 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @iounmap(i32 %35)
  %37 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %38 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %41 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @release_mem_region(i32 %39, i32 %42)
  %44 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %45 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %48 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @release_region(i32 %46, i32 %49)
  %51 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %4, align 8
  %52 = call i32 @kfree(%struct.electra_cf_socket* %51)
  ret i32 0
}

declare dso_local %struct.electra_cf_socket* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pcmcia_unregister_socket(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.electra_cf_socket*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @__iounmap_at(i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.electra_cf_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
