; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_find_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_find_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_ep = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dummy = type { %struct.dummy_ep*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@USB_DIR_IN = common dso_local global i32 0, align 4
@DUMMY_ENDPOINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dummy_ep* (%struct.dummy*, i32)* @find_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dummy_ep* @find_endpoint(%struct.dummy* %0, i32 %1) #0 {
  %3 = alloca %struct.dummy_ep*, align 8
  %4 = alloca %struct.dummy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dummy_ep*, align 8
  store %struct.dummy* %0, %struct.dummy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dummy*, %struct.dummy** %4, align 8
  %9 = getelementptr inbounds %struct.dummy, %struct.dummy* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_SPEED_SUPER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.dummy*, %struct.dummy** %4, align 8
  %16 = getelementptr inbounds %struct.dummy, %struct.dummy* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.dummy*, %struct.dummy** %4, align 8
  %20 = getelementptr inbounds %struct.dummy, %struct.dummy* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %17, %14 ], [ %21, %18 ]
  %24 = call i32 @is_active(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store %struct.dummy_ep* null, %struct.dummy_ep** %3, align 8
  br label %76

27:                                               ; preds = %22
  %28 = load %struct.dummy*, %struct.dummy** %4, align 8
  %29 = getelementptr inbounds %struct.dummy, %struct.dummy* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store %struct.dummy_ep* null, %struct.dummy_ep** %3, align 8
  br label %76

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @USB_DIR_IN, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.dummy*, %struct.dummy** %4, align 8
  %41 = getelementptr inbounds %struct.dummy, %struct.dummy* %40, i32 0, i32 0
  %42 = load %struct.dummy_ep*, %struct.dummy_ep** %41, align 8
  %43 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %42, i64 0
  store %struct.dummy_ep* %43, %struct.dummy_ep** %3, align 8
  br label %76

44:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %72, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @DUMMY_ENDPOINTS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load %struct.dummy*, %struct.dummy** %4, align 8
  %51 = getelementptr inbounds %struct.dummy, %struct.dummy* %50, i32 0, i32 0
  %52 = load %struct.dummy_ep*, %struct.dummy_ep** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %52, i64 %54
  store %struct.dummy_ep* %55, %struct.dummy_ep** %7, align 8
  %56 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %57 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  br label %72

61:                                               ; preds = %49
  %62 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  %63 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load %struct.dummy_ep*, %struct.dummy_ep** %7, align 8
  store %struct.dummy_ep* %70, %struct.dummy_ep** %3, align 8
  br label %76

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %45

75:                                               ; preds = %45
  store %struct.dummy_ep* null, %struct.dummy_ep** %3, align 8
  br label %76

76:                                               ; preds = %75, %69, %39, %32, %26
  %77 = load %struct.dummy_ep*, %struct.dummy_ep** %3, align 8
  ret %struct.dummy_ep* %77
}

declare dso_local i32 @is_active(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
