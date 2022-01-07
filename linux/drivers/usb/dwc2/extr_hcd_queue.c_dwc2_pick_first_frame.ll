; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_pick_first_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_pick_first_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dwc2_qh = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@DWC2_HS_PERIODIC_US_PER_UFRAME = common dso_local global i32 0, align 4
@DWC2_HS_SCHEDULE_UFRAMES = common dso_local global i32 0, align 4
@DWC2_LS_PERIODIC_SLICES_PER_FRAME = common dso_local global i32 0, align 4
@DWC2_LS_SCHEDULE_FRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"QH=%p First fn=%04x nxt=%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_qh*)* @dwc2_pick_first_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_pick_first_frame(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %4, align 8
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %11 = call i32 @dwc2_hcd_get_frame_number(%struct.dwc2_hsotg* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @dwc2_frame_num_inc(i32 %12, i32 1)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %16 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %22 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, 7
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %20
  br label %97

29:                                               ; preds = %2
  %30 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %31 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @USB_SPEED_HIGH, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %37 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %35, %29
  %41 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %42 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  %47 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %48 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %47, i32 0, i32 6
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DWC2_HS_PERIODIC_US_PER_UFRAME, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %56 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DWC2_HS_SCHEDULE_UFRAMES, align 4
  %59 = call i32 @gcd(i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  br label %71

60:                                               ; preds = %35
  %61 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %62 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DWC2_LS_PERIODIC_SLICES_PER_FRAME, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %8, align 4
  %66 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %67 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DWC2_LS_SCHEDULE_FRAMES, align 4
  %70 = call i32 @gcd(i32 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %60, %40
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp sge i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @WARN_ON(i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sdiv i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %79, %80
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @dwc2_frame_num_inc(i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @dwc2_frame_num_dec(i32 %85, i32 1)
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %92, %71
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @dwc2_frame_num_gt(i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @dwc2_frame_num_inc(i32 %93, i32 %94)
  store i32 %95, i32* %7, align 4
  br label %87

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %28
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %100 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %103 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  %104 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %105 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %108 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dwc2_sch_vdbg(%struct.dwc2_hsotg* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.dwc2_qh* %105, i32 %106, i32 %109)
  ret void
}

declare dso_local i32 @dwc2_hcd_get_frame_number(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_frame_num_inc(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local i32 @dwc2_frame_num_dec(i32, i32) #1

declare dso_local i64 @dwc2_frame_num_gt(i32, i32) #1

declare dso_local i32 @dwc2_sch_vdbg(%struct.dwc2_hsotg*, i8*, %struct.dwc2_qh*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
