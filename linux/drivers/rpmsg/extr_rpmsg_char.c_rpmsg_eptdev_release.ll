; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_eptdev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_char.c_rpmsg_eptdev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.rpmsg_eptdev = type { i32, i32, i32*, %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @rpmsg_eptdev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmsg_eptdev_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.rpmsg_eptdev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.rpmsg_eptdev* @cdev_to_eptdev(i32 %10)
  store %struct.rpmsg_eptdev* %11, %struct.rpmsg_eptdev** %5, align 8
  %12 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %5, align 8
  %13 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %12, i32 0, i32 3
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %5, align 8
  %15 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %5, align 8
  %18 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %5, align 8
  %23 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @rpmsg_destroy_ept(i32* %24)
  %26 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %5, align 8
  %27 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %2
  %29 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %5, align 8
  %30 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  br label %32

32:                                               ; preds = %38, %28
  %33 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %5, align 8
  %34 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %33, i32 0, i32 0
  %35 = call i32 @skb_queue_empty(i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.rpmsg_eptdev*, %struct.rpmsg_eptdev** %5, align 8
  %40 = getelementptr inbounds %struct.rpmsg_eptdev, %struct.rpmsg_eptdev* %39, i32 0, i32 0
  %41 = call %struct.sk_buff* @skb_dequeue(i32* %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %7, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  br label %32

44:                                               ; preds = %32
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @put_device(%struct.device* %45)
  ret i32 0
}

declare dso_local %struct.rpmsg_eptdev* @cdev_to_eptdev(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpmsg_destroy_ept(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
