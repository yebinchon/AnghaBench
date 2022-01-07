; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_next_periodic_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_next_periodic_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_qh = type { i32, i32, i32, i64, i64 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@DWC2_HS_SCHEDULE_UFRAMES = common dso_local global i32 0, align 4
@DWC2_LS_SCHEDULE_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_qh*, i32)* @dwc2_next_periodic_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_next_periodic_start(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1, i32 %2) #0 {
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.dwc2_qh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %13 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dwc2_frame_num_dec(i32 %15, i32 1)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %18 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i8* @dwc2_frame_num_inc(i32 %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %24 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sge i32 %25, 4096
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %88

28:                                               ; preds = %3
  %29 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %30 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %33 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %39 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @dwc2_frame_num_gt(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %36, %28
  %44 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %45 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %48 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %53 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @USB_SPEED_HIGH, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51, %43
  %58 = load i32, i32* @DWC2_HS_SCHEDULE_UFRAMES, align 4
  store i32 %58, i32* %11, align 4
  br label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @DWC2_LS_SCHEDULE_FRAMES, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @gcd(i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %74, %61
  %66 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %67 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @dwc2_frame_num_inc(i32 %68, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %73 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %77 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @dwc2_frame_num_gt(i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %65, label %81

81:                                               ; preds = %74
  %82 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %83 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @dwc2_frame_num_dec(i32 %84, i32 %85)
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %81, %36
  br label %88

88:                                               ; preds = %87, %27
  %89 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %90 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dwc2_qh*, %struct.dwc2_qh** %5, align 8
  %93 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @dwc2_frame_num_dec(i32, i32) #1

declare dso_local i8* @dwc2_frame_num_inc(i32, i32) #1

declare dso_local i64 @dwc2_frame_num_gt(i32, i32) #1

declare dso_local i32 @gcd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
