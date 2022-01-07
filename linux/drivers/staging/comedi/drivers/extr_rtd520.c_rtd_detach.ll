; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_rtd520.c_rtd_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i64, %struct.rtd_private* }
%struct.rtd_private = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @rtd_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtd_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.rtd_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 2
  %6 = load %struct.rtd_private*, %struct.rtd_private** %5, align 8
  store %struct.rtd_private* %6, %struct.rtd_private** %3, align 8
  %7 = load %struct.rtd_private*, %struct.rtd_private** %3, align 8
  %8 = icmp ne %struct.rtd_private* %7, null
  br i1 %8, label %9, label %64

9:                                                ; preds = %1
  %10 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.rtd_private*, %struct.rtd_private** %3, align 8
  %16 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %21 = call i32 @rtd_reset(%struct.comedi_device* %20)
  br label %22

22:                                               ; preds = %19, %14, %9
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %32 = call i32 @free_irq(i64 %30, %struct.comedi_device* %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @iounmap(i64 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.rtd_private*, %struct.rtd_private** %3, align 8
  %45 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.rtd_private*, %struct.rtd_private** %3, align 8
  %50 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @iounmap(i64 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.rtd_private*, %struct.rtd_private** %3, align 8
  %55 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.rtd_private*, %struct.rtd_private** %3, align 8
  %60 = getelementptr inbounds %struct.rtd_private, %struct.rtd_private* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @iounmap(i64 %61)
  br label %63

63:                                               ; preds = %58, %53
  br label %64

64:                                               ; preds = %63, %1
  %65 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %66 = call i32 @comedi_pci_disable(%struct.comedi_device* %65)
  ret void
}

declare dso_local i32 @rtd_reset(%struct.comedi_device*) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @comedi_pci_disable(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
