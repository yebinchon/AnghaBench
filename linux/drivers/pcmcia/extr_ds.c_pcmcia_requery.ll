; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_requery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_requery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i64, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@SOCKET_PRESENT = common dso_local global i32 0, align 4
@pcmcia_bus_type = common dso_local global i32 0, align 4
@pcmcia_requery_callback = common dso_local global i32 0, align 4
@BIND_FN_ALL = common dso_local global i32 0, align 4
@CISTPL_LONGLINK_MFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"rescanning the bus failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_socket*)* @pcmcia_requery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmcia_requery(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %8 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SOCKET_PRESENT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %77

14:                                               ; preds = %1
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %16 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %21 = call i32 @pcmcia_card_add(%struct.pcmcia_socket* %20)
  br label %77

22:                                               ; preds = %14
  %23 = load i32, i32* @pcmcia_requery_callback, align 4
  %24 = call i32 @bus_for_each_dev(i32* @pcmcia_bus_type, i32* null, i32* null, i32 %23)
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %26 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %22
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %31 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %35 = load i32, i32* @BIND_FN_ALL, align 4
  %36 = load i32, i32* @CISTPL_LONGLINK_MFC, align 4
  %37 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %34, i32 %35, i32 %36, %struct.TYPE_3__* %6)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %49 = call i32 @pcmcia_card_remove(%struct.pcmcia_socket* %48, i32* null)
  %50 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %51 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %53 = call i32 @pcmcia_card_add(%struct.pcmcia_socket* %52)
  br label %54

54:                                               ; preds = %47, %43
  br label %55

55:                                               ; preds = %54, %22
  %56 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %57 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %56, i32 0, i32 4
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %60 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %3, align 4
  %62 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %63 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %62, i32 0, i32 4
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %69 = call i32 @pcmcia_device_add(%struct.pcmcia_socket* %68, i32 0)
  br label %70

70:                                               ; preds = %67, %55
  %71 = call i64 @bus_rescan_devices(i32* @pcmcia_bus_type)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %75 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %74, i32 0, i32 3
  %76 = call i32 @dev_warn(i32* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %13, %19, %73, %70
  ret void
}

declare dso_local i32 @pcmcia_card_add(%struct.pcmcia_socket*) #1

declare dso_local i32 @bus_for_each_dev(i32*, i32*, i32*, i32) #1

declare dso_local i32 @pccard_read_tuple(%struct.pcmcia_socket*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @pcmcia_card_remove(%struct.pcmcia_socket*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pcmcia_device_add(%struct.pcmcia_socket*, i32) #1

declare dso_local i64 @bus_rescan_devices(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
