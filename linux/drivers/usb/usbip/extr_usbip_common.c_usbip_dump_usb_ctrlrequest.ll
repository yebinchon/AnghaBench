; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_dump_usb_ctrlrequest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_dump_usb_ctrlrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"       : null pointer\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"bRequestType(%02X) bRequest(%02X) wValue(%04X) wIndex(%04X) wLength(%04X) \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\0A       \00", align 1
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"STANDARD \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"GET_STATUS\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"CLEAR_FEAT\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"SET_FEAT\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"SET_ADDRRS\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"GET_DESCRI\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"SET_DESCRI\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"GET_CONFIG\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"SET_CONFIG\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"GET_INTERF\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"SET_INTERF\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"SYNC_FRAME\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"REQ(%02X)\0A\00", align 1
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"CLASS\0A\00", align 1
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"VENDOR\0A\00", align 1
@USB_TYPE_RESERVED = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"RESERVED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ctrlrequest*)* @usbip_dump_usb_ctrlrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbip_dump_usb_ctrlrequest(%struct.usb_ctrlrequest* %0) #0 {
  %2 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.usb_ctrlrequest* %0, %struct.usb_ctrlrequest** %2, align 8
  %3 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %4 = icmp ne %struct.usb_ctrlrequest* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %103

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %10 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %13 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %22 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20, i32 %23)
  %25 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %26 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %27 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB_TYPE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %7
  %34 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %35 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %36 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %60 [
    i32 134, label %38
    i32 138, label %40
    i32 130, label %42
    i32 133, label %44
    i32 136, label %46
    i32 131, label %48
    i32 137, label %50
    i32 132, label %52
    i32 135, label %54
    i32 129, label %56
    i32 128, label %58
  ]

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %65

40:                                               ; preds = %33
  %41 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %65

42:                                               ; preds = %33
  %43 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %65

44:                                               ; preds = %33
  %45 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %65

46:                                               ; preds = %33
  %47 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %65

48:                                               ; preds = %33
  %49 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %65

50:                                               ; preds = %33
  %51 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %65

52:                                               ; preds = %33
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %65

54:                                               ; preds = %33
  %55 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %65

56:                                               ; preds = %33
  %57 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %65

58:                                               ; preds = %33
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  br label %65

60:                                               ; preds = %33
  %61 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %62 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38
  %66 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %67 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usbip_dump_request_type(i32 %68)
  br label %103

70:                                               ; preds = %7
  %71 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %72 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @USB_TYPE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @USB_TYPE_CLASS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %102

80:                                               ; preds = %70
  %81 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %82 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @USB_TYPE_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  br label %101

90:                                               ; preds = %80
  %91 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %2, align 8
  %92 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @USB_TYPE_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @USB_TYPE_RESERVED, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %90
  br label %101

101:                                              ; preds = %100, %88
  br label %102

102:                                              ; preds = %101, %78
  br label %103

103:                                              ; preds = %5, %102, %65
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @usbip_dump_request_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
