; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_uss720.c_uss720_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_uss720.c_uss720_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.parport = type { %struct.parport_uss720_private* }
%struct.parport_uss720_private = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [12 x i8] c"disconnect\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"parport_remove_port\0A\00", align 1
@destroy_priv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"disconnect done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @uss720_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss720_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.parport*, align 8
  %4 = alloca %struct.parport_uss720_private*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.parport* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.parport* %6, %struct.parport** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = call i32 @usb_set_intfdata(%struct.usb_interface* %10, i32* null)
  %12 = load %struct.parport*, %struct.parport** %3, align 8
  %13 = icmp ne %struct.parport* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.parport*, %struct.parport** %3, align 8
  %16 = getelementptr inbounds %struct.parport, %struct.parport* %15, i32 0, i32 0
  %17 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %16, align 8
  store %struct.parport_uss720_private* %17, %struct.parport_uss720_private** %4, align 8
  %18 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %4, align 8
  %19 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %4, align 8
  %21 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %23 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %22, i32 0, i32 0
  %24 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.parport*, %struct.parport** %3, align 8
  %26 = call i32 @parport_remove_port(%struct.parport* %25)
  %27 = load %struct.parport*, %struct.parport** %3, align 8
  %28 = call i32 @parport_put_port(%struct.parport* %27)
  %29 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %4, align 8
  %30 = call i32 @kill_all_async_requests_priv(%struct.parport_uss720_private* %29)
  %31 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %4, align 8
  %32 = getelementptr inbounds %struct.parport_uss720_private, %struct.parport_uss720_private* %31, i32 0, i32 0
  %33 = load i32, i32* @destroy_priv, align 4
  %34 = call i32 @kref_put(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %14, %1
  %36 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  %38 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.parport* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @parport_remove_port(%struct.parport*) #1

declare dso_local i32 @parport_put_port(%struct.parport*) #1

declare dso_local i32 @kill_all_async_requests_priv(%struct.parport_uss720_private*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
