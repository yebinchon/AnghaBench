; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_new_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_new_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_msg_node = type { %struct.TYPE_2__, %struct.vhost_virtqueue* }
%struct.TYPE_2__ = type { i32 }
%struct.vhost_virtqueue = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vhost_msg_node* @vhost_new_msg(%struct.vhost_virtqueue* %0, i32 %1) #0 {
  %3 = alloca %struct.vhost_msg_node*, align 8
  %4 = alloca %struct.vhost_virtqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vhost_msg_node*, align 8
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.vhost_msg_node* @kmalloc(i32 16, i32 %7)
  store %struct.vhost_msg_node* %8, %struct.vhost_msg_node** %6, align 8
  %9 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %6, align 8
  %10 = icmp ne %struct.vhost_msg_node* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.vhost_msg_node* null, %struct.vhost_msg_node** %3, align 8
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %6, align 8
  %14 = getelementptr inbounds %struct.vhost_msg_node, %struct.vhost_msg_node* %13, i32 0, i32 0
  %15 = call i32 @memset(%struct.TYPE_2__* %14, i32 0, i32 4)
  %16 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %17 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %6, align 8
  %18 = getelementptr inbounds %struct.vhost_msg_node, %struct.vhost_msg_node* %17, i32 0, i32 1
  store %struct.vhost_virtqueue* %16, %struct.vhost_virtqueue** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %6, align 8
  %21 = getelementptr inbounds %struct.vhost_msg_node, %struct.vhost_msg_node* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %6, align 8
  store %struct.vhost_msg_node* %23, %struct.vhost_msg_node** %3, align 8
  br label %24

24:                                               ; preds = %12, %11
  %25 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %3, align 8
  ret %struct.vhost_msg_node* %25
}

declare dso_local %struct.vhost_msg_node* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
