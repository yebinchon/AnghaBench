; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_info_cap_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_info_cap_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_info_cap = type { i64 }
%struct.vfio_info_cap_header = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfio_info_cap_shift(%struct.vfio_info_cap* %0, i64 %1) #0 {
  %3 = alloca %struct.vfio_info_cap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vfio_info_cap_header*, align 8
  %6 = alloca i8*, align 8
  store %struct.vfio_info_cap* %0, %struct.vfio_info_cap** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.vfio_info_cap*, %struct.vfio_info_cap** %3, align 8
  %8 = getelementptr inbounds %struct.vfio_info_cap, %struct.vfio_info_cap* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.vfio_info_cap_header*
  store %struct.vfio_info_cap_header* %12, %struct.vfio_info_cap_header** %5, align 8
  br label %13

13:                                               ; preds = %26, %2
  %14 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %5, align 8
  %15 = getelementptr inbounds %struct.vfio_info_cap_header, %struct.vfio_info_cap_header* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %5, align 8
  %21 = getelementptr inbounds %struct.vfio_info_cap_header, %struct.vfio_info_cap_header* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %5, align 8
  %29 = getelementptr inbounds %struct.vfio_info_cap_header, %struct.vfio_info_cap_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %27, i64 %31
  %33 = load i64, i64* %4, align 8
  %34 = sub i64 0, %33
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = bitcast i8* %35 to %struct.vfio_info_cap_header*
  store %struct.vfio_info_cap_header* %36, %struct.vfio_info_cap_header** %5, align 8
  br label %13

37:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
