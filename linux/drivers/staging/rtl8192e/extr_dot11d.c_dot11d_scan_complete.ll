; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_dot11d.c_dot11d_scan_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_dot11d.c_dot11d_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32 }
%struct.rt_dot11d_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dot11d_scan_complete(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  %3 = alloca %struct.rt_dot11d_info*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  %4 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %5 = call %struct.rt_dot11d_info* @GET_DOT11D_INFO(%struct.rtllib_device* %4)
  store %struct.rt_dot11d_info* %5, %struct.rt_dot11d_info** %3, align 8
  %6 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %3, align 8
  %7 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %16 [
    i32 129, label %9
    i32 130, label %12
    i32 128, label %15
  ]

9:                                                ; preds = %1
  %10 = load %struct.rt_dot11d_info*, %struct.rt_dot11d_info** %3, align 8
  %11 = getelementptr inbounds %struct.rt_dot11d_info, %struct.rt_dot11d_info* %10, i32 0, i32 0
  store i32 130, i32* %11, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %14 = call i32 @dot11d_reset(%struct.rtllib_device* %13)
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %1, %15, %12, %9
  ret void
}

declare dso_local %struct.rt_dot11d_info* @GET_DOT11D_INFO(%struct.rtllib_device*) #1

declare dso_local i32 @dot11d_reset(%struct.rtllib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
