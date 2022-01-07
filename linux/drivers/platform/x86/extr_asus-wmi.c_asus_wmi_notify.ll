; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { i32 }

@WMI_EVENT_QUEUE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to get notify code: %d\0A\00", align 1
@WMI_EVENT_QUEUE_END = common dso_local global i32 0, align 4
@WMI_EVENT_MASK = common dso_local global i32 0, align 4
@WMI_EVENT_VALUE_ATK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to process event queue, last code: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @asus_wmi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_wmi_notify(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.asus_wmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.asus_wmi*
  store %struct.asus_wmi* %9, %struct.asus_wmi** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %46, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @WMI_EVENT_QUEUE_SIZE, align 4
  %13 = add nsw i32 %12, 1
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @asus_wmi_get_event_code(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %52

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @WMI_EVENT_QUEUE_END, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @WMI_EVENT_MASK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  br label %52

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.asus_wmi*, %struct.asus_wmi** %5, align 8
  %35 = call i32 @asus_wmi_handle_event_code(i32 %33, %struct.asus_wmi* %34)
  %36 = load %struct.asus_wmi*, %struct.asus_wmi** %5, align 8
  %37 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @WMI_EVENT_VALUE_ATK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %32
  br label %52

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %10

49:                                               ; preds = %10
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %44, %31, %20
  ret void
}

declare dso_local i32 @asus_wmi_get_event_code(i64) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @asus_wmi_handle_event_code(i32, %struct.asus_wmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
