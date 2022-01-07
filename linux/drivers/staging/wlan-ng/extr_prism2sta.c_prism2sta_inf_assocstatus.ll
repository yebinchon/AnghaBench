; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_inf_assocstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2sta.c_prism2sta_inf_assocstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, %struct.hfa384x* }
%struct.hfa384x = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32* }
%struct.hfa384x_inf_frame = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hfa384x_assoc_status = type { i64, i64, i32 }

@HFA384x_ASSOCSTATUS_AUTHFAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"assocstatus info frame received for non-authenticated station.\0A\00", align 1
@HFA384x_ASSOCSTATUS_STAASSOC = common dso_local global i64 0, align 8
@HFA384x_ASSOCSTATUS_REASSOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"authfail assocstatus info frame received for authenticated station.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlandevice*, %struct.hfa384x_inf_frame*)* @prism2sta_inf_assocstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2sta_inf_assocstatus(%struct.wlandevice* %0, %struct.hfa384x_inf_frame* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca %struct.hfa384x_inf_frame*, align 8
  %5 = alloca %struct.hfa384x*, align 8
  %6 = alloca %struct.hfa384x_assoc_status, align 8
  %7 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store %struct.hfa384x_inf_frame* %1, %struct.hfa384x_inf_frame** %4, align 8
  %8 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %9 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %8, i32 0, i32 1
  %10 = load %struct.hfa384x*, %struct.hfa384x** %9, align 8
  store %struct.hfa384x* %10, %struct.hfa384x** %5, align 8
  %11 = load %struct.hfa384x_inf_frame*, %struct.hfa384x_inf_frame** %4, align 8
  %12 = getelementptr inbounds %struct.hfa384x_inf_frame, %struct.hfa384x_inf_frame* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @memcpy(%struct.hfa384x_assoc_status* %6, i32* %13, i32 24)
  %15 = getelementptr inbounds %struct.hfa384x_assoc_status, %struct.hfa384x_assoc_status* %6, i32 0, i32 0
  %16 = call i32 @le16_to_cpus(i64* %15)
  %17 = getelementptr inbounds %struct.hfa384x_assoc_status, %struct.hfa384x_assoc_status* %6, i32 0, i32 1
  %18 = call i32 @le16_to_cpus(i64* %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %22 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.hfa384x_assoc_status, %struct.hfa384x_assoc_status* %6, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %30 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ether_addr_equal(i32 %28, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %44

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %19

44:                                               ; preds = %39, %19
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %47 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %45, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.hfa384x_assoc_status, %struct.hfa384x_assoc_status* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HFA384x_ASSOCSTATUS_AUTHFAIL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %58 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @netdev_warn(i32 %59, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %51
  br label %92

62:                                               ; preds = %44
  %63 = getelementptr inbounds %struct.hfa384x_assoc_status, %struct.hfa384x_assoc_status* %6, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HFA384x_ASSOCSTATUS_STAASSOC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.hfa384x_assoc_status, %struct.hfa384x_assoc_status* %6, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HFA384x_ASSOCSTATUS_REASSOC, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i1 [ true, %62 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = load %struct.hfa384x*, %struct.hfa384x** %5, align 8
  %76 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %74, i32* %81, align 4
  %82 = getelementptr inbounds %struct.hfa384x_assoc_status, %struct.hfa384x_assoc_status* %6, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @HFA384x_ASSOCSTATUS_AUTHFAIL, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %88 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @netdev_warn(i32 %89, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %72
  br label %92

92:                                               ; preds = %91, %61
  ret void
}

declare dso_local i32 @memcpy(%struct.hfa384x_assoc_status*, i32*, i32) #1

declare dso_local i32 @le16_to_cpus(i64*) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
