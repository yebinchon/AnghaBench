; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_do_lock_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_do_lock_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, i8*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64, i8*)* @do_lock_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_lock_ioctl(%struct.comedi_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 2
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %54

22:                                               ; preds = %3
  %23 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 1
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i64 %26
  store %struct.comedi_subdevice* %27, %struct.comedi_subdevice** %10, align 8
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 0
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %22
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %22
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %48

44:                                               ; preds = %36
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 0
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %48, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
