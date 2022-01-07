; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835.c_bcm2835_devm_add_vchi_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835.c_bcm2835_devm_add_vchi_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bcm2835_vchi_ctx = type { i32 }

@bcm2835_devm_free_vchi_ctx = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @bcm2835_devm_add_vchi_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_devm_add_vchi_ctx(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.bcm2835_vchi_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load i32, i32* @bcm2835_devm_free_vchi_ctx, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.bcm2835_vchi_ctx* @devres_alloc(i32 %6, i32 4, i32 %7)
  store %struct.bcm2835_vchi_ctx* %8, %struct.bcm2835_vchi_ctx** %4, align 8
  %9 = load %struct.bcm2835_vchi_ctx*, %struct.bcm2835_vchi_ctx** %4, align 8
  %10 = icmp ne %struct.bcm2835_vchi_ctx* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.bcm2835_vchi_ctx*, %struct.bcm2835_vchi_ctx** %4, align 8
  %17 = call i32 @bcm2835_new_vchi_ctx(%struct.device* %15, %struct.bcm2835_vchi_ctx* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.bcm2835_vchi_ctx*, %struct.bcm2835_vchi_ctx** %4, align 8
  %22 = call i32 @devres_free(%struct.bcm2835_vchi_ctx* %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load %struct.bcm2835_vchi_ctx*, %struct.bcm2835_vchi_ctx** %4, align 8
  %27 = call i32 @devres_add(%struct.device* %25, %struct.bcm2835_vchi_ctx* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %20, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.bcm2835_vchi_ctx* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @bcm2835_new_vchi_ctx(%struct.device*, %struct.bcm2835_vchi_ctx*) #1

declare dso_local i32 @devres_free(%struct.bcm2835_vchi_ctx*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.bcm2835_vchi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
