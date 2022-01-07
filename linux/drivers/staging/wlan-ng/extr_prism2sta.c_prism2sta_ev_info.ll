; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_ev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_ev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32 }
%struct.hfa384x_inf_frame = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unhandled IT_KEYIDCHANGED\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Unhandled IT_ASSOCREQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unhandled IT_MICFAILURE\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unknown info type=0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prism2sta_ev_info(%struct.wlandevice* %0, %struct.hfa384x_inf_frame* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca %struct.hfa384x_inf_frame*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store %struct.hfa384x_inf_frame* %1, %struct.hfa384x_inf_frame** %4, align 8
  %5 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %6 = getelementptr inbounds %struct.hfa384x_inf_frame, %struct.hfa384x_inf_frame* %5, i32 0, i32 0
  %7 = call i32 @le16_to_cpus(i32* %6)
  %8 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %9 = getelementptr inbounds %struct.hfa384x_inf_frame, %struct.hfa384x_inf_frame* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %62 [
    i32 134, label %11
    i32 135, label %15
    i32 133, label %19
    i32 128, label %23
    i32 136, label %27
    i32 131, label %31
    i32 138, label %35
    i32 137, label %39
    i32 129, label %43
    i32 132, label %47
    i32 139, label %52
    i32 130, label %57
  ]

11:                                               ; preds = %2
  %12 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %13 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %14 = call i32 @prism2sta_inf_handover(%struct.wlandevice* %12, %struct.hfa384x_inf_frame* %13)
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %17 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %18 = call i32 @prism2sta_inf_tallies(%struct.wlandevice* %16, %struct.hfa384x_inf_frame* %17)
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %21 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %22 = call i32 @prism2sta_inf_hostscanresults(%struct.wlandevice* %20, %struct.hfa384x_inf_frame* %21)
  br label %70

23:                                               ; preds = %2
  %24 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %25 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %26 = call i32 @prism2sta_inf_scanresults(%struct.wlandevice* %24, %struct.hfa384x_inf_frame* %25)
  br label %70

27:                                               ; preds = %2
  %28 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %29 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %30 = call i32 @prism2sta_inf_chinforesults(%struct.wlandevice* %28, %struct.hfa384x_inf_frame* %29)
  br label %70

31:                                               ; preds = %2
  %32 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %33 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %34 = call i32 @prism2sta_inf_linkstatus(%struct.wlandevice* %32, %struct.hfa384x_inf_frame* %33)
  br label %70

35:                                               ; preds = %2
  %36 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %37 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %38 = call i32 @prism2sta_inf_assocstatus(%struct.wlandevice* %36, %struct.hfa384x_inf_frame* %37)
  br label %70

39:                                               ; preds = %2
  %40 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %41 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %42 = call i32 @prism2sta_inf_authreq(%struct.wlandevice* %40, %struct.hfa384x_inf_frame* %41)
  br label %70

43:                                               ; preds = %2
  %44 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %45 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %46 = call i32 @prism2sta_inf_psusercnt(%struct.wlandevice* %44, %struct.hfa384x_inf_frame* %45)
  br label %70

47:                                               ; preds = %2
  %48 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %49 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @netdev_warn(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %70

52:                                               ; preds = %2
  %53 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %54 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @netdev_warn(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %70

57:                                               ; preds = %2
  %58 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %59 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @netdev_warn(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %70

62:                                               ; preds = %2
  %63 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %64 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %67 = getelementptr inbounds %struct.hfa384x_inf_frame, %struct.hfa384x_inf_frame* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @netdev_warn(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62, %57, %52, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11
  ret void
}

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @prism2sta_inf_handover(%struct.wlandevice*, %struct.hfa384x_inf_frame*) #1

declare dso_local i32 @prism2sta_inf_tallies(%struct.wlandevice*, %struct.hfa384x_inf_frame*) #1

declare dso_local i32 @prism2sta_inf_hostscanresults(%struct.wlandevice*, %struct.hfa384x_inf_frame*) #1

declare dso_local i32 @prism2sta_inf_scanresults(%struct.wlandevice*, %struct.hfa384x_inf_frame*) #1

declare dso_local i32 @prism2sta_inf_chinforesults(%struct.wlandevice*, %struct.hfa384x_inf_frame*) #1

declare dso_local i32 @prism2sta_inf_linkstatus(%struct.wlandevice*, %struct.hfa384x_inf_frame*) #1

declare dso_local i32 @prism2sta_inf_assocstatus(%struct.wlandevice*, %struct.hfa384x_inf_frame*) #1

declare dso_local i32 @prism2sta_inf_authreq(%struct.wlandevice*, %struct.hfa384x_inf_frame*) #1

declare dso_local i32 @prism2sta_inf_psusercnt(%struct.wlandevice*, %struct.hfa384x_inf_frame*) #1

declare dso_local i32 @netdev_warn(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
