; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_size_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_size_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270 = type { i32*, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.raw3270_ua = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@RAW3270_FLAGS_14BITADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3270*)* @raw3270_size_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3270_size_device(%struct.raw3270* %0) #0 {
  %2 = alloca %struct.raw3270*, align 8
  %3 = alloca %struct.raw3270_ua*, align 8
  store %struct.raw3270* %0, %struct.raw3270** %2, align 8
  %4 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %5 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = bitcast i32* %7 to %struct.raw3270_ua*
  store %struct.raw3270_ua* %8, %struct.raw3270_ua** %3, align 8
  %9 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %10 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %16 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 136
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load %struct.raw3270_ua*, %struct.raw3270_ua** %3, align 8
  %23 = getelementptr inbounds %struct.raw3270_ua, %struct.raw3270_ua* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 129
  br i1 %26, label %27, label %34

27:                                               ; preds = %21, %14, %1
  %28 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %29 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %28, i32 0, i32 1
  store i32 2, i32* %29, align 8
  %30 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %31 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %30, i32 0, i32 2
  store i32 24, i32* %31, align 4
  %32 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %33 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %32, i32 0, i32 3
  store i32 80, i32* %33, align 8
  br label %138

34:                                               ; preds = %21
  %35 = load %struct.raw3270_ua*, %struct.raw3270_ua** %3, align 8
  %36 = getelementptr inbounds %struct.raw3270_ua, %struct.raw3270_ua* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %40 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.raw3270_ua*, %struct.raw3270_ua** %3, align 8
  %42 = getelementptr inbounds %struct.raw3270_ua, %struct.raw3270_ua* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %46 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.raw3270_ua*, %struct.raw3270_ua** %3, align 8
  %48 = getelementptr inbounds %struct.raw3270_ua, %struct.raw3270_ua* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 13
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %34
  %54 = load i32, i32* @RAW3270_FLAGS_14BITADDR, align 4
  %55 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %56 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %55, i32 0, i32 4
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %53, %34
  %59 = load %struct.raw3270_ua*, %struct.raw3270_ua** %3, align 8
  %60 = getelementptr inbounds %struct.raw3270_ua, %struct.raw3270_ua* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %63, 32
  br i1 %64, label %65, label %84

65:                                               ; preds = %58
  %66 = load %struct.raw3270_ua*, %struct.raw3270_ua** %3, align 8
  %67 = getelementptr inbounds %struct.raw3270_ua, %struct.raw3270_ua* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load %struct.raw3270_ua*, %struct.raw3270_ua** %3, align 8
  %73 = getelementptr inbounds %struct.raw3270_ua, %struct.raw3270_ua* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %77 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.raw3270_ua*, %struct.raw3270_ua** %3, align 8
  %79 = getelementptr inbounds %struct.raw3270_ua, %struct.raw3270_ua* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %83 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %71, %65, %58
  %85 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %86 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %85, i32 0, i32 1
  store i32 0, i32* %86, align 8
  %87 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %88 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 24
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %93 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 80
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %98 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %97, i32 0, i32 1
  store i32 2, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %91, %84
  %100 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %101 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 32
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %106 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 80
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %111 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %110, i32 0, i32 1
  store i32 3, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %104, %99
  %113 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %114 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 43
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %119 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 80
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %124 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %123, i32 0, i32 1
  store i32 4, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %117, %112
  %126 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %127 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 27
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %132 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 132
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.raw3270*, %struct.raw3270** %2, align 8
  %137 = getelementptr inbounds %struct.raw3270, %struct.raw3270* %136, i32 0, i32 1
  store i32 5, i32* %137, align 8
  br label %138

138:                                              ; preds = %27, %135, %130, %125
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
