; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_enqueue_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_enqueue_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.vhost_msg_node = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vhost_enqueue_msg(%struct.vhost_dev* %0, %struct.list_head* %1, %struct.vhost_msg_node* %2) #0 {
  %4 = alloca %struct.vhost_dev*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.vhost_msg_node*, align 8
  store %struct.vhost_dev* %0, %struct.vhost_dev** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.vhost_msg_node* %2, %struct.vhost_msg_node** %6, align 8
  %7 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %8 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.vhost_msg_node*, %struct.vhost_msg_node** %6, align 8
  %11 = getelementptr inbounds %struct.vhost_msg_node, %struct.vhost_msg_node* %10, i32 0, i32 0
  %12 = load %struct.list_head*, %struct.list_head** %5, align 8
  %13 = call i32 @list_add_tail(i32* %11, %struct.list_head* %12)
  %14 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %15 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %14, i32 0, i32 1
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %18 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %17, i32 0, i32 0
  %19 = load i32, i32* @EPOLLIN, align 4
  %20 = load i32, i32* @EPOLLRDNORM, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @wake_up_interruptible_poll(i32* %18, i32 %21)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible_poll(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
