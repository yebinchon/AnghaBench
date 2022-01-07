; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c___nonstatic_adjust_io_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c___nonstatic_adjust_io_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.socket_data* }
%struct.socket_data = type { %struct.resource_map }
%struct.resource_map = type { i64, i32, %struct.resource_map* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i64, i64)* @__nonstatic_adjust_io_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nonstatic_adjust_io_region(%struct.pcmcia_socket* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.resource_map*, align 8
  %8 = alloca %struct.socket_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %13 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %12, i32 0, i32 0
  %14 = load %struct.socket_data*, %struct.socket_data** %13, align 8
  store %struct.socket_data* %14, %struct.socket_data** %8, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.socket_data*, %struct.socket_data** %8, align 8
  %18 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %18, i32 0, i32 2
  %20 = load %struct.resource_map*, %struct.resource_map** %19, align 8
  store %struct.resource_map* %20, %struct.resource_map** %7, align 8
  br label %21

21:                                               ; preds = %48, %3
  %22 = load %struct.resource_map*, %struct.resource_map** %7, align 8
  %23 = load %struct.socket_data*, %struct.socket_data** %8, align 8
  %24 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %23, i32 0, i32 0
  %25 = icmp ne %struct.resource_map* %22, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = load %struct.resource_map*, %struct.resource_map** %7, align 8
  %28 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.resource_map*, %struct.resource_map** %7, align 8
  %31 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.resource_map*, %struct.resource_map** %7, align 8
  %34 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add i64 %32, %36
  %38 = sub i64 %37, 1
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %26
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %26
  br label %48

47:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load %struct.resource_map*, %struct.resource_map** %7, align 8
  %50 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %49, i32 0, i32 2
  %51 = load %struct.resource_map*, %struct.resource_map** %50, align 8
  store %struct.resource_map* %51, %struct.resource_map** %7, align 8
  br label %21

52:                                               ; preds = %21
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
