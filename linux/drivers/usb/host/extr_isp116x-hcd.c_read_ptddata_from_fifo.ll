; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_isp116x-hcd.c_read_ptddata_from_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_isp116x-hcd.c_read_ptddata_from_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp116x = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp116x*, i8*, i32)* @read_ptddata_from_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_ptddata_from_fifo(%struct.isp116x* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.isp116x*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.isp116x* %0, %struct.isp116x** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = srem i32 %15, 4
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = and i64 %18, 1
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %37, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.isp116x*, %struct.isp116x** %4, align 8
  %27 = call i32 @isp116x_raw_read_data16(%struct.isp116x* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 255
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 2
  store i32 %39, i32* %6, align 4
  br label %22

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.isp116x*, %struct.isp116x** %4, align 8
  %45 = call i32 @isp116x_read_data16(%struct.isp116x* %44)
  %46 = and i32 255, %45
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %40
  br label %71

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %59, %49
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.isp116x*, %struct.isp116x** %4, align 8
  %55 = call i32 @isp116x_raw_read_data16(%struct.isp116x* %54)
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %60, 2
  store i32 %61, i32* %6, align 4
  br label %50

62:                                               ; preds = %50
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.isp116x*, %struct.isp116x** %4, align 8
  %67 = call i32 @isp116x_read_data16(%struct.isp116x* %66)
  %68 = and i32 255, %67
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %70, %48
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %71
  %78 = load %struct.isp116x*, %struct.isp116x** %4, align 8
  %79 = call i32 @isp116x_raw_read_data16(%struct.isp116x* %78)
  br label %80

80:                                               ; preds = %77, %74
  ret void
}

declare dso_local i32 @isp116x_raw_read_data16(%struct.isp116x*) #1

declare dso_local i32 @isp116x_read_data16(%struct.isp116x*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
