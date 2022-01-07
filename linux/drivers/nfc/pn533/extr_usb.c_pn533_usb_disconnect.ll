; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.pn533_usb_phy = type { i32, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"NXP PN533 NFC device disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @pn533_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn533_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.pn533_usb_phy*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.pn533_usb_phy* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.pn533_usb_phy* %5, %struct.pn533_usb_phy** %3, align 8
  %6 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %3, align 8
  %7 = icmp ne %struct.pn533_usb_phy* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %53

9:                                                ; preds = %1
  %10 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %3, align 8
  %11 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pn533_unregister_device(i32 %12)
  %14 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %15 = call i32 @usb_set_intfdata(%struct.usb_interface* %14, i32* null)
  %16 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %3, align 8
  %17 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i32 @usb_kill_urb(%struct.TYPE_3__* %18)
  %20 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %3, align 8
  %21 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = call i32 @usb_kill_urb(%struct.TYPE_3__* %22)
  %24 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %3, align 8
  %25 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i32 @usb_kill_urb(%struct.TYPE_3__* %26)
  %28 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %3, align 8
  %29 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @kfree(i32 %32)
  %34 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %3, align 8
  %35 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call i32 @usb_free_urb(%struct.TYPE_3__* %36)
  %38 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %3, align 8
  %39 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i32 @usb_free_urb(%struct.TYPE_3__* %40)
  %42 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %3, align 8
  %43 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @usb_free_urb(%struct.TYPE_3__* %44)
  %46 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %3, align 8
  %47 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @kfree(i32 %48)
  %50 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %51 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %50, i32 0, i32 0
  %52 = call i32 @nfc_info(i32* %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.pn533_usb_phy* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @pn533_unregister_device(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_3__*) #1

declare dso_local i32 @nfc_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
