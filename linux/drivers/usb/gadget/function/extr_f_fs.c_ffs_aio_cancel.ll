; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_aio_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_aio_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_3__*, %struct.ffs_io_data* }
%struct.TYPE_3__ = type { %struct.ffs_epfile* }
%struct.ffs_epfile = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ffs_io_data = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*)* @ffs_aio_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_aio_cancel(%struct.kiocb* %0) #0 {
  %2 = alloca %struct.kiocb*, align 8
  %3 = alloca %struct.ffs_io_data*, align 8
  %4 = alloca %struct.ffs_epfile*, align 8
  %5 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %2, align 8
  %6 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %7 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %6, i32 0, i32 1
  %8 = load %struct.ffs_io_data*, %struct.ffs_io_data** %7, align 8
  store %struct.ffs_io_data* %8, %struct.ffs_io_data** %3, align 8
  %9 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ffs_epfile*, %struct.ffs_epfile** %12, align 8
  store %struct.ffs_epfile* %13, %struct.ffs_epfile** %4, align 8
  %14 = call i32 (...) @ENTER()
  %15 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %16 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.ffs_io_data*, %struct.ffs_io_data** %3, align 8
  %21 = icmp ne %struct.ffs_io_data* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.ffs_io_data*, %struct.ffs_io_data** %3, align 8
  %24 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.ffs_io_data*, %struct.ffs_io_data** %3, align 8
  %29 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %22, %1
  %33 = phi i1 [ false, %22 ], [ false, %1 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.ffs_io_data*, %struct.ffs_io_data** %3, align 8
  %39 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ffs_io_data*, %struct.ffs_io_data** %3, align 8
  %42 = getelementptr inbounds %struct.ffs_io_data, %struct.ffs_io_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @usb_ep_dequeue(i64 %40, i64 %43)
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %37
  %49 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %50 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @usb_ep_dequeue(i64, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
