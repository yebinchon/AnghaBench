; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_usbatm.c_usbatm_do_heavy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_usbatm.c_usbatm_do_heavy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbatm_data = type { i32, i32, i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.usbatm_data*, i32)* }

@SIGTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @usbatm_do_heavy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbatm_do_heavy_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.usbatm_data*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.usbatm_data*
  store %struct.usbatm_data* %7, %struct.usbatm_data** %4, align 8
  %8 = load i32, i32* @SIGTERM, align 4
  %9 = call i32 @allow_signal(i32 %8)
  %10 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %11 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %10, i32 0, i32 5
  %12 = call i32 @complete(i32* %11)
  %13 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %14 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.usbatm_data*, i32)*, i32 (%struct.usbatm_data*, i32)** %16, align 8
  %18 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %19 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %20 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %17(%struct.usbatm_data* %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %27 = call i32 @usbatm_atm_init(%struct.usbatm_data* %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %30 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %33 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %35 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %38 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @complete_and_exit(i32* %38, i32 %39)
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @allow_signal(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @usbatm_atm_init(%struct.usbatm_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @complete_and_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
