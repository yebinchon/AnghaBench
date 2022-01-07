; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_buff_area_alloc_contiguous.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_buff_area_alloc_contiguous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_bin = type { i64, i64, i32 }

@PKT_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mon_reader_bin*, i32)* @mon_buff_area_alloc_contiguous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_buff_area_alloc_contiguous(%struct.mon_reader_bin* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mon_reader_bin*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mon_reader_bin* %0, %struct.mon_reader_bin** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PKT_ALIGN, align 4
  %10 = add i32 %8, %9
  %11 = sub i32 %10, 1
  %12 = load i32, i32* @PKT_ALIGN, align 4
  %13 = sub i32 %12, 1
  %14 = xor i32 %13, -1
  %15 = and i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %17 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %23 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %121

27:                                               ; preds = %2
  %28 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %29 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %35 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %27
  %39 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %40 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %43 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = zext i32 %44 to i64
  %46 = sub nsw i64 %41, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %49 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %58 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %121

62:                                               ; preds = %38
  %63 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %64 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %65 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @mon_buff_area_fill(%struct.mon_reader_bin* %63, i32 %66, i32 %67)
  store i32 0, i32* %6, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %71 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %72, %73
  %75 = zext i32 %74 to i64
  %76 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %77 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  br label %119

80:                                               ; preds = %27
  %81 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %82 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add i32 %83, %84
  %86 = zext i32 %85 to i64
  %87 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %88 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %80
  %92 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %93 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %6, align 4
  %95 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %96 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %95, i32 0, i32 2
  store i32 0, i32* %96, align 8
  %97 = load i32, i32* %5, align 4
  %98 = zext i32 %97 to i64
  %99 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %100 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  br label %118

103:                                              ; preds = %80
  %104 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %105 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %109 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = add i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %5, align 4
  %113 = zext i32 %112 to i64
  %114 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %115 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %103, %91
  br label %119

119:                                              ; preds = %118, %62
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %61, %26
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @mon_buff_area_fill(%struct.mon_reader_bin*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
