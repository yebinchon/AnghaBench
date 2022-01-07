; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_find_tt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_find_tt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mu3h_sch_tt = type { i32, %struct.usb_tt*, i32 }
%struct.usb_tt = type { %struct.mu3h_sch_tt**, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32, %struct.usb_tt* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mu3h_sch_tt* (%struct.usb_device*)* @find_tt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mu3h_sch_tt* @find_tt(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.mu3h_sch_tt*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_tt*, align 8
  %5 = alloca %struct.mu3h_sch_tt*, align 8
  %6 = alloca %struct.mu3h_sch_tt**, align 8
  %7 = alloca %struct.mu3h_sch_tt**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 1
  %12 = load %struct.usb_tt*, %struct.usb_tt** %11, align 8
  store %struct.usb_tt* %12, %struct.usb_tt** %4, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %14 = icmp ne %struct.usb_tt* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.mu3h_sch_tt* null, %struct.mu3h_sch_tt** %2, align 8
  br label %94

16:                                               ; preds = %1
  store %struct.mu3h_sch_tt** null, %struct.mu3h_sch_tt*** %6, align 8
  %17 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %18 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %16
  %22 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %23 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %22, i32 0, i32 0
  %24 = load %struct.mu3h_sch_tt**, %struct.mu3h_sch_tt*** %23, align 8
  store %struct.mu3h_sch_tt** %24, %struct.mu3h_sch_tt*** %6, align 8
  %25 = load %struct.mu3h_sch_tt**, %struct.mu3h_sch_tt*** %6, align 8
  %26 = icmp ne %struct.mu3h_sch_tt** %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %21
  %28 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %29 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.mu3h_sch_tt** @kcalloc(i32 %32, i32 8, i32 %33)
  store %struct.mu3h_sch_tt** %34, %struct.mu3h_sch_tt*** %6, align 8
  %35 = load %struct.mu3h_sch_tt**, %struct.mu3h_sch_tt*** %6, align 8
  %36 = icmp ne %struct.mu3h_sch_tt** %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.mu3h_sch_tt* @ERR_PTR(i32 %39)
  store %struct.mu3h_sch_tt* %40, %struct.mu3h_sch_tt** %2, align 8
  br label %94

41:                                               ; preds = %27
  %42 = load %struct.mu3h_sch_tt**, %struct.mu3h_sch_tt*** %6, align 8
  %43 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %44 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %43, i32 0, i32 0
  store %struct.mu3h_sch_tt** %42, %struct.mu3h_sch_tt*** %44, align 8
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %21
  %46 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = load %struct.mu3h_sch_tt**, %struct.mu3h_sch_tt*** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %50, i64 %52
  store %struct.mu3h_sch_tt** %53, %struct.mu3h_sch_tt*** %7, align 8
  br label %58

54:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  %55 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %56 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %55, i32 0, i32 0
  %57 = bitcast %struct.mu3h_sch_tt*** %56 to %struct.mu3h_sch_tt**
  store %struct.mu3h_sch_tt** %57, %struct.mu3h_sch_tt*** %7, align 8
  br label %58

58:                                               ; preds = %54, %45
  %59 = load %struct.mu3h_sch_tt**, %struct.mu3h_sch_tt*** %7, align 8
  %60 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %59, align 8
  store %struct.mu3h_sch_tt* %60, %struct.mu3h_sch_tt** %5, align 8
  %61 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %5, align 8
  %62 = icmp ne %struct.mu3h_sch_tt* %61, null
  br i1 %62, label %92, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.mu3h_sch_tt* @kzalloc(i32 24, i32 %64)
  store %struct.mu3h_sch_tt* %65, %struct.mu3h_sch_tt** %5, align 8
  %66 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %5, align 8
  %67 = icmp ne %struct.mu3h_sch_tt* %66, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %73 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %72, i32 0, i32 0
  store %struct.mu3h_sch_tt** null, %struct.mu3h_sch_tt*** %73, align 8
  %74 = load %struct.mu3h_sch_tt**, %struct.mu3h_sch_tt*** %6, align 8
  %75 = call i32 @kfree(%struct.mu3h_sch_tt** %74)
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.mu3h_sch_tt* @ERR_PTR(i32 %78)
  store %struct.mu3h_sch_tt* %79, %struct.mu3h_sch_tt** %2, align 8
  br label %94

80:                                               ; preds = %63
  %81 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %5, align 8
  %82 = getelementptr inbounds %struct.mu3h_sch_tt, %struct.mu3h_sch_tt* %81, i32 0, i32 2
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.usb_tt*, %struct.usb_tt** %4, align 8
  %85 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %5, align 8
  %86 = getelementptr inbounds %struct.mu3h_sch_tt, %struct.mu3h_sch_tt* %85, i32 0, i32 1
  store %struct.usb_tt* %84, %struct.usb_tt** %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %5, align 8
  %89 = getelementptr inbounds %struct.mu3h_sch_tt, %struct.mu3h_sch_tt* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %5, align 8
  %91 = load %struct.mu3h_sch_tt**, %struct.mu3h_sch_tt*** %7, align 8
  store %struct.mu3h_sch_tt* %90, %struct.mu3h_sch_tt** %91, align 8
  br label %92

92:                                               ; preds = %80, %58
  %93 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %5, align 8
  store %struct.mu3h_sch_tt* %93, %struct.mu3h_sch_tt** %2, align 8
  br label %94

94:                                               ; preds = %92, %76, %37, %15
  %95 = load %struct.mu3h_sch_tt*, %struct.mu3h_sch_tt** %2, align 8
  ret %struct.mu3h_sch_tt* %95
}

declare dso_local %struct.mu3h_sch_tt** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.mu3h_sch_tt* @ERR_PTR(i32) #1

declare dso_local %struct.mu3h_sch_tt* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.mu3h_sch_tt**) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
