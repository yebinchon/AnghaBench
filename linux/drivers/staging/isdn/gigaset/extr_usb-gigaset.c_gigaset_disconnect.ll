; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.cardstate = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usb_cardstate* }
%struct.usb_cardstate = type { i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [35 x i8] c"disconnecting Gigaset USB adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @gigaset_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gigaset_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.usb_cardstate*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.cardstate* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.cardstate* %6, %struct.cardstate** %3, align 8
  %7 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.usb_cardstate*, %struct.usb_cardstate** %9, align 8
  store %struct.usb_cardstate* %10, %struct.usb_cardstate** %4, align 8
  %11 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %12 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @dev_info(i32* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %16 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @usb_kill_urb(i32* %17)
  %19 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %20 = call i32 @gigaset_stop(%struct.cardstate* %19)
  %21 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %22 = call i32 @usb_set_intfdata(%struct.usb_interface* %21, i32* null)
  %23 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %24 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %23, i32 0, i32 1
  %25 = call i32 @tasklet_kill(i32* %24)
  %26 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %27 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @usb_kill_urb(i32* %28)
  %30 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %31 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kfree(i32* %32)
  %34 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %35 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @usb_free_urb(i32* %36)
  %38 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %39 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %43 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @usb_free_urb(i32* %44)
  %46 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %47 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %46, i32 0, i32 4
  store i32* null, i32** %47, align 8
  %48 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %49 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %48, i32 0, i32 5
  store i32* null, i32** %49, align 8
  %50 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %51 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  %52 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %53 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %55 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @usb_put_dev(i32* %56)
  %58 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %59 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.usb_cardstate*, %struct.usb_cardstate** %4, align 8
  %61 = getelementptr inbounds %struct.usb_cardstate, %struct.usb_cardstate* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %63 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %65 = call i32 @gigaset_freecs(%struct.cardstate* %64)
  ret void
}

declare dso_local %struct.cardstate* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @gigaset_stop(%struct.cardstate*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @usb_put_dev(i32*) #1

declare dso_local i32 @gigaset_freecs(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
