; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mediabus.c_soc_mbus_bytes_per_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mediabus.c_soc_mbus_bytes_per_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_mbus_pixelfmt = type { i64, i32, i32 }

@SOC_MBUS_LAYOUT_PACKED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soc_mbus_bytes_per_line(i32 %0, %struct.soc_mbus_pixelfmt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_mbus_pixelfmt*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.soc_mbus_pixelfmt* %1, %struct.soc_mbus_pixelfmt** %5, align 8
  %6 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** %5, align 8
  %7 = getelementptr inbounds %struct.soc_mbus_pixelfmt, %struct.soc_mbus_pixelfmt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SOC_MBUS_LAYOUT_PACKED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** %5, align 8
  %14 = getelementptr inbounds %struct.soc_mbus_pixelfmt, %struct.soc_mbus_pixelfmt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %12, %15
  %17 = sdiv i32 %16, 8
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** %5, align 8
  %20 = getelementptr inbounds %struct.soc_mbus_pixelfmt, %struct.soc_mbus_pixelfmt* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %40 [
    i32 129, label %22
    i32 133, label %29
    i32 132, label %29
    i32 131, label %29
    i32 134, label %32
    i32 128, label %36
    i32 130, label %37
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** %5, align 8
  %25 = getelementptr inbounds %struct.soc_mbus_pixelfmt, %struct.soc_mbus_pixelfmt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = sdiv i32 %27, 8
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %18, %18, %18
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, 2
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 %33, 3
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %43

37:                                               ; preds = %18
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 %38, 4
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %18
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %37, %36, %32, %29, %22, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
