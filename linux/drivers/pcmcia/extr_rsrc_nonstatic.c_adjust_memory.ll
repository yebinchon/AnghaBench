; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_adjust_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_adjust_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.socket_data* }
%struct.socket_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32, i64, i64)* @adjust_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_memory(%struct.pcmcia_socket* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcmcia_socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.socket_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %13, i32 0, i32 0
  %15 = load %struct.socket_data*, %struct.socket_data** %14, align 8
  store %struct.socket_data* %15, %struct.socket_data** %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sub i64 %16, %17
  %19 = add i64 %18, 1
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %53

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %48 [
    i32 129, label %28
    i32 128, label %42
  ]

28:                                               ; preds = %26
  %29 = load %struct.socket_data*, %struct.socket_data** %10, align 8
  %30 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @add_interval(i32* %30, i64 %31, i64 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @do_mem_probe(%struct.pcmcia_socket* %37, i64 %38, i64 %39, i32* null, i32* null)
  br label %41

41:                                               ; preds = %36, %28
  br label %51

42:                                               ; preds = %26
  %43 = load %struct.socket_data*, %struct.socket_data** %10, align 8
  %44 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %43, i32 0, i32 0
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @sub_interval(i32* %44, i64 %45, i64 %46)
  store i32 %47, i32* %12, align 4
  br label %51

48:                                               ; preds = %26
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %42, %41
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %23
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @add_interval(i32*, i64, i64) #1

declare dso_local i32 @do_mem_probe(%struct.pcmcia_socket*, i64, i64, i32*, i32*) #1

declare dso_local i32 @sub_interval(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
