; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_qmu.c_mtu3_qmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_qmu.c_mtu3_qmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3 = type { i32, i32 }

@QMU_GPD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"QMU_GPD size SHOULD be 16B\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"QMU_GPD\00", align 1
@QMU_GPD_RING_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtu3_qmu_init(%struct.mtu3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtu3*, align 8
  store %struct.mtu3* %0, %struct.mtu3** %3, align 8
  %4 = load i32, i32* @QMU_GPD_SIZE, align 4
  %5 = icmp eq i32 %4, 16
  %6 = zext i1 %5 to i32
  %7 = call i32 @compiletime_assert(i32 %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %9 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @QMU_GPD_RING_SIZE, align 4
  %12 = load i32, i32* @QMU_GPD_SIZE, align 4
  %13 = call i32 @dma_pool_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %11, i32 %12, i32 0)
  %14 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %15 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.mtu3*, %struct.mtu3** %3, align 8
  %17 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @compiletime_assert(i32, i8*) #1

declare dso_local i32 @dma_pool_create(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
