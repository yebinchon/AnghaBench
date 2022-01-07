; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_get_buf_ctx_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_get_buf_ctx_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { i32, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i8* }

@.str = private unnamed_addr constant [26 x i8] c"No more buffers in queue\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"id %u out of range\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"id %u is not a head!\0A\00", align 1
@VRING_PACKED_EVENT_FLAG_DESC = common dso_local global i64 0, align 8
@VRING_PACKED_EVENT_F_WRAP_CTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.virtqueue*, i32*, i8**)* @virtqueue_get_buf_ctx_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @virtqueue_get_buf_ctx_packed(%struct.virtqueue* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.vring_virtqueue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %13 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %12)
  store %struct.vring_virtqueue* %13, %struct.vring_virtqueue** %8, align 8
  %14 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %15 = call i32 @START_USE(%struct.vring_virtqueue* %14)
  %16 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %17 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %23 = call i32 @END_USE(%struct.vring_virtqueue* %22)
  store i8* null, i8** %4, align 8
  br label %182

24:                                               ; preds = %3
  %25 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %26 = call i32 @more_used_packed(%struct.vring_virtqueue* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %31 = call i32 @END_USE(%struct.vring_virtqueue* %30)
  store i8* null, i8** %4, align 8
  br label %182

32:                                               ; preds = %24
  %33 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %34 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @virtio_rmb(i32 %35)
  %37 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %38 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %41 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le16_to_cpu(i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %51 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %63 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp uge i64 %61, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %32
  %72 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @BAD_RING(%struct.vring_virtqueue* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  store i8* null, i8** %4, align 8
  br label %182

75:                                               ; preds = %32
  %76 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %77 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %75
  %90 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @BAD_RING(%struct.vring_virtqueue* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  store i8* null, i8** %4, align 8
  br label %182

93:                                               ; preds = %75
  %94 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %95 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %11, align 8
  %102 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load i8**, i8*** %7, align 8
  %105 = call i32 @detach_buf_packed(%struct.vring_virtqueue* %102, i64 %103, i8** %104)
  %106 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %107 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %115 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %119 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %122 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp uge i64 %120, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %93
  %131 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %132 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %137 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = sub i64 %138, %135
  store i64 %139, i64* %137, align 8
  %140 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %141 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = xor i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %130, %93
  %146 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %147 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @VRING_PACKED_EVENT_FLAG_DESC, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %176

152:                                              ; preds = %145
  %153 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %154 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %157 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %163 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %166 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @VRING_PACKED_EVENT_F_WRAP_CTR, align 4
  %170 = shl i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = or i64 %164, %171
  %173 = trunc i64 %172 to i32
  %174 = call i32 @cpu_to_le16(i32 %173)
  %175 = call i32 @virtio_store_mb(i32 %155, i32* %161, i32 %174)
  br label %176

176:                                              ; preds = %152, %145
  %177 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %178 = call i32 @LAST_ADD_TIME_INVALID(%struct.vring_virtqueue* %177)
  %179 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %8, align 8
  %180 = call i32 @END_USE(%struct.vring_virtqueue* %179)
  %181 = load i8*, i8** %11, align 8
  store i8* %181, i8** %4, align 8
  br label %182

182:                                              ; preds = %176, %89, %71, %28, %21
  %183 = load i8*, i8** %4, align 8
  ret i8* %183
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @START_USE(%struct.vring_virtqueue*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @END_USE(%struct.vring_virtqueue*) #1

declare dso_local i32 @more_used_packed(%struct.vring_virtqueue*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @virtio_rmb(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BAD_RING(%struct.vring_virtqueue*, i8*, i64) #1

declare dso_local i32 @detach_buf_packed(%struct.vring_virtqueue*, i64, i8**) #1

declare dso_local i32 @virtio_store_mb(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @LAST_ADD_TIME_INVALID(%struct.vring_virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
