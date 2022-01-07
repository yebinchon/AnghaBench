; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_get_tx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_get_tx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i32 }
%struct.vhost_net_virtqueue = type { i32, %struct.vhost_virtqueue }
%struct.vhost_virtqueue = type { i32 }
%struct.msghdr = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Unexpected descriptor format for TX: out %d, int %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Unexpected header len for TX: %zd expected %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_net*, %struct.vhost_net_virtqueue*, %struct.msghdr*, i32*, i32*, i64*, i32*)* @get_tx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tx_bufs(%struct.vhost_net* %0, %struct.vhost_net_virtqueue* %1, %struct.msghdr* %2, i32* %3, i32* %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vhost_net*, align 8
  %10 = alloca %struct.vhost_net_virtqueue*, align 8
  %11 = alloca %struct.msghdr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.vhost_virtqueue*, align 8
  %17 = alloca i32, align 4
  store %struct.vhost_net* %0, %struct.vhost_net** %9, align 8
  store %struct.vhost_net_virtqueue* %1, %struct.vhost_net_virtqueue** %10, align 8
  store %struct.msghdr* %2, %struct.msghdr** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %10, align 8
  %19 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %18, i32 0, i32 1
  store %struct.vhost_virtqueue* %19, %struct.vhost_virtqueue** %16, align 8
  %20 = load %struct.vhost_net*, %struct.vhost_net** %9, align 8
  %21 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %10, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = call i32 @vhost_net_tx_get_vq_desc(%struct.vhost_net* %20, %struct.vhost_net_virtqueue* %21, i32* %22, i32* %23, %struct.msghdr* %24, i32* %25)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* %17, align 4
  %31 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %16, align 8
  %32 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %7
  %36 = load i32, i32* %17, align 4
  store i32 %36, i32* %8, align 4
  br label %77

37:                                               ; preds = %29
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %16, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %43, align 4
  %45 = zext i32 %44 to i64
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @vq_err(%struct.vhost_virtqueue* %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %47)
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %77

51:                                               ; preds = %37
  %52 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %16, align 8
  %53 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %54 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %53, i32 0, i32 0
  %55 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %10, align 8
  %56 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @init_iov_iter(%struct.vhost_virtqueue* %52, i32* %54, i32 %57, i32 %59)
  %61 = load i64*, i64** %14, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i64*, i64** %14, align 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %51
  %66 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %16, align 8
  %67 = load i64*, i64** %14, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %10, align 8
  %70 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @vq_err(%struct.vhost_virtqueue* %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %68, i32 %71)
  %73 = load i32, i32* @EFAULT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %77

75:                                               ; preds = %51
  %76 = load i32, i32* %17, align 4
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %75, %65, %41, %35
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @vhost_net_tx_get_vq_desc(%struct.vhost_net*, %struct.vhost_net_virtqueue*, i32*, i32*, %struct.msghdr*, i32*) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*, i64, i32) #1

declare dso_local i64 @init_iov_iter(%struct.vhost_virtqueue*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
