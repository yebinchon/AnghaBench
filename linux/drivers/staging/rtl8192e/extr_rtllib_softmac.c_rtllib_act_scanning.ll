; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_act_scanning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_act_scanning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32, i32, i64 }

@IEEE_SOFTMAC_SCAN = common dso_local global i32 0, align 4
@STATUS_SCANNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtllib_act_scanning(%struct.rtllib_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %7 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IEEE_SOFTMAC_SCAN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %17 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %37

19:                                               ; preds = %12
  %20 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %21 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %26 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load i32, i32* @STATUS_SCANNING, align 4
  %34 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %35 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %34, i32 0, i32 2
  %36 = call i32 @test_bit(i32 %33, i32* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %29, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
