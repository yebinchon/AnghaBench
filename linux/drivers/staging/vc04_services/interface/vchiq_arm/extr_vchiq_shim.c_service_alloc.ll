; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_shim.c_service_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_shim.c_service_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shim_service = type { i32, i32, i32 }
%struct.service_creation = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.shim_service* (i32, %struct.service_creation*)* @service_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.shim_service* @service_alloc(i32 %0, %struct.service_creation* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.service_creation*, align 8
  %5 = alloca %struct.shim_service*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.service_creation* %1, %struct.service_creation** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.shim_service* @kzalloc(i32 12, i32 %6)
  store %struct.shim_service* %7, %struct.shim_service** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.shim_service*, %struct.shim_service** %5, align 8
  %10 = icmp ne %struct.shim_service* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load %struct.shim_service*, %struct.shim_service** %5, align 8
  %13 = getelementptr inbounds %struct.shim_service, %struct.shim_service* %12, i32 0, i32 2
  %14 = call i64 @vchiu_queue_init(i32* %13, i32 64)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.service_creation*, %struct.service_creation** %4, align 8
  %18 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.shim_service*, %struct.shim_service** %5, align 8
  %21 = getelementptr inbounds %struct.shim_service, %struct.shim_service* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.service_creation*, %struct.service_creation** %4, align 8
  %23 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.shim_service*, %struct.shim_service** %5, align 8
  %26 = getelementptr inbounds %struct.shim_service, %struct.shim_service* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %30

27:                                               ; preds = %11
  %28 = load %struct.shim_service*, %struct.shim_service** %5, align 8
  %29 = call i32 @kfree(%struct.shim_service* %28)
  store %struct.shim_service* null, %struct.shim_service** %5, align 8
  br label %30

30:                                               ; preds = %27, %16
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.shim_service*, %struct.shim_service** %5, align 8
  ret %struct.shim_service* %32
}

declare dso_local %struct.shim_service* @kzalloc(i32, i32) #1

declare dso_local i64 @vchiu_queue_init(i32*, i32) #1

declare dso_local i32 @kfree(%struct.shim_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
