; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }
%struct.usb_ftdi = type { i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"FREEING ftdi=%p\0A\00", align 1
@ftdi_module_lock = common dso_local global i32 0, align 4
@ftdi_instances = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kref*)* @ftdi_elan_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftdi_elan_delete(%struct.kref* %0) #0 {
  %2 = alloca %struct.kref*, align 8
  %3 = alloca %struct.usb_ftdi*, align 8
  store %struct.kref* %0, %struct.kref** %2, align 8
  %4 = load %struct.kref*, %struct.kref** %2, align 8
  %5 = call %struct.usb_ftdi* @kref_to_usb_ftdi(%struct.kref* %4)
  store %struct.usb_ftdi* %5, %struct.usb_ftdi** %3, align 8
  %6 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %7 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %11 = call i32 @dev_warn(i32* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.usb_ftdi* %10)
  %12 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %13 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @usb_put_dev(%struct.TYPE_2__* %14)
  %16 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %17 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = call i32 @mutex_lock(i32* @ftdi_module_lock)
  %21 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %22 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %21, i32 0, i32 2
  %23 = call i32 @list_del_init(i32* %22)
  %24 = load i32, i32* @ftdi_instances, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* @ftdi_instances, align 4
  %26 = call i32 @mutex_unlock(i32* @ftdi_module_lock)
  %27 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %28 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @kfree(i32* %29)
  %31 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %32 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  ret void
}

declare dso_local %struct.usb_ftdi* @kref_to_usb_ftdi(%struct.kref*) #1

declare dso_local i32 @dev_warn(i32*, i8*, %struct.usb_ftdi*) #1

declare dso_local i32 @usb_put_dev(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
