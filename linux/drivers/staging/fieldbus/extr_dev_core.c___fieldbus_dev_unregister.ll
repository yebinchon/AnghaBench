; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/extr_dev_core.c___fieldbus_dev_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/extr_dev_core.c___fieldbus_dev_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fieldbus_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@fieldbus_class = common dso_local global i32 0, align 4
@fieldbus_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fieldbus_dev*)* @__fieldbus_dev_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fieldbus_dev_unregister(%struct.fieldbus_dev* %0) #0 {
  %2 = alloca %struct.fieldbus_dev*, align 8
  store %struct.fieldbus_dev* %0, %struct.fieldbus_dev** %2, align 8
  %3 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %2, align 8
  %4 = icmp ne %struct.fieldbus_dev* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %19

6:                                                ; preds = %1
  %7 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %2, align 8
  %8 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_destroy(i32* @fieldbus_class, i32 %10)
  %12 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %2, align 8
  %13 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %12, i32 0, i32 1
  %14 = call i32 @cdev_del(%struct.TYPE_2__* %13)
  %15 = load %struct.fieldbus_dev*, %struct.fieldbus_dev** %2, align 8
  %16 = getelementptr inbounds %struct.fieldbus_dev, %struct.fieldbus_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ida_simple_remove(i32* @fieldbus_ida, i32 %17)
  br label %19

19:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @device_destroy(i32*, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_2__*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
