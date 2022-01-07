; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_iotlb_miss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_iotlb_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { %struct.vhost_dev* }
%struct.vhost_dev = type { i32 }
%struct.vhost_msg_node = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.vhost_iotlb_msg }
%struct.vhost_iotlb_msg = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.vhost_iotlb_msg, i32 }

@VHOST_BACKEND_F_IOTLB_MSG_V2 = common dso_local global i32 0, align 4
@VHOST_IOTLB_MSG_V2 = common dso_local global i32 0, align 4
@VHOST_IOTLB_MSG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VHOST_IOTLB_MISS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_virtqueue*, i32, i32)* @vhost_iotlb_miss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_iotlb_miss(%struct.vhost_virtqueue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vhost_virtqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vhost_dev*, align 8
  %9 = alloca %struct.vhost_msg_node*, align 8
  %10 = alloca %struct.vhost_iotlb_msg*, align 8
  %11 = alloca i32, align 4
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %13 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %12, i32 0, i32 0
  %14 = load %struct.vhost_dev*, %struct.vhost_dev** %13, align 8
  store %struct.vhost_dev* %14, %struct.vhost_dev** %8, align 8
  %15 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %16 = load i32, i32* @VHOST_BACKEND_F_IOTLB_MSG_V2, align 4
  %17 = call i32 @vhost_backend_has_feature(%struct.vhost_virtqueue* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @VHOST_IOTLB_MSG_V2, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @VHOST_IOTLB_MSG, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = call %struct.vhost_msg_node* @vhost_new_msg(%struct.vhost_virtqueue* %18, i32 %26)
  store %struct.vhost_msg_node* %27, %struct.vhost_msg_node** %9, align 8
  %28 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %9, align 8
  %29 = icmp ne %struct.vhost_msg_node* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %63

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* @VHOST_IOTLB_MSG_V2, align 4
  %38 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %9, align 8
  %39 = getelementptr inbounds %struct.vhost_msg_node, %struct.vhost_msg_node* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %9, align 8
  %42 = getelementptr inbounds %struct.vhost_msg_node, %struct.vhost_msg_node* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.vhost_iotlb_msg* %43, %struct.vhost_iotlb_msg** %10, align 8
  br label %48

44:                                               ; preds = %33
  %45 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %9, align 8
  %46 = getelementptr inbounds %struct.vhost_msg_node, %struct.vhost_msg_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %struct.vhost_iotlb_msg* %47, %struct.vhost_iotlb_msg** %10, align 8
  br label %48

48:                                               ; preds = %44, %36
  %49 = load i32, i32* @VHOST_IOTLB_MISS, align 4
  %50 = load %struct.vhost_iotlb_msg*, %struct.vhost_iotlb_msg** %10, align 8
  %51 = getelementptr inbounds %struct.vhost_iotlb_msg, %struct.vhost_iotlb_msg* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.vhost_iotlb_msg*, %struct.vhost_iotlb_msg** %10, align 8
  %54 = getelementptr inbounds %struct.vhost_iotlb_msg, %struct.vhost_iotlb_msg* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.vhost_iotlb_msg*, %struct.vhost_iotlb_msg** %10, align 8
  %57 = getelementptr inbounds %struct.vhost_iotlb_msg, %struct.vhost_iotlb_msg* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.vhost_dev*, %struct.vhost_dev** %8, align 8
  %59 = load %struct.vhost_dev*, %struct.vhost_dev** %8, align 8
  %60 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %59, i32 0, i32 0
  %61 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %9, align 8
  %62 = call i32 @vhost_enqueue_msg(%struct.vhost_dev* %58, i32* %60, %struct.vhost_msg_node* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %48, %30
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @vhost_backend_has_feature(%struct.vhost_virtqueue*, i32) #1

declare dso_local %struct.vhost_msg_node* @vhost_new_msg(%struct.vhost_virtqueue*, i32) #1

declare dso_local i32 @vhost_enqueue_msg(%struct.vhost_dev*, i32*, %struct.vhost_msg_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
