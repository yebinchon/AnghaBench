; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_rxtx_one_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_rxtx_one_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo_vring = type { i64, i64, i64, i64, %struct.vring_desc*, i32, %struct.mlxbf_tmfifo* }
%struct.vring_desc = type { i32, i32, i32 }
%struct.mlxbf_tmfifo = type { i32, i32**, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.virtio_device }
%struct.virtio_device = type { i32 }
%struct.vring = type { %struct.vring_desc* }

@VRING_DESC_F_NEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxbf_tmfifo_vring*, i32, i32*)* @mlxbf_tmfifo_rxtx_one_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxbf_tmfifo_rxtx_one_desc(%struct.mlxbf_tmfifo_vring* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vring*, align 8
  %9 = alloca %struct.mlxbf_tmfifo*, align 8
  %10 = alloca %struct.virtio_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vring_desc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.mlxbf_tmfifo_vring* %0, %struct.mlxbf_tmfifo_vring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %17 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.vring* @virtqueue_get_vring(i32 %18)
  store %struct.vring* %19, %struct.vring** %8, align 8
  %20 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %21 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %20, i32 0, i32 6
  %22 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %21, align 8
  store %struct.mlxbf_tmfifo* %22, %struct.mlxbf_tmfifo** %9, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %24 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %27 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.virtio_device* %31, %struct.virtio_device** %10, align 8
  %32 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %33 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %32, i32 0, i32 4
  %34 = load %struct.vring_desc*, %struct.vring_desc** %33, align 8
  %35 = icmp ne %struct.vring_desc* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %3
  %37 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.vring_desc* @mlxbf_tmfifo_get_next_pkt(%struct.mlxbf_tmfifo_vring* %37, i32 %38)
  store %struct.vring_desc* %39, %struct.vring_desc** %12, align 8
  %40 = load %struct.vring_desc*, %struct.vring_desc** %12, align 8
  %41 = icmp ne %struct.vring_desc* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %159

43:                                               ; preds = %36
  br label %48

44:                                               ; preds = %3
  %45 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %46 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %45, i32 0, i32 4
  %47 = load %struct.vring_desc*, %struct.vring_desc** %46, align 8
  store %struct.vring_desc* %47, %struct.vring_desc** %12, align 8
  br label %48

48:                                               ; preds = %44, %43
  %49 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %50 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %55 = load %struct.vring_desc*, %struct.vring_desc** %12, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @mlxbf_tmfifo_rxtx_header(%struct.mlxbf_tmfifo_vring* %54, %struct.vring_desc* %55, i32 %56, i32* %11)
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %159

64:                                               ; preds = %53
  br label %155

65:                                               ; preds = %48
  %66 = load %struct.virtio_device*, %struct.virtio_device** %10, align 8
  %67 = load %struct.vring_desc*, %struct.vring_desc** %12, align 8
  %68 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @virtio32_to_cpu(%struct.virtio_device* %66, i32 %69)
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %73 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %78 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %14, align 8
  br label %80

80:                                               ; preds = %76, %65
  %81 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %82 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %14, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %88 = load %struct.vring_desc*, %struct.vring_desc** %12, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @mlxbf_tmfifo_rxtx_word(%struct.mlxbf_tmfifo_vring* %87, %struct.vring_desc* %88, i32 %89, i64 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %86, %80
  %96 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %97 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %14, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %154

101:                                              ; preds = %95
  %102 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %103 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %106 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %110 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %101
  %114 = load %struct.virtio_device*, %struct.virtio_device** %10, align 8
  %115 = load %struct.vring_desc*, %struct.vring_desc** %12, align 8
  %116 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @virtio16_to_cpu(%struct.virtio_device* %114, i32 %117)
  %119 = load i64, i64* @VRING_DESC_F_NEXT, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %113
  %123 = load %struct.virtio_device*, %struct.virtio_device** %10, align 8
  %124 = load %struct.vring_desc*, %struct.vring_desc** %12, align 8
  %125 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @virtio16_to_cpu(%struct.virtio_device* %123, i32 %126)
  store i64 %127, i64* %15, align 8
  %128 = load %struct.vring*, %struct.vring** %8, align 8
  %129 = getelementptr inbounds %struct.vring, %struct.vring* %128, i32 0, i32 0
  %130 = load %struct.vring_desc*, %struct.vring_desc** %129, align 8
  %131 = load i64, i64* %15, align 8
  %132 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %130, i64 %131
  store %struct.vring_desc* %132, %struct.vring_desc** %12, align 8
  br label %155

133:                                              ; preds = %113, %101
  %134 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %135 = call i32 @mlxbf_tmfifo_release_pending_pkt(%struct.mlxbf_tmfifo_vring* %134)
  store %struct.vring_desc* null, %struct.vring_desc** %12, align 8
  %136 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %137 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %136, i32 0, i32 1
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  store i32* null, i32** %141, align 8
  %142 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %143 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %142, i32 0, i32 0
  %144 = load i64, i64* %13, align 8
  %145 = call i32 @spin_lock_irqsave(i32* %143, i64 %144)
  %146 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %147 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @vring_interrupt(i32 0, i32 %148)
  %150 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %151 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %150, i32 0, i32 0
  %152 = load i64, i64* %13, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* %151, i64 %152)
  br label %154

154:                                              ; preds = %133, %95
  br label %155

155:                                              ; preds = %154, %122, %64
  %156 = load %struct.vring_desc*, %struct.vring_desc** %12, align 8
  %157 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %158 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %157, i32 0, i32 4
  store %struct.vring_desc* %156, %struct.vring_desc** %158, align 8
  store i32 1, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %63, %42
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.vring* @virtqueue_get_vring(i32) #1

declare dso_local %struct.vring_desc* @mlxbf_tmfifo_get_next_pkt(%struct.mlxbf_tmfifo_vring*, i32) #1

declare dso_local i32 @mlxbf_tmfifo_rxtx_header(%struct.mlxbf_tmfifo_vring*, %struct.vring_desc*, i32, i32*) #1

declare dso_local i64 @virtio32_to_cpu(%struct.virtio_device*, i32) #1

declare dso_local i32 @mlxbf_tmfifo_rxtx_word(%struct.mlxbf_tmfifo_vring*, %struct.vring_desc*, i32, i64) #1

declare dso_local i64 @virtio16_to_cpu(%struct.virtio_device*, i32) #1

declare dso_local i32 @mlxbf_tmfifo_release_pending_pkt(%struct.mlxbf_tmfifo_vring*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vring_interrupt(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
