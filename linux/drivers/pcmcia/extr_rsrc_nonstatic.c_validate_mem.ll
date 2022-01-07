; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_validate_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_validate_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.socket_data* }
%struct.socket_data = type { %struct.resource_map }
%struct.resource_map = type { i32, i32, %struct.resource_map* }

@readable = common dso_local global i32 0, align 4
@checksum = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32)* @validate_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_mem(%struct.pcmcia_socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource_map*, align 8
  %7 = alloca %struct.resource_map, align 8
  %8 = alloca %struct.socket_data*, align 8
  %9 = alloca i64, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %11 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %10, i32 0, i32 0
  %12 = load %struct.socket_data*, %struct.socket_data** %11, align 8
  store %struct.socket_data* %12, %struct.socket_data** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.socket_data*, %struct.socket_data** %8, align 8
  %14 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %14, i32 0, i32 2
  %16 = load %struct.resource_map*, %struct.resource_map** %15, align 8
  store %struct.resource_map* %16, %struct.resource_map** %6, align 8
  br label %17

17:                                               ; preds = %36, %2
  %18 = load %struct.resource_map*, %struct.resource_map** %6, align 8
  %19 = load %struct.socket_data*, %struct.socket_data** %8, align 8
  %20 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %19, i32 0, i32 0
  %21 = icmp ne %struct.resource_map* %18, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.resource_map*, %struct.resource_map** %6, align 8
  %24 = bitcast %struct.resource_map* %7 to i8*
  %25 = bitcast %struct.resource_map* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %27 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @readable, align 4
  %32 = load i32, i32* @checksum, align 4
  %33 = call i64 @do_mem_probe(%struct.pcmcia_socket* %26, i32 %28, i32 %30, i32 %31, i32 %32)
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %7, i32 0, i32 2
  %38 = load %struct.resource_map*, %struct.resource_map** %37, align 8
  store %struct.resource_map* %38, %struct.resource_map** %6, align 8
  br label %17

39:                                               ; preds = %17
  %40 = load i64, i64* %9, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @do_mem_probe(%struct.pcmcia_socket*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
