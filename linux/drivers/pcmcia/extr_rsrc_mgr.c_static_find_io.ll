; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_mgr.c_static_find_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_mgr.c_static_find_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32, i32*, i32, i32, %struct.resource**)* @static_find_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @static_find_io(%struct.pcmcia_socket* %0, i32 %1, i32* %2, i32 %3, i32 %4, %struct.resource** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcmcia_socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.resource**, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.resource** %5, %struct.resource*** %13, align 8
  %14 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %15 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %31

21:                                               ; preds = %6
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %8, align 8
  %23 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 4095
  %28 = or i32 %24, %27
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.resource**, %struct.resource*** %13, align 8
  store %struct.resource* null, %struct.resource** %30, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
