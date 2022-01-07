; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_bus_add_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_bus_add_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.class_interface = type { i32 }
%struct.pcmcia_socket = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"PCMCIA obtaining reference to socket failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@pccard_cis_attr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"PCMCIA registration failed\0A\00", align 1
@pcmcia_bus_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.class_interface*)* @pcmcia_bus_add_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_bus_add_socket(%struct.device* %0, %struct.class_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.class_interface*, align 8
  %6 = alloca %struct.pcmcia_socket*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.class_interface* %1, %struct.class_interface** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.pcmcia_socket* @dev_get_drvdata(%struct.device* %8)
  store %struct.pcmcia_socket* %9, %struct.pcmcia_socket** %6, align 8
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %11 = call %struct.pcmcia_socket* @pcmcia_get_socket(%struct.pcmcia_socket* %10)
  store %struct.pcmcia_socket* %11, %struct.pcmcia_socket** %6, align 8
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %13 = icmp ne %struct.pcmcia_socket* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = call i32 @sysfs_create_bin_file(i32* %21, i32* @pccard_cis_attr)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %29 = call i32 @pcmcia_put_socket(%struct.pcmcia_socket* %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %19
  %32 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %33 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %32, i32 0, i32 3
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %36 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %38 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %40 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %39, i32 0, i32 0
  %41 = call i32 @atomic_set(i32* %40, i32 0)
  %42 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %43 = call i32 @pccard_register_pcmcia(%struct.pcmcia_socket* %42, i32* @pcmcia_bus_callback)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %31
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %50 = call i32 @pcmcia_put_socket(%struct.pcmcia_socket* %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %46, %25, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.pcmcia_socket* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.pcmcia_socket* @pcmcia_get_socket(%struct.pcmcia_socket*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32*) #1

declare dso_local i32 @pcmcia_put_socket(%struct.pcmcia_socket*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pccard_register_pcmcia(%struct.pcmcia_socket*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
