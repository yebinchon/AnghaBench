; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_iodyn.c___iodyn_find_io_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_iodyn.c___iodyn_find_io_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pcmcia_socket = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pcmcia_align_data = type { i64, i64 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@ioport_resource = common dso_local global i32 0, align 4
@pcmcia_align = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.pcmcia_socket*, i64, i32, i64)* @__iodyn_find_io_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @__iodyn_find_io_region(%struct.pcmcia_socket* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.pcmcia_socket*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.pcmcia_align_data, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @IORESOURCE_IO, align 4
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %16 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %15, i32 0, i32 1
  %17 = call i32 @dev_name(i32* %16)
  %18 = call %struct.resource* @pcmcia_make_resource(i32 0, i32 %13, i32 %14, i32 %17)
  store %struct.resource* %18, %struct.resource** %9, align 8
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %8, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %10, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %10, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %23, %25
  %27 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %10, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  %28 = load %struct.resource*, %struct.resource** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* @pcmcia_align, align 4
  %32 = call i32 @allocate_resource(i32* @ioport_resource, %struct.resource* %28, i32 %29, i64 %30, i64 -1, i32 1, i32 %31, %struct.pcmcia_align_data* %10)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load %struct.resource*, %struct.resource** %9, align 8
  %37 = call i32 @kfree(%struct.resource* %36)
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %38

38:                                               ; preds = %35, %4
  %39 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %39
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
