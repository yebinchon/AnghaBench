; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_early_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_socket_early_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.pcmcia_socket*, i32*)*, {}* }

@dead_socket = common dso_local global i32 0, align 4
@SOCKET_PRESENT = common dso_local global i32 0, align 4
@resume_delay = common dso_local global i32 0, align 4
@SOCKET_IN_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @socket_early_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_early_resume(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %4 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load i32, i32* @dead_socket, align 4
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %8 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %10 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = bitcast {}** %12 to i32 (%struct.pcmcia_socket*)**
  %14 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %13, align 8
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %16 = call i32 %14(%struct.pcmcia_socket* %15)
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %18 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %20, align 8
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %24 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 3
  %25 = call i32 %21(%struct.pcmcia_socket* %22, i32* %24)
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %27 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SOCKET_PRESENT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %34 = load i32, i32* @resume_delay, align 4
  %35 = call i32 @socket_setup(%struct.pcmcia_socket* %33, i32 %34)
  %36 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %37 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %32, %1
  %39 = load i32, i32* @SOCKET_IN_RESUME, align 4
  %40 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %41 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %45 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @socket_setup(%struct.pcmcia_socket*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
