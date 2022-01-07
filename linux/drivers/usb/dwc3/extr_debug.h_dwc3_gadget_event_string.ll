; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debug.h_dwc3_gadget_event_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debug.h_dwc3_gadget_event_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_event_devt = type { i32, i32 }

@DWC3_LINK_STATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Disconnect: [%s]\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Reset [%s]\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Connection Done [%s]\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Link Change [%s]\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"WakeUp [%s]\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"End-Of-Frame [%s]\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Start-Of-Frame [%s]\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Erratic Error [%s]\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Command Complete [%s]\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Overflow [%s]\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, %struct.dwc3_event_devt*)* @dwc3_gadget_event_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dwc3_gadget_event_string(i8* %0, i64 %1, %struct.dwc3_event_devt* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dwc3_event_devt*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.dwc3_event_devt* %2, %struct.dwc3_event_devt** %6, align 8
  %8 = load %struct.dwc3_event_devt*, %struct.dwc3_event_devt** %6, align 8
  %9 = getelementptr inbounds %struct.dwc3_event_devt, %struct.dwc3_event_devt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DWC3_LINK_STATE_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.dwc3_event_devt*, %struct.dwc3_event_devt** %6, align 8
  %14 = getelementptr inbounds %struct.dwc3_event_devt, %struct.dwc3_event_devt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %76 [
    i32 135, label %16
    i32 130, label %22
    i32 136, label %28
    i32 132, label %34
    i32 128, label %40
    i32 134, label %46
    i32 129, label %52
    i32 133, label %58
    i32 137, label %64
    i32 131, label %70
  ]

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @dwc3_gadget_link_string(i32 %19)
  %21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %80

22:                                               ; preds = %3
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @dwc3_gadget_link_string(i32 %25)
  %27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %80

28:                                               ; preds = %3
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @dwc3_gadget_link_string(i32 %31)
  %33 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %80

34:                                               ; preds = %3
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @dwc3_gadget_link_string(i32 %37)
  %39 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %35, i64 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  br label %80

40:                                               ; preds = %3
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i8* @dwc3_gadget_link_string(i32 %43)
  %45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %41, i64 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  br label %80

46:                                               ; preds = %3
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i8* @dwc3_gadget_link_string(i32 %49)
  %51 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %47, i64 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %50)
  br label %80

52:                                               ; preds = %3
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @dwc3_gadget_link_string(i32 %55)
  %57 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %56)
  br label %80

58:                                               ; preds = %3
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i8* @dwc3_gadget_link_string(i32 %61)
  %63 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %59, i64 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %62)
  br label %80

64:                                               ; preds = %3
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @dwc3_gadget_link_string(i32 %67)
  %69 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %65, i64 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %68)
  br label %80

70:                                               ; preds = %3
  %71 = load i8*, i8** %4, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i8* @dwc3_gadget_link_string(i32 %73)
  %75 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %71, i64 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %74)
  br label %80

76:                                               ; preds = %3
  %77 = load i8*, i8** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %77, i64 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %70, %64, %58, %52, %46, %40, %34, %28, %22, %16
  %81 = load i8*, i8** %4, align 8
  ret i8* %81
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i8* @dwc3_gadget_link_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
