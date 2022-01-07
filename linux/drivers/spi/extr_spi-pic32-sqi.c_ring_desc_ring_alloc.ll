; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32-sqi.c_ring_desc_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32-sqi.c_ring_desc_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_sqi = type { i32, %struct.ring_desc*, i32, i32, i64, %struct.TYPE_2__* }
%struct.ring_desc = type { i32, i32, %struct.buf_desc* }
%struct.buf_desc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PESQI_BD_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed allocating dma buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pic32_sqi*)* @ring_desc_ring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ring_desc_ring_alloc(%struct.pic32_sqi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pic32_sqi*, align 8
  %4 = alloca %struct.ring_desc*, align 8
  %5 = alloca %struct.buf_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.pic32_sqi* %0, %struct.pic32_sqi** %3, align 8
  %7 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %8 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %7, i32 0, i32 5
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* @PESQI_BD_COUNT, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %16 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @dma_alloc_coherent(i32* %10, i32 %14, i32* %16, i32 %17)
  %19 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %20 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %19, i32 0, i32 4
  store i64 %18, i64* %20, align 8
  %21 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %22 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %1
  %26 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %27 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %149

33:                                               ; preds = %1
  %34 = load i32, i32* @PESQI_BD_COUNT, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.ring_desc* @kcalloc(i32 %34, i32 16, i32 %35)
  %37 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %38 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %37, i32 0, i32 1
  store %struct.ring_desc* %36, %struct.ring_desc** %38, align 8
  %39 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %40 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %39, i32 0, i32 1
  %41 = load %struct.ring_desc*, %struct.ring_desc** %40, align 8
  %42 = icmp ne %struct.ring_desc* %41, null
  br i1 %42, label %61, label %43

43:                                               ; preds = %33
  %44 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %45 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %44, i32 0, i32 5
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* @PESQI_BD_COUNT, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %53 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %56 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dma_free_coherent(i32* %47, i32 %51, i64 %54, i32 %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %149

61:                                               ; preds = %33
  %62 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %63 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.buf_desc*
  store %struct.buf_desc* %65, %struct.buf_desc** %5, align 8
  %66 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %67 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %66, i32 0, i32 2
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %70 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %69, i32 0, i32 3
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  store i32 0, i32* %6, align 4
  %72 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %73 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %72, i32 0, i32 1
  %74 = load %struct.ring_desc*, %struct.ring_desc** %73, align 8
  store %struct.ring_desc* %74, %struct.ring_desc** %4, align 8
  br label %75

75:                                               ; preds = %112, %61
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @PESQI_BD_COUNT, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %117

79:                                               ; preds = %75
  %80 = load %struct.ring_desc*, %struct.ring_desc** %4, align 8
  %81 = getelementptr inbounds %struct.ring_desc, %struct.ring_desc* %80, i32 0, i32 1
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.buf_desc*, %struct.buf_desc** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.buf_desc, %struct.buf_desc* %83, i64 %85
  %87 = load %struct.ring_desc*, %struct.ring_desc** %4, align 8
  %88 = getelementptr inbounds %struct.ring_desc, %struct.ring_desc* %87, i32 0, i32 2
  store %struct.buf_desc* %86, %struct.buf_desc** %88, align 8
  %89 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %90 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.buf_desc*, %struct.buf_desc** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.buf_desc, %struct.buf_desc* %92, i64 %94
  %96 = bitcast %struct.buf_desc* %95 to i8*
  %97 = sext i32 %91 to i64
  %98 = getelementptr i8, i8* %96, i64 %97
  %99 = load %struct.buf_desc*, %struct.buf_desc** %5, align 8
  %100 = bitcast %struct.buf_desc* %99 to i8*
  %101 = ptrtoint i8* %98 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = load %struct.ring_desc*, %struct.ring_desc** %4, align 8
  %106 = getelementptr inbounds %struct.ring_desc, %struct.ring_desc* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.ring_desc*, %struct.ring_desc** %4, align 8
  %108 = getelementptr inbounds %struct.ring_desc, %struct.ring_desc* %107, i32 0, i32 1
  %109 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %110 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %109, i32 0, i32 2
  %111 = call i32 @list_add_tail(i32* %108, i32* %110)
  br label %112

112:                                              ; preds = %79
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  %115 = load %struct.ring_desc*, %struct.ring_desc** %4, align 8
  %116 = getelementptr inbounds %struct.ring_desc, %struct.ring_desc* %115, i32 1
  store %struct.ring_desc* %116, %struct.ring_desc** %4, align 8
  br label %75

117:                                              ; preds = %75
  store i32 0, i32* %6, align 4
  %118 = load %struct.pic32_sqi*, %struct.pic32_sqi** %3, align 8
  %119 = getelementptr inbounds %struct.pic32_sqi, %struct.pic32_sqi* %118, i32 0, i32 1
  %120 = load %struct.ring_desc*, %struct.ring_desc** %119, align 8
  store %struct.ring_desc* %120, %struct.ring_desc** %4, align 8
  br label %121

121:                                              ; preds = %139, %117
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @PESQI_BD_COUNT, align 4
  %124 = sub nsw i32 %123, 1
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %121
  %127 = load %struct.ring_desc*, %struct.ring_desc** %4, align 8
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ring_desc, %struct.ring_desc* %127, i64 %130
  %132 = getelementptr inbounds %struct.ring_desc, %struct.ring_desc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.buf_desc*, %struct.buf_desc** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.buf_desc, %struct.buf_desc* %134, i64 %136
  %138 = getelementptr inbounds %struct.buf_desc, %struct.buf_desc* %137, i32 0, i32 0
  store i32 %133, i32* %138, align 4
  br label %139

139:                                              ; preds = %126
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %121

142:                                              ; preds = %121
  %143 = load %struct.buf_desc*, %struct.buf_desc** %5, align 8
  %144 = load i32, i32* @PESQI_BD_COUNT, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.buf_desc, %struct.buf_desc* %143, i64 %146
  %148 = getelementptr inbounds %struct.buf_desc, %struct.buf_desc* %147, i32 0, i32 0
  store i32 0, i32* %148, align 4
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %142, %43, %25
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ring_desc* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
