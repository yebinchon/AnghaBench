; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_find_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_find_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_ep = type { i64, i64 }
%struct.isp1760_udc = type { %struct.isp1760_ep* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isp1760_ep* (%struct.isp1760_udc*, i64)* @isp1760_udc_find_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isp1760_ep* @isp1760_udc_find_ep(%struct.isp1760_udc* %0, i64 %1) #0 {
  %3 = alloca %struct.isp1760_ep*, align 8
  %4 = alloca %struct.isp1760_udc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.isp1760_udc* %0, %struct.isp1760_udc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %11 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %10, i32 0, i32 0
  %12 = load %struct.isp1760_ep*, %struct.isp1760_ep** %11, align 8
  %13 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %12, i64 0
  store %struct.isp1760_ep* %13, %struct.isp1760_ep** %3, align 8
  br label %58

14:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %15

15:                                               ; preds = %54, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %18 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %17, i32 0, i32 0
  %19 = load %struct.isp1760_ep*, %struct.isp1760_ep** %18, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.isp1760_ep* %19)
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %15
  %23 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %24 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %23, i32 0, i32 0
  %25 = load %struct.isp1760_ep*, %struct.isp1760_ep** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %25, i64 %27
  %29 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %22
  %34 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %35 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %34, i32 0, i32 0
  %36 = load %struct.isp1760_ep*, %struct.isp1760_ep** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %36, i64 %38
  %40 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %45 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %44, i32 0, i32 0
  %46 = load %struct.isp1760_ep*, %struct.isp1760_ep** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.isp1760_ep, %struct.isp1760_ep* %46, i64 %48
  br label %51

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %43
  %52 = phi %struct.isp1760_ep* [ %49, %43 ], [ null, %50 ]
  store %struct.isp1760_ep* %52, %struct.isp1760_ep** %3, align 8
  br label %58

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %15

57:                                               ; preds = %15
  store %struct.isp1760_ep* null, %struct.isp1760_ep** %3, align 8
  br label %58

58:                                               ; preds = %57, %51, %9
  %59 = load %struct.isp1760_ep*, %struct.isp1760_ep** %3, align 8
  ret %struct.isp1760_ep* %59
}

declare dso_local i32 @ARRAY_SIZE(%struct.isp1760_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
