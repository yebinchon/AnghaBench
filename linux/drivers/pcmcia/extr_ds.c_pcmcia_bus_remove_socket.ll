; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_bus_remove_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_bus_remove_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.class_interface = type { i32 }
%struct.pcmcia_socket = type { i32 }

@pccard_cis_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.class_interface*)* @pcmcia_bus_remove_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmcia_bus_remove_socket(%struct.device* %0, %struct.class_interface* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.class_interface*, align 8
  %5 = alloca %struct.pcmcia_socket*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.class_interface* %1, %struct.class_interface** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.pcmcia_socket* @dev_get_drvdata(%struct.device* %6)
  store %struct.pcmcia_socket* %7, %struct.pcmcia_socket** %5, align 8
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %9 = icmp ne %struct.pcmcia_socket* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %13 = call i32 @pccard_register_pcmcia(%struct.pcmcia_socket* %12, i32* null)
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %18 = call i32 @pcmcia_card_remove(%struct.pcmcia_socket* %17, i32* null)
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %20 = call i32 @release_cis_mem(%struct.pcmcia_socket* %19)
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %22 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = call i32 @sysfs_remove_bin_file(i32* %25, i32* @pccard_cis_attr)
  %27 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %28 = call i32 @pcmcia_put_socket(%struct.pcmcia_socket* %27)
  br label %29

29:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.pcmcia_socket* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pccard_register_pcmcia(%struct.pcmcia_socket*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcmcia_card_remove(%struct.pcmcia_socket*, i32*) #1

declare dso_local i32 @release_cis_mem(%struct.pcmcia_socket*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32*) #1

declare dso_local i32 @pcmcia_put_socket(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
