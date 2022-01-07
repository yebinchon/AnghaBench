; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1111_lubbock.c_lubbock_pcmcia_configure_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1111_lubbock.c_lubbock_pcmcia_configure_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32, %struct.max1600* }
%struct.max1600 = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pcmcia_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*, %struct.TYPE_4__*)* @lubbock_pcmcia_configure_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lubbock_pcmcia_configure_socket(%struct.soc_pcmcia_socket* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.max1600*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmcia_state, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %9 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %8, i32 0, i32 1
  %10 = load %struct.max1600*, %struct.max1600** %9, align 8
  store %struct.max1600* %10, %struct.max1600** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %55, %2
  %12 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %13 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %16 [
    i32 0, label %15
    i32 1, label %15
  ]

15:                                               ; preds = %11, %11
  br label %17

16:                                               ; preds = %11
  store i32 -1, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = call i32 @sa1111_pcmcia_configure_socket(%struct.soc_pcmcia_socket* %21, %struct.TYPE_4__* %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.max1600*, %struct.max1600** %5, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @max1600_configure(%struct.max1600* %28, i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %27, %24
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 33
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = call i32 @mdelay(i32 3)
  %46 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %47 = call i32 @sa1111_pcmcia_socket_state(%struct.soc_pcmcia_socket* %46, %struct.pcmcia_state* %7)
  %48 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.pcmcia_state, %struct.pcmcia_state* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load %struct.max1600*, %struct.max1600** %5, align 8
  %57 = call i32 @max1600_configure(%struct.max1600* %56, i32 0, i32 0)
  %58 = call i32 @mdelay(i32 100)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 50, i32* %60, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 50, i32* %62, align 4
  br label %11

63:                                               ; preds = %51, %44
  br label %64

64:                                               ; preds = %63, %39, %36
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @sa1111_pcmcia_configure_socket(%struct.soc_pcmcia_socket*, %struct.TYPE_4__*) #1

declare dso_local i32 @max1600_configure(%struct.max1600*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @sa1111_pcmcia_socket_state(%struct.soc_pcmcia_socket*, %struct.pcmcia_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
