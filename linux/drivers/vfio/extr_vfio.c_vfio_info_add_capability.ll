; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_info_add_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_info_add_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_info_cap = type { i32 }
%struct.vfio_info_cap_header = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_info_add_capability(%struct.vfio_info_cap* %0, %struct.vfio_info_cap_header* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfio_info_cap*, align 8
  %6 = alloca %struct.vfio_info_cap_header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vfio_info_cap_header*, align 8
  store %struct.vfio_info_cap* %0, %struct.vfio_info_cap** %5, align 8
  store %struct.vfio_info_cap_header* %1, %struct.vfio_info_cap_header** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.vfio_info_cap*, %struct.vfio_info_cap** %5, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %6, align 8
  %12 = getelementptr inbounds %struct.vfio_info_cap_header, %struct.vfio_info_cap_header* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %6, align 8
  %15 = getelementptr inbounds %struct.vfio_info_cap_header, %struct.vfio_info_cap_header* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.vfio_info_cap_header* @vfio_info_cap_add(%struct.vfio_info_cap* %9, i64 %10, i32 %13, i32 %16)
  store %struct.vfio_info_cap_header* %17, %struct.vfio_info_cap_header** %8, align 8
  %18 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %8, align 8
  %19 = call i64 @IS_ERR(%struct.vfio_info_cap_header* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %8, align 8
  %23 = call i32 @PTR_ERR(%struct.vfio_info_cap_header* %22)
  store i32 %23, i32* %4, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %8, align 8
  %26 = getelementptr inbounds %struct.vfio_info_cap_header, %struct.vfio_info_cap_header* %25, i64 1
  %27 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %6, align 8
  %28 = getelementptr inbounds %struct.vfio_info_cap_header, %struct.vfio_info_cap_header* %27, i64 1
  %29 = load i64, i64* %7, align 8
  %30 = sub i64 %29, 8
  %31 = call i32 @memcpy(%struct.vfio_info_cap_header* %26, %struct.vfio_info_cap_header* %28, i64 %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.vfio_info_cap_header* @vfio_info_cap_add(%struct.vfio_info_cap*, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.vfio_info_cap_header*) #1

declare dso_local i32 @PTR_ERR(%struct.vfio_info_cap_header*) #1

declare dso_local i32 @memcpy(%struct.vfio_info_cap_header*, %struct.vfio_info_cap_header*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
