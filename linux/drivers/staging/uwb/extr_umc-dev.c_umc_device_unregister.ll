; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_umc-dev.c_umc_device_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_umc-dev.c_umc_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umc_dev = type { i32, i32 }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @umc_device_unregister(%struct.umc_dev* %0) #0 {
  %2 = alloca %struct.umc_dev*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.umc_dev* %0, %struct.umc_dev** %2, align 8
  %4 = load %struct.umc_dev*, %struct.umc_dev** %2, align 8
  %5 = icmp ne %struct.umc_dev* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %19

7:                                                ; preds = %1
  %8 = load %struct.umc_dev*, %struct.umc_dev** %2, align 8
  %9 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %8, i32 0, i32 1
  %10 = call %struct.device* @get_device(i32* %9)
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.umc_dev*, %struct.umc_dev** %2, align 8
  %12 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %11, i32 0, i32 1
  %13 = call i32 @device_unregister(i32* %12)
  %14 = load %struct.umc_dev*, %struct.umc_dev** %2, align 8
  %15 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %14, i32 0, i32 0
  %16 = call i32 @release_resource(i32* %15)
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call i32 @put_device(%struct.device* %17)
  br label %19

19:                                               ; preds = %7, %6
  ret void
}

declare dso_local %struct.device* @get_device(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @release_resource(i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
