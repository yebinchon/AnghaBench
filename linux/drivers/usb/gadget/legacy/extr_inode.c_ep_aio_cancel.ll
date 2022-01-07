; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_aio_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_aio_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.kiocb_priv* }
%struct.kiocb_priv = type { i64, %struct.ep_data* }
%struct.ep_data = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*)* @ep_aio_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_aio_cancel(%struct.kiocb* %0) #0 {
  %2 = alloca %struct.kiocb*, align 8
  %3 = alloca %struct.kiocb_priv*, align 8
  %4 = alloca %struct.ep_data*, align 8
  %5 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %2, align 8
  %6 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %7 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %6, i32 0, i32 0
  %8 = load %struct.kiocb_priv*, %struct.kiocb_priv** %7, align 8
  store %struct.kiocb_priv* %8, %struct.kiocb_priv** %3, align 8
  %9 = call i32 (...) @local_irq_disable()
  %10 = load %struct.kiocb_priv*, %struct.kiocb_priv** %3, align 8
  %11 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %10, i32 0, i32 1
  %12 = load %struct.ep_data*, %struct.ep_data** %11, align 8
  store %struct.ep_data* %12, %struct.ep_data** %4, align 8
  %13 = load %struct.ep_data*, %struct.ep_data** %4, align 8
  %14 = icmp ne %struct.ep_data* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.ep_data*, %struct.ep_data** %4, align 8
  %17 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.kiocb_priv*, %struct.kiocb_priv** %3, align 8
  %22 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %15, %1
  %26 = phi i1 [ false, %15 ], [ false, %1 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.ep_data*, %struct.ep_data** %4, align 8
  %32 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.kiocb_priv*, %struct.kiocb_priv** %3, align 8
  %35 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @usb_ep_dequeue(i64 %33, i64 %36)
  store i32 %37, i32* %5, align 4
  br label %41

38:                                               ; preds = %25
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = call i32 (...) @local_irq_enable()
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @usb_ep_dequeue(i64, i64) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
