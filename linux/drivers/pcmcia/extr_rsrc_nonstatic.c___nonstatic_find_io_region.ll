; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c___nonstatic_find_io_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c___nonstatic_find_io_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pcmcia_socket = type { %struct.TYPE_2__*, %struct.socket_data*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.socket_data = type { i32 }
%struct.pcmcia_align_data = type { i64, i64, i32* }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@ioport_resource = common dso_local global i32 0, align 4
@pcmcia_align = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.pcmcia_socket*, i64, i32, i64)* @__nonstatic_find_io_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @__nonstatic_find_io_region(%struct.pcmcia_socket* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.pcmcia_socket*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.socket_data*, align 8
  %11 = alloca %struct.pcmcia_align_data, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @IORESOURCE_IO, align 4
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %17 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %16, i32 0, i32 2
  %18 = call i32 @dev_name(i32* %17)
  %19 = call %struct.resource* @pcmcia_make_resource(i32 0, i32 %14, i32 %15, i32 %18)
  store %struct.resource* %19, %struct.resource** %9, align 8
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 1
  %22 = load %struct.socket_data*, %struct.socket_data** %21, align 8
  store %struct.socket_data* %22, %struct.socket_data** %10, align 8
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %8, align 8
  %25 = sub i64 %24, 1
  %26 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %11, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %11, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %27, %29
  %31 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %11, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load %struct.socket_data*, %struct.socket_data** %10, align 8
  %33 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %11, i32 0, i32 2
  store i32* %33, i32** %34, align 8
  %35 = load %struct.resource*, %struct.resource** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* @pcmcia_align, align 4
  %39 = call i32 @allocate_resource(i32* @ioport_resource, %struct.resource* %35, i32 %36, i64 %37, i64 -1, i32 1, i32 %38, %struct.pcmcia_align_data* %11)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %4
  %43 = load %struct.resource*, %struct.resource** %9, align 8
  %44 = call i32 @kfree(%struct.resource* %43)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %45

45:                                               ; preds = %42, %4
  %46 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %46
}

declare dso_local %struct.resource* @pcmcia_make_resource(i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @allocate_resource(i32*, %struct.resource*, i32, i64, i64, i32, i32, %struct.pcmcia_align_data*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
