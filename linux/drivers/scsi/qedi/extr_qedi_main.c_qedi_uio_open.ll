; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_uio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_uio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_info = type { %struct.qedi_uio_dev* }
%struct.qedi_uio_dev = type { i32, %struct.qedi_ctx* }
%struct.qedi_ctx = type { i32 }
%struct.inode = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@UIO_DEV_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio_info*, %struct.inode*)* @qedi_uio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_uio_open(%struct.uio_info* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uio_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qedi_uio_dev*, align 8
  %7 = alloca %struct.qedi_ctx*, align 8
  store %struct.uio_info* %0, %struct.uio_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %8 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %9 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %8, i32 0, i32 0
  %10 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %9, align 8
  store %struct.qedi_uio_dev* %10, %struct.qedi_uio_dev** %6, align 8
  %11 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %6, align 8
  %12 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %11, i32 0, i32 1
  %13 = load %struct.qedi_ctx*, %struct.qedi_ctx** %12, align 8
  store %struct.qedi_ctx* %13, %struct.qedi_ctx** %7, align 8
  %14 = load i32, i32* @CAP_NET_ADMIN, align 4
  %15 = call i32 @capable(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %6, align 8
  %22 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %20
  %29 = call i32 (...) @rtnl_lock()
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i32 @iminor(%struct.inode* %30)
  %32 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %6, align 8
  %33 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %6, align 8
  %35 = call i32 @qedi_reset_uio_rings(%struct.qedi_uio_dev* %34)
  %36 = load i32, i32* @UIO_DEV_OPENED, align 4
  %37 = load %struct.qedi_ctx*, %struct.qedi_ctx** %7, align 8
  %38 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %37, i32 0, i32 0
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  %40 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %28, %25, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @qedi_reset_uio_rings(%struct.qedi_uio_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
