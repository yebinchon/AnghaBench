; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_new_vchi_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_new_vchi_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bcm2835_vchi_ctx = type { i32* }

@.str = private unnamed_addr constant [45 x i8] c"failed to initialise VCHI instance (ret=%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to connect VCHI instance (ret=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm2835_new_vchi_ctx(%struct.device* %0, %struct.bcm2835_vchi_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.bcm2835_vchi_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.bcm2835_vchi_ctx* %1, %struct.bcm2835_vchi_ctx** %5, align 8
  %7 = load %struct.bcm2835_vchi_ctx*, %struct.bcm2835_vchi_ctx** %5, align 8
  %8 = getelementptr inbounds %struct.bcm2835_vchi_ctx, %struct.bcm2835_vchi_ctx* %7, i32 0, i32 0
  %9 = call i32 @vchi_initialise(i32** %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.bcm2835_vchi_ctx*, %struct.bcm2835_vchi_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.bcm2835_vchi_ctx, %struct.bcm2835_vchi_ctx* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @vchi_connect(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_dbg(%struct.device* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.bcm2835_vchi_ctx*, %struct.bcm2835_vchi_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.bcm2835_vchi_ctx, %struct.bcm2835_vchi_ctx* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.bcm2835_vchi_ctx*, %struct.bcm2835_vchi_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.bcm2835_vchi_ctx, %struct.bcm2835_vchi_ctx* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %25, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @vchi_initialise(i32**) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @vchi_connect(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
