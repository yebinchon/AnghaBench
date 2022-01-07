; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_detach_buf_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_detach_buf_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_virtqueue = type { i32, %struct.TYPE_5__, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.vring_desc_state_packed* }
%struct.TYPE_6__ = type { i32 }
%struct.vring_desc_state_packed = type { i64, i32, i32, %struct.vring_packed_desc*, i32* }
%struct.vring_packed_desc = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vring_virtqueue*, i32, i8**)* @detach_buf_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detach_buf_packed(%struct.vring_virtqueue* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.vring_virtqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.vring_desc_state_packed*, align 8
  %8 = alloca %struct.vring_packed_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vring_virtqueue* %0, %struct.vring_virtqueue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store %struct.vring_desc_state_packed* null, %struct.vring_desc_state_packed** %7, align 8
  %12 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %13 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.vring_desc_state_packed*, %struct.vring_desc_state_packed** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vring_desc_state_packed, %struct.vring_desc_state_packed* %15, i64 %17
  store %struct.vring_desc_state_packed* %18, %struct.vring_desc_state_packed** %7, align 8
  %19 = load %struct.vring_desc_state_packed*, %struct.vring_desc_state_packed** %7, align 8
  %20 = getelementptr inbounds %struct.vring_desc_state_packed, %struct.vring_desc_state_packed* %19, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %22 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %25 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.vring_desc_state_packed*, %struct.vring_desc_state_packed** %26, align 8
  %28 = load %struct.vring_desc_state_packed*, %struct.vring_desc_state_packed** %7, align 8
  %29 = getelementptr inbounds %struct.vring_desc_state_packed, %struct.vring_desc_state_packed* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.vring_desc_state_packed, %struct.vring_desc_state_packed* %27, i64 %30
  %32 = getelementptr inbounds %struct.vring_desc_state_packed, %struct.vring_desc_state_packed* %31, i32 0, i32 1
  store i32 %23, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %35 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.vring_desc_state_packed*, %struct.vring_desc_state_packed** %7, align 8
  %37 = getelementptr inbounds %struct.vring_desc_state_packed, %struct.vring_desc_state_packed* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %40 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add i32 %42, %38
  store i32 %43, i32* %41, align 8
  %44 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %45 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @unlikely(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %3
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %76, %49
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.vring_desc_state_packed*, %struct.vring_desc_state_packed** %7, align 8
  %54 = getelementptr inbounds %struct.vring_desc_state_packed, %struct.vring_desc_state_packed* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %51
  %58 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %59 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %60 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = call i32 @vring_unmap_state_packed(%struct.vring_virtqueue* %58, %struct.TYPE_6__* %65)
  %67 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %68 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load %struct.vring_desc_state_packed*, %struct.vring_desc_state_packed** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.vring_desc_state_packed, %struct.vring_desc_state_packed* %70, i64 %72
  %74 = getelementptr inbounds %struct.vring_desc_state_packed, %struct.vring_desc_state_packed* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %57
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %51

79:                                               ; preds = %51
  br label %80

80:                                               ; preds = %79, %3
  %81 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %82 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %130

85:                                               ; preds = %80
  %86 = load %struct.vring_desc_state_packed*, %struct.vring_desc_state_packed** %7, align 8
  %87 = getelementptr inbounds %struct.vring_desc_state_packed, %struct.vring_desc_state_packed* %86, i32 0, i32 3
  %88 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %87, align 8
  store %struct.vring_packed_desc* %88, %struct.vring_packed_desc** %8, align 8
  %89 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %8, align 8
  %90 = icmp ne %struct.vring_packed_desc* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %140

92:                                               ; preds = %85
  %93 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %94 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %125

97:                                               ; preds = %92
  %98 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %99 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %121, %97
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = udiv i64 %111, 4
  %113 = icmp ult i64 %109, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %116 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %116, i64 %118
  %120 = call i32 @vring_unmap_desc_packed(%struct.vring_virtqueue* %115, %struct.vring_packed_desc* %119)
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %9, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %107

124:                                              ; preds = %107
  br label %125

125:                                              ; preds = %124, %92
  %126 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %8, align 8
  %127 = call i32 @kfree(%struct.vring_packed_desc* %126)
  %128 = load %struct.vring_desc_state_packed*, %struct.vring_desc_state_packed** %7, align 8
  %129 = getelementptr inbounds %struct.vring_desc_state_packed, %struct.vring_desc_state_packed* %128, i32 0, i32 3
  store %struct.vring_packed_desc* null, %struct.vring_packed_desc** %129, align 8
  br label %140

130:                                              ; preds = %80
  %131 = load i8**, i8*** %6, align 8
  %132 = icmp ne i8** %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.vring_desc_state_packed*, %struct.vring_desc_state_packed** %7, align 8
  %135 = getelementptr inbounds %struct.vring_desc_state_packed, %struct.vring_desc_state_packed* %134, i32 0, i32 3
  %136 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %135, align 8
  %137 = bitcast %struct.vring_packed_desc* %136 to i8*
  %138 = load i8**, i8*** %6, align 8
  store i8* %137, i8** %138, align 8
  br label %139

139:                                              ; preds = %133, %130
  br label %140

140:                                              ; preds = %91, %139, %125
  ret void
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @vring_unmap_state_packed(%struct.vring_virtqueue*, %struct.TYPE_6__*) #1

declare dso_local i32 @vring_unmap_desc_packed(%struct.vring_virtqueue*, %struct.vring_packed_desc*) #1

declare dso_local i32 @kfree(%struct.vring_packed_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
