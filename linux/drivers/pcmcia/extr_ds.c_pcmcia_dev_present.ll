; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_dev_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_dev_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcmcia_device* @pcmcia_dev_present(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.pcmcia_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  store %struct.pcmcia_device* null, %struct.pcmcia_device** %5, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = call %struct.pcmcia_device* @pcmcia_get_dev(%struct.pcmcia_device* %6)
  store %struct.pcmcia_device* %7, %struct.pcmcia_device** %4, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %9 = icmp ne %struct.pcmcia_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.pcmcia_device* null, %struct.pcmcia_device** %2, align 8
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %13 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  store %struct.pcmcia_device* %19, %struct.pcmcia_device** %5, align 8
  br label %20

20:                                               ; preds = %18, %11
  %21 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %22 = call i32 @pcmcia_put_dev(%struct.pcmcia_device* %21)
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  store %struct.pcmcia_device* %23, %struct.pcmcia_device** %2, align 8
  br label %24

24:                                               ; preds = %20, %10
  %25 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  ret %struct.pcmcia_device* %25
}

declare dso_local %struct.pcmcia_device* @pcmcia_get_dev(%struct.pcmcia_device*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pcmcia_put_dev(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
