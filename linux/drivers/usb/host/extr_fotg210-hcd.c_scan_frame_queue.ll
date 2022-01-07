; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_scan_frame_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_scan_frame_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i64, i32*, %union.fotg210_shadow* }
%union.fotg210_shadow = type { i32* }
%struct.TYPE_2__ = type { i32*, i32, %union.fotg210_shadow }

@.str = private unnamed_addr constant [36 x i8] c"corrupt type %d frame %d shadow %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_hcd*, i32, i32, i32)* @scan_frame_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_frame_queue(%struct.fotg210_hcd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fotg210_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.fotg210_shadow, align 8
  %13 = alloca %union.fotg210_shadow*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %17 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %16, i32 0, i32 2
  %18 = load %union.fotg210_shadow*, %union.fotg210_shadow** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %union.fotg210_shadow, %union.fotg210_shadow* %18, i64 %20
  store %union.fotg210_shadow* %21, %union.fotg210_shadow** %13, align 8
  %22 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %23 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %15, align 8
  %28 = load %union.fotg210_shadow*, %union.fotg210_shadow** %13, align 8
  %29 = bitcast %union.fotg210_shadow* %28 to i32**
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast %union.fotg210_shadow* %12 to i32**
  store i32* %30, i32** %31, align 8
  %32 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %32, i32 %34)
  store i32 %35, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %145, %4
  %37 = bitcast %union.fotg210_shadow* %12 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %146

40:                                               ; preds = %36
  %41 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @hc32_to_cpu(%struct.fotg210_hcd* %41, i32 %42)
  switch i32 %43, label %120 [
    i32 129, label %44
    i32 128, label %127
    i32 130, label %127
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %94

51:                                               ; preds = %48
  %52 = call i32 (...) @rmb()
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %71, %51
  %54 = load i32, i32* %10, align 4
  %55 = icmp ult i32 %54, 8
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_2__**
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %66 = call i32 @ITD_ACTIVE(%struct.fotg210_hcd* %65)
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %74

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %53

74:                                               ; preds = %69, %53
  %75 = load i32, i32* %10, align 4
  %76 = icmp ult i32 %75, 8
  br i1 %76, label %77, label %93

77:                                               ; preds = %74
  %78 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_2__**
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store %union.fotg210_shadow* %80, %union.fotg210_shadow** %13, align 8
  %81 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_2__**
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32* %83, i32** %15, align 8
  %84 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %85 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_2__**
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %84, i32 %88)
  store i32 %89, i32* %14, align 4
  %90 = load %union.fotg210_shadow*, %union.fotg210_shadow** %13, align 8
  %91 = bitcast %union.fotg210_shadow* %12 to i8*
  %92 = bitcast %union.fotg210_shadow* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 8, i1 false)
  br label %129

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %93, %48, %44
  %95 = load %union.fotg210_shadow*, %union.fotg210_shadow** %13, align 8
  %96 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_2__**
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = bitcast %union.fotg210_shadow* %95 to i8*
  %100 = bitcast %union.fotg210_shadow* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 8, i1 false)
  %101 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_2__**
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %15, align 8
  store i32 %104, i32* %105, align 4
  %106 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %107 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_2__**
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %106, i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = call i32 (...) @wmb()
  %113 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %114 = bitcast %union.fotg210_shadow* %12 to %struct.TYPE_2__**
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = call i32 @itd_complete(%struct.fotg210_hcd* %113, %struct.TYPE_2__* %115)
  store i32 %116, i32* %11, align 4
  %117 = load %union.fotg210_shadow*, %union.fotg210_shadow** %13, align 8
  %118 = bitcast %union.fotg210_shadow* %12 to i8*
  %119 = bitcast %union.fotg210_shadow* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 8, i1 false)
  br label %129

120:                                              ; preds = %40
  %121 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %7, align 4
  %124 = bitcast %union.fotg210_shadow* %12 to i32**
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @fotg210_dbg(%struct.fotg210_hcd* %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %123, i32* %125)
  br label %127

127:                                              ; preds = %40, %40, %120
  %128 = bitcast %union.fotg210_shadow* %12 to i32**
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %127, %94, %77
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %6, align 8
  %134 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %135, 0
  br label %137

137:                                              ; preds = %132, %129
  %138 = phi i1 [ false, %129 ], [ %136, %132 ]
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %147

145:                                              ; preds = %137
  br label %36

146:                                              ; preds = %36
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %146, %142
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @Q_NEXT_TYPE(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @hc32_to_cpu(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ITD_ACTIVE(%struct.fotg210_hcd*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @itd_complete(%struct.fotg210_hcd*, %struct.TYPE_2__*) #1

declare dso_local i32 @fotg210_dbg(%struct.fotg210_hcd*, i8*, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
