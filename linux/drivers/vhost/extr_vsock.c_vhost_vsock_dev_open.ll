; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vsock.c_vhost_vsock_dev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vsock.c_vhost_vsock_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.vhost_vsock* }
%struct.vhost_vsock = type { i32, i32, i32, %struct.vhost_virtqueue*, i32, i32, i64 }
%struct.vhost_virtqueue = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VSOCK_VQ_TX = common dso_local global i64 0, align 8
@VSOCK_VQ_RX = common dso_local global i64 0, align 8
@vhost_vsock_handle_tx_kick = common dso_local global i32 0, align 4
@vhost_vsock_handle_rx_kick = common dso_local global i32 0, align 4
@UIO_MAXIOV = common dso_local global i32 0, align 4
@VHOST_VSOCK_PKT_WEIGHT = common dso_local global i32 0, align 4
@VHOST_VSOCK_WEIGHT = common dso_local global i32 0, align 4
@vhost_transport_send_pkt_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vhost_vsock_dev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_vsock_dev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.vhost_virtqueue**, align 8
  %7 = alloca %struct.vhost_vsock*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.vhost_vsock* @kvmalloc(i32 40, i32 %11)
  store %struct.vhost_vsock* %12, %struct.vhost_vsock** %7, align 8
  %13 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %14 = icmp ne %struct.vhost_vsock* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %94

18:                                               ; preds = %2
  %19 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %20 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %19, i32 0, i32 3
  %21 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %20, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.vhost_virtqueue* %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.vhost_virtqueue** @kmalloc_array(i32 %22, i32 8, i32 %23)
  store %struct.vhost_virtqueue** %24, %struct.vhost_virtqueue*** %6, align 8
  %25 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %6, align 8
  %26 = icmp ne %struct.vhost_virtqueue** %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %90

30:                                               ; preds = %18
  %31 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %32 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %34 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %33, i32 0, i32 5
  %35 = call i32 @atomic_set(i32* %34, i32 0)
  %36 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %37 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %36, i32 0, i32 3
  %38 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %37, align 8
  %39 = load i64, i64* @VSOCK_VQ_TX, align 8
  %40 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %38, i64 %39
  %41 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %6, align 8
  %42 = load i64, i64* @VSOCK_VQ_TX, align 8
  %43 = getelementptr inbounds %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %41, i64 %42
  store %struct.vhost_virtqueue* %40, %struct.vhost_virtqueue** %43, align 8
  %44 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %45 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %44, i32 0, i32 3
  %46 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %45, align 8
  %47 = load i64, i64* @VSOCK_VQ_RX, align 8
  %48 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %46, i64 %47
  %49 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %6, align 8
  %50 = load i64, i64* @VSOCK_VQ_RX, align 8
  %51 = getelementptr inbounds %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %49, i64 %50
  store %struct.vhost_virtqueue* %48, %struct.vhost_virtqueue** %51, align 8
  %52 = load i32, i32* @vhost_vsock_handle_tx_kick, align 4
  %53 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %54 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %53, i32 0, i32 3
  %55 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %54, align 8
  %56 = load i64, i64* @VSOCK_VQ_TX, align 8
  %57 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %55, i64 %56
  %58 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %57, i32 0, i32 0
  store i32 %52, i32* %58, align 4
  %59 = load i32, i32* @vhost_vsock_handle_rx_kick, align 4
  %60 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %61 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %60, i32 0, i32 3
  %62 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %61, align 8
  %63 = load i64, i64* @VSOCK_VQ_RX, align 8
  %64 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %62, i64 %63
  %65 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %64, i32 0, i32 0
  store i32 %59, i32* %65, align 4
  %66 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %67 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %66, i32 0, i32 4
  %68 = load %struct.vhost_virtqueue**, %struct.vhost_virtqueue*** %6, align 8
  %69 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %70 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %69, i32 0, i32 3
  %71 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %70, align 8
  %72 = call i32 @ARRAY_SIZE(%struct.vhost_virtqueue* %71)
  %73 = load i32, i32* @UIO_MAXIOV, align 4
  %74 = load i32, i32* @VHOST_VSOCK_PKT_WEIGHT, align 4
  %75 = load i32, i32* @VHOST_VSOCK_WEIGHT, align 4
  %76 = call i32 @vhost_dev_init(i32* %67, %struct.vhost_virtqueue** %68, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %78 = load %struct.file*, %struct.file** %5, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 0
  store %struct.vhost_vsock* %77, %struct.vhost_vsock** %79, align 8
  %80 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %81 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %80, i32 0, i32 2
  %82 = call i32 @spin_lock_init(i32* %81)
  %83 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %84 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %83, i32 0, i32 1
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %87 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %86, i32 0, i32 0
  %88 = load i32, i32* @vhost_transport_send_pkt_work, align 4
  %89 = call i32 @vhost_work_init(i32* %87, i32 %88)
  store i32 0, i32* %3, align 4
  br label %94

90:                                               ; preds = %27
  %91 = load %struct.vhost_vsock*, %struct.vhost_vsock** %7, align 8
  %92 = call i32 @vhost_vsock_free(%struct.vhost_vsock* %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %30, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.vhost_vsock* @kvmalloc(i32, i32) #1

declare dso_local %struct.vhost_virtqueue** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.vhost_virtqueue*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @vhost_dev_init(i32*, %struct.vhost_virtqueue**, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vhost_work_init(i32*, i32) #1

declare dso_local i32 @vhost_vsock_free(%struct.vhost_vsock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
