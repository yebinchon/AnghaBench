; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_vq_meta_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_vq_meta_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { %struct.vhost_umem_node** }
%struct.vhost_umem_node = type { i32 }

@VHOST_ADDR_USED = common dso_local global i32 0, align 4
@VHOST_ACCESS_WO = common dso_local global i32 0, align 4
@VHOST_ACCESS_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_virtqueue*, %struct.vhost_umem_node*, i32)* @vhost_vq_meta_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_vq_meta_update(%struct.vhost_virtqueue* %0, %struct.vhost_umem_node* %1, i32 %2) #0 {
  %4 = alloca %struct.vhost_virtqueue*, align 8
  %5 = alloca %struct.vhost_umem_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %4, align 8
  store %struct.vhost_umem_node* %1, %struct.vhost_umem_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @VHOST_ADDR_USED, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @VHOST_ACCESS_WO, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @VHOST_ACCESS_RO, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %7, align 4
  %17 = load %struct.vhost_umem_node*, %struct.vhost_umem_node** %5, align 8
  %18 = getelementptr inbounds %struct.vhost_umem_node, %struct.vhost_umem_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %19, %20
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.vhost_umem_node*, %struct.vhost_umem_node** %5, align 8
  %26 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %27 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %26, i32 0, i32 0
  %28 = load %struct.vhost_umem_node**, %struct.vhost_umem_node*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vhost_umem_node*, %struct.vhost_umem_node** %28, i64 %30
  store %struct.vhost_umem_node* %25, %struct.vhost_umem_node** %31, align 8
  br label %32

32:                                               ; preds = %24, %15
  ret void
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
