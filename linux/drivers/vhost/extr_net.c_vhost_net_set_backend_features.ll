; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_set_backend_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_set_backend_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@VHOST_NET_VQ_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_net*, i32)* @vhost_net_set_backend_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_net_set_backend_features(%struct.vhost_net* %0, i32 %1) #0 {
  %3 = alloca %struct.vhost_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vhost_net* %0, %struct.vhost_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %7 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %42, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VHOST_NET_VQ_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %16 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %26 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %24, i32* %32, align 4
  %33 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %34 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %42

42:                                               ; preds = %14
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %10

45:                                               ; preds = %10
  %46 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %47 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
