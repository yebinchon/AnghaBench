; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_firmware_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_firmware_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wilc*, i64, i32*, i64)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WILC_BUS_ACQUIRE_ONLY = common dso_local global i32 0, align 4
@WILC_BUS_RELEASE_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_wlan_firmware_download(%struct.wilc* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %14, align 4
  %15 = call i64 @BIT(i32 12)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kmalloc(i64 %16, i32 %17)
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %113

24:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %98, %24
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i64 @get_unaligned_le32(i32* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 4
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i64 @get_unaligned_le32(i32* %33)
  store i64 %34, i64* %10, align 8
  %35 = load %struct.wilc*, %struct.wilc** %5, align 8
  %36 = load i32, i32* @WILC_BUS_ACQUIRE_ONLY, align 4
  %37 = call i32 @acquire_bus(%struct.wilc* %35, i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %78, %25
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ult i64 %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %50, label %88

50:                                               ; preds = %48
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ule i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %11, align 8
  br label %58

56:                                               ; preds = %50
  %57 = load i64, i64* %12, align 8
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = load i32*, i32** %13, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @memcpy(i32* %59, i32* %62, i64 %63)
  %65 = load %struct.wilc*, %struct.wilc** %5, align 8
  %66 = getelementptr inbounds %struct.wilc, %struct.wilc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (%struct.wilc*, i64, i32*, i64)*, i32 (%struct.wilc*, i64, i32*, i64)** %68, align 8
  %70 = load %struct.wilc*, %struct.wilc** %5, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 %69(%struct.wilc* %70, i64 %71, i32* %72, i64 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %58
  br label %88

78:                                               ; preds = %58
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %10, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %10, align 8
  br label %40

88:                                               ; preds = %77, %48
  %89 = load %struct.wilc*, %struct.wilc** %5, align 8
  %90 = load i32, i32* @WILC_BUS_RELEASE_ONLY, align 4
  %91 = call i32 @release_bus(%struct.wilc* %89, i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %14, align 4
  br label %103

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %7, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %25, label %102

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %94
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @kfree(i32* %104)
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %14, align 4
  br label %111

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i32 [ %109, %108 ], [ 0, %110 ]
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %21
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i64 @get_unaligned_le32(i32*) #1

declare dso_local i32 @acquire_bus(%struct.wilc*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @release_bus(%struct.wilc*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
