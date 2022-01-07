; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_init_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_init_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

@PAYLOAD_OFFSET = common dso_local global i64 0, align 8
@BLOCK_1_NUM = common dso_local global i32 0, align 4
@BLOCK_1_SIZE = common dso_local global i64 0, align 8
@BLOCK_2_NUM = common dso_local global i32 0, align 4
@BLOCK_2_SIZE = common dso_local global i64 0, align 8
@BLOCK_3_NUM = common dso_local global i32 0, align 4
@BLOCK_3_SIZE = common dso_local global i64 0, align 8
@PAYLOAD_AREA_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_hcd*)* @init_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_memory(%struct.isp1760_hcd* %0) #0 {
  %2 = alloca %struct.isp1760_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.isp1760_hcd* %0, %struct.isp1760_hcd** %2, align 8
  %6 = load i64, i64* @PAYLOAD_OFFSET, align 8
  store i64 %6, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %45, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BLOCK_1_NUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %12, i64* %19, align 8
  %20 = load i64, i64* @BLOCK_1_SIZE, align 8
  %21 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %22 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i64 %20, i64* %27, align 8
  %28 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %29 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %36 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %11
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %7

48:                                               ; preds = %7
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %96, %48
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @BLOCK_2_NUM, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %99

54:                                               ; preds = %50
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %57 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i64 %55, i64* %64, align 8
  %65 = load i64, i64* @BLOCK_2_SIZE, align 8
  %66 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %67 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i64 %65, i64* %74, align 8
  %75 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %76 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 1, i32* %83, align 8
  %84 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %85 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %5, align 8
  br label %96

96:                                               ; preds = %54
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %50

99:                                               ; preds = %50
  %100 = load i32, i32* %3, align 4
  store i32 %100, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %147, %99
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @BLOCK_3_NUM, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %150

105:                                              ; preds = %101
  %106 = load i64, i64* %5, align 8
  %107 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %108 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i64 %106, i64* %115, align 8
  %116 = load i64, i64* @BLOCK_3_SIZE, align 8
  %117 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %118 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i64 %116, i64* %125, align 8
  %126 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %127 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  store i32 1, i32* %134, align 8
  %135 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %136 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %5, align 8
  %146 = add nsw i64 %145, %144
  store i64 %146, i64* %5, align 8
  br label %147

147:                                              ; preds = %105
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %3, align 4
  br label %101

150:                                              ; preds = %101
  %151 = load i64, i64* %5, align 8
  %152 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %153 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %151, %157
  %159 = load i64, i64* @PAYLOAD_AREA_SIZE, align 8
  %160 = icmp sgt i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @WARN_ON(i32 %161)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
