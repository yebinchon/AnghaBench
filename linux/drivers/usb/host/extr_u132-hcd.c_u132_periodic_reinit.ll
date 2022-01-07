; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_periodic_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_periodic_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u132 = type { i32 }

@FIT = common dso_local global i32 0, align 4
@periodicstart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*)* @u132_periodic_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_periodic_reinit(%struct.u132* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.u132*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.u132* %0, %struct.u132** %3, align 8
  %8 = load %struct.u132*, %struct.u132** %3, align 8
  %9 = getelementptr inbounds %struct.u132, %struct.u132* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 16383
  store i32 %11, i32* %5, align 4
  %12 = load %struct.u132*, %struct.u132** %3, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @u132_read_pcimem(%struct.u132* %12, i32 %13, i32* %7)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @FIT, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.u132*, %struct.u132** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @FIT, align 4
  %27 = xor i32 %25, %26
  %28 = load %struct.u132*, %struct.u132** %3, align 8
  %29 = getelementptr inbounds %struct.u132, %struct.u132* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  %32 = call i32 @u132_write_pcimem(%struct.u132* %23, i32 %24, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %45

37:                                               ; preds = %19
  %38 = load %struct.u132*, %struct.u132** %3, align 8
  %39 = load i32, i32* @periodicstart, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 9, %40
  %42 = sdiv i32 %41, 10
  %43 = and i32 %42, 16383
  %44 = call i32 @u132_write_pcimem(%struct.u132* %38, i32 %39, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %37, %35, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @u132_read_pcimem(%struct.u132*, i32, i32*) #1

declare dso_local i32 @u132_write_pcimem(%struct.u132*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
