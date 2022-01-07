; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_poll_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_poll_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jr3_pci_dev_private = type { %struct.TYPE_2__, %struct.comedi_device* }
%struct.TYPE_2__ = type { i8* }
%struct.comedi_device = type { i32, i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.jr3_pci_subdev_private* }
%struct.jr3_pci_subdev_private = type { i8* }
%struct.timer_list = type { i32 }
%struct.jr3_pci_poll_delay = type { i32, i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.jr3_pci_dev_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @jr3_pci_poll_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jr3_pci_poll_dev(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.jr3_pci_dev_private*, align 8
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.jr3_pci_subdev_private*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.jr3_pci_poll_delay, align 4
  %12 = alloca %struct.jr3_pci_poll_delay, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %13 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %3, align 8
  %14 = ptrtoint %struct.jr3_pci_dev_private* %13 to i32
  %15 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %16 = load i32, i32* @timer, align 4
  %17 = call %struct.jr3_pci_dev_private* @from_timer(i32 %14, %struct.timer_list* %15, i32 %16)
  store %struct.jr3_pci_dev_private* %17, %struct.jr3_pci_dev_private** %3, align 8
  %18 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %3, align 8
  %19 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %18, i32 0, i32 1
  %20 = load %struct.comedi_device*, %struct.comedi_device** %19, align 8
  store %struct.comedi_device* %20, %struct.comedi_device** %4, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 1
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  store i32 1000, i32* %9, align 4
  %25 = load i64, i64* @jiffies, align 8
  store i64 %25, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %74, %1
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %26
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 2
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i64 %37
  store %struct.comedi_subdevice* %38, %struct.comedi_subdevice** %6, align 8
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 0
  %41 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %40, align 8
  store %struct.jr3_pci_subdev_private* %41, %struct.jr3_pci_subdev_private** %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %5, align 8
  %44 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @time_after_eq(i64 %42, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %32
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %50 = call i64 @jr3_pci_poll_subdevice(%struct.comedi_subdevice* %49)
  %51 = bitcast %struct.jr3_pci_poll_delay* %12 to i64*
  store i64 %50, i64* %51, align 4
  %52 = bitcast %struct.jr3_pci_poll_delay* %11 to i8*
  %53 = bitcast %struct.jr3_pci_poll_delay* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 8, i1 false)
  %54 = load i64, i64* @jiffies, align 8
  %55 = getelementptr inbounds %struct.jr3_pci_poll_delay, %struct.jr3_pci_poll_delay* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @msecs_to_jiffies(i32 %56)
  %58 = getelementptr i8, i8* %57, i64 %54
  %59 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %5, align 8
  %60 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = getelementptr inbounds %struct.jr3_pci_poll_delay, %struct.jr3_pci_poll_delay* %11, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %48
  %65 = getelementptr inbounds %struct.jr3_pci_poll_delay, %struct.jr3_pci_poll_delay* %11, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.jr3_pci_poll_delay, %struct.jr3_pci_poll_delay* %11, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %64, %48
  br label %73

73:                                               ; preds = %72, %32
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %26

77:                                               ; preds = %26
  %78 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %79 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %78, i32 0, i32 1
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i64, i64* @jiffies, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i8* @msecs_to_jiffies(i32 %83)
  %85 = getelementptr i8, i8* %84, i64 %82
  %86 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %3, align 8
  %87 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  %89 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %3, align 8
  %90 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %89, i32 0, i32 0
  %91 = call i32 @add_timer(%struct.TYPE_2__* %90)
  ret void
}

declare dso_local %struct.jr3_pci_dev_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @time_after_eq(i64, i8*) #1

declare dso_local i64 @jr3_pci_poll_subdevice(%struct.comedi_subdevice*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
