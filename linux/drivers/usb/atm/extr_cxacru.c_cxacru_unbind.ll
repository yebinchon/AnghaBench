; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_cxacru_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_cxacru.c_cxacru_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { %struct.cxacru_data* }
%struct.cxacru_data = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"cxacru_unbind entered\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"cxacru_unbind: NULL instance!\0A\00", align 1
@CXPOLL_SHUTDOWN = common dso_local global i64 0, align 8
@CXPOLL_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbatm_data*, %struct.usb_interface*)* @cxacru_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxacru_unbind(%struct.usbatm_data* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbatm_data*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.cxacru_data*, align 8
  %6 = alloca i32, align 4
  store %struct.usbatm_data* %0, %struct.usbatm_data** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %7 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %8 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %7, i32 0, i32 0
  %9 = load %struct.cxacru_data*, %struct.cxacru_data** %8, align 8
  store %struct.cxacru_data* %9, %struct.cxacru_data** %5, align 8
  store i32 1, i32* %6, align 4
  %10 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %11 = call i32 @usb_dbg(%struct.usbatm_data* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %13 = icmp ne %struct.cxacru_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %16 = call i32 @usb_dbg(%struct.usbatm_data* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %76

17:                                               ; preds = %2
  %18 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %19 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %18, i32 0, i32 6
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %22 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CXPOLL_SHUTDOWN, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %29 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CXPOLL_STOPPED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %17
  %35 = load i64, i64* @CXPOLL_SHUTDOWN, align 8
  %36 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %37 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %39 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %38, i32 0, i32 6
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %45 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %44, i32 0, i32 5
  %46 = call i32 @cancel_delayed_work_sync(i32* %45)
  br label %47

47:                                               ; preds = %43, %34
  %48 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %49 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_kill_urb(i32 %50)
  %52 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %53 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @usb_kill_urb(i32 %54)
  %56 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %57 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usb_free_urb(i32 %58)
  %60 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %61 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @usb_free_urb(i32 %62)
  %64 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %65 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @free_page(i64 %66)
  %68 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %69 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @free_page(i64 %70)
  %72 = load %struct.cxacru_data*, %struct.cxacru_data** %5, align 8
  %73 = call i32 @kfree(%struct.cxacru_data* %72)
  %74 = load %struct.usbatm_data*, %struct.usbatm_data** %3, align 8
  %75 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %74, i32 0, i32 0
  store %struct.cxacru_data* null, %struct.cxacru_data** %75, align 8
  br label %76

76:                                               ; preds = %47, %14
  ret void
}

declare dso_local i32 @usb_dbg(%struct.usbatm_data*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.cxacru_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
