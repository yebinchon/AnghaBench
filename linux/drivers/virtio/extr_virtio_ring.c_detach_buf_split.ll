; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_detach_buf_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_detach_buf_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_virtqueue = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.vring_desc*, i32* }
%struct.vring_desc = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.vring_desc* }
%struct.TYPE_6__ = type { i32, i32 }

@VRING_DESC_F_NEXT = common dso_local global i32 0, align 4
@VRING_DESC_F_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vring_virtqueue*, i32, i8**)* @detach_buf_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detach_buf_split(%struct.vring_virtqueue* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.vring_virtqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vring_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.vring_virtqueue* %0, %struct.vring_virtqueue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %12 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %13 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VRING_DESC_F_NEXT, align 4
  %17 = call i32 @cpu_to_virtio16(i32 %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %19 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %41, %3
  %28 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %29 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.vring_desc*, %struct.vring_desc** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %32, i64 %34
  %36 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %27
  %42 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %43 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %44 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.vring_desc*, %struct.vring_desc** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %47, i64 %49
  %51 = call i32 @vring_unmap_one_split(%struct.vring_virtqueue* %42, %struct.vring_desc* %50)
  %52 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %53 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %57 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.vring_desc*, %struct.vring_desc** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %60, i64 %62
  %64 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @virtio16_to_cpu(i32 %55, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %68 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %27

72:                                               ; preds = %27
  %73 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %74 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %75 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.vring_desc*, %struct.vring_desc** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %78, i64 %80
  %82 = call i32 @vring_unmap_one_split(%struct.vring_virtqueue* %73, %struct.vring_desc* %81)
  %83 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %84 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %88 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @cpu_to_virtio16(i32 %86, i32 %89)
  %91 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %92 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.vring_desc*, %struct.vring_desc** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %95, i64 %97
  %99 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %98, i32 0, i32 1
  store i32 %90, i32* %99, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %102 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %104 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %109 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %201

112:                                              ; preds = %72
  %113 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %114 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load %struct.vring_desc*, %struct.vring_desc** %120, align 8
  store %struct.vring_desc* %121, %struct.vring_desc** %10, align 8
  %122 = load %struct.vring_desc*, %struct.vring_desc** %10, align 8
  %123 = icmp ne %struct.vring_desc* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %112
  br label %217

125:                                              ; preds = %112
  %126 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %127 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %131 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load %struct.vring_desc*, %struct.vring_desc** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %134, i64 %136
  %138 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @virtio32_to_cpu(i32 %129, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %142 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load %struct.vring_desc*, %struct.vring_desc** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %145, i64 %147
  %149 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %152 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @VRING_DESC_F_INDIRECT, align 4
  %156 = call i32 @cpu_to_virtio16(i32 %154, i32 %155)
  %157 = and i32 %150, %156
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i32 @BUG_ON(i32 %160)
  %162 = load i32, i32* %11, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %125
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = urem i64 %166, 12
  %168 = icmp ne i64 %167, 0
  br label %169

169:                                              ; preds = %164, %125
  %170 = phi i1 [ true, %125 ], [ %168, %164 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @BUG_ON(i32 %171)
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %187, %169
  %174 = load i32, i32* %8, align 4
  %175 = zext i32 %174 to i64
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = udiv i64 %177, 12
  %179 = icmp ult i64 %175, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %182 = load %struct.vring_desc*, %struct.vring_desc** %10, align 8
  %183 = load i32, i32* %8, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %182, i64 %184
  %186 = call i32 @vring_unmap_one_split(%struct.vring_virtqueue* %181, %struct.vring_desc* %185)
  br label %187

187:                                              ; preds = %180
  %188 = load i32, i32* %8, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %173

190:                                              ; preds = %173
  %191 = load %struct.vring_desc*, %struct.vring_desc** %10, align 8
  %192 = call i32 @kfree(%struct.vring_desc* %191)
  %193 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %194 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  store %struct.vring_desc* null, %struct.vring_desc** %200, align 8
  br label %217

201:                                              ; preds = %72
  %202 = load i8**, i8*** %6, align 8
  %203 = icmp ne i8** %202, null
  br i1 %203, label %204, label %216

204:                                              ; preds = %201
  %205 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %206 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load %struct.vring_desc*, %struct.vring_desc** %212, align 8
  %214 = bitcast %struct.vring_desc* %213 to i8*
  %215 = load i8**, i8*** %6, align 8
  store i8* %214, i8** %215, align 8
  br label %216

216:                                              ; preds = %204, %201
  br label %217

217:                                              ; preds = %124, %216, %190
  ret void
}

declare dso_local i32 @cpu_to_virtio16(i32, i32) #1

declare dso_local i32 @vring_unmap_one_split(%struct.vring_virtqueue*, %struct.vring_desc*) #1

declare dso_local i32 @virtio16_to_cpu(i32, i32) #1

declare dso_local i32 @virtio32_to_cpu(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(%struct.vring_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
