; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_func_eps_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_func_eps_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_function = type { %struct.TYPE_2__*, %struct.ffs_ep* }
%struct.TYPE_2__ = type { i32, i32, %struct.ffs_epfile* }
%struct.ffs_epfile = type { i32* }
%struct.ffs_ep = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffs_function*)* @ffs_func_eps_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_func_eps_disable(%struct.ffs_function* %0) #0 {
  %2 = alloca %struct.ffs_function*, align 8
  %3 = alloca %struct.ffs_ep*, align 8
  %4 = alloca %struct.ffs_epfile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ffs_function* %0, %struct.ffs_function** %2, align 8
  %7 = load %struct.ffs_function*, %struct.ffs_function** %2, align 8
  %8 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %7, i32 0, i32 1
  %9 = load %struct.ffs_ep*, %struct.ffs_ep** %8, align 8
  store %struct.ffs_ep* %9, %struct.ffs_ep** %3, align 8
  %10 = load %struct.ffs_function*, %struct.ffs_function** %2, align 8
  %11 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load %struct.ffs_epfile*, %struct.ffs_epfile** %13, align 8
  store %struct.ffs_epfile* %14, %struct.ffs_epfile** %4, align 8
  %15 = load %struct.ffs_function*, %struct.ffs_function** %2, align 8
  %16 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ffs_function*, %struct.ffs_function** %2, align 8
  %21 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  br label %26

26:                                               ; preds = %53, %1
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, -1
  store i32 %28, i32* %5, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load %struct.ffs_ep*, %struct.ffs_ep** %3, align 8
  %32 = getelementptr inbounds %struct.ffs_ep, %struct.ffs_ep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.ffs_ep*, %struct.ffs_ep** %3, align 8
  %38 = getelementptr inbounds %struct.ffs_ep, %struct.ffs_ep* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @usb_ep_disable(i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.ffs_ep*, %struct.ffs_ep** %3, align 8
  %43 = getelementptr inbounds %struct.ffs_ep, %struct.ffs_ep* %42, i32 1
  store %struct.ffs_ep* %43, %struct.ffs_ep** %3, align 8
  %44 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %45 = icmp ne %struct.ffs_epfile* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %48 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %50 = call i32 @__ffs_epfile_read_buffer_free(%struct.ffs_epfile* %49)
  %51 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %52 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %51, i32 1
  store %struct.ffs_epfile* %52, %struct.ffs_epfile** %4, align 8
  br label %53

53:                                               ; preds = %46, %41
  br label %26

54:                                               ; preds = %26
  %55 = load %struct.ffs_function*, %struct.ffs_function** %2, align 8
  %56 = getelementptr inbounds %struct.ffs_function, %struct.ffs_function* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @usb_ep_disable(i32) #1

declare dso_local i32 @__ffs_epfile_read_buffer_free(%struct.ffs_epfile*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
