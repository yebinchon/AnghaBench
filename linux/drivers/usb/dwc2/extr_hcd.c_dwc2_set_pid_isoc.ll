; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_set_pid_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_set_pid_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_host_chan = type { i64, i32, i8*, i64 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@DWC2_HC_PID_DATA0 = common dso_local global i8* null, align 8
@DWC2_HC_PID_DATA1 = common dso_local global i8* null, align 8
@DWC2_HC_PID_DATA2 = common dso_local global i8* null, align 8
@DWC2_HC_PID_MDATA = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_host_chan*)* @dwc2_set_pid_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_set_pid_isoc(%struct.dwc2_host_chan* %0) #0 {
  %2 = alloca %struct.dwc2_host_chan*, align 8
  store %struct.dwc2_host_chan* %0, %struct.dwc2_host_chan** %2, align 8
  %3 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %2, align 8
  %4 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @USB_SPEED_HIGH, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %52

8:                                                ; preds = %1
  %9 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %2, align 8
  %10 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %2, align 8
  %15 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i8*, i8** @DWC2_HC_PID_DATA0, align 8
  %20 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %2, align 8
  %21 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  br label %36

22:                                               ; preds = %13
  %23 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %2, align 8
  %24 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i8*, i8** @DWC2_HC_PID_DATA1, align 8
  %29 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %2, align 8
  %30 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  br label %35

31:                                               ; preds = %22
  %32 = load i8*, i8** @DWC2_HC_PID_DATA2, align 8
  %33 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %2, align 8
  %34 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %18
  br label %51

37:                                               ; preds = %8
  %38 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %2, align 8
  %39 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** @DWC2_HC_PID_DATA0, align 8
  %44 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %2, align 8
  %45 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %50

46:                                               ; preds = %37
  %47 = load i8*, i8** @DWC2_HC_PID_MDATA, align 8
  %48 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %2, align 8
  %49 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %36
  br label %56

52:                                               ; preds = %1
  %53 = load i8*, i8** @DWC2_HC_PID_DATA0, align 8
  %54 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %2, align 8
  %55 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
