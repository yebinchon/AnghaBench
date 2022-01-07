; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_chaoskey.c_chaoskey_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_chaoskey.c_chaoskey_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.chaoskey = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"disconnect failed - no dev\00", align 1
@chaoskey_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"disconnect done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @chaoskey_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chaoskey_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.chaoskey*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call i32 @usb_dbg(%struct.usb_interface* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.chaoskey* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.chaoskey* %7, %struct.chaoskey** %3, align 8
  %8 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %9 = icmp ne %struct.chaoskey* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %12 = call i32 @usb_dbg(%struct.usb_interface* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %53

13:                                               ; preds = %1
  %14 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %15 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %20 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %19, i32 0, i32 4
  %21 = call i32 @hwrng_unregister(i32* %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %24 = call i32 @usb_deregister_dev(%struct.usb_interface* %23, i32* @chaoskey_class)
  %25 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %26 = call i32 @usb_set_intfdata(%struct.usb_interface* %25, i32* null)
  %27 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %28 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %31 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %33 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_poison_urb(i32 %34)
  %36 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %37 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %22
  %41 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %42 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %45 = call i32 @chaoskey_free(%struct.chaoskey* %44)
  br label %50

46:                                               ; preds = %22
  %47 = load %struct.chaoskey*, %struct.chaoskey** %3, align 8
  %48 = getelementptr inbounds %struct.chaoskey, %struct.chaoskey* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %52 = call i32 @usb_dbg(%struct.usb_interface* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %10
  ret void
}

declare dso_local i32 @usb_dbg(%struct.usb_interface*, i8*) #1

declare dso_local %struct.chaoskey* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @hwrng_unregister(i32*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_poison_urb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @chaoskey_free(%struct.chaoskey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
