; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_murb_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_murb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i64*, %struct.oxu_murb* }
%struct.oxu_murb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*, %struct.oxu_murb*)* @oxu_murb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxu_murb_free(%struct.oxu_hcd* %0, %struct.oxu_murb* %1) #0 {
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca %struct.oxu_murb*, align 8
  %5 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store %struct.oxu_murb* %1, %struct.oxu_murb** %4, align 8
  %6 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.oxu_murb*, %struct.oxu_murb** %4, align 8
  %10 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %10, i32 0, i32 2
  %12 = load %struct.oxu_murb*, %struct.oxu_murb** %11, align 8
  %13 = getelementptr inbounds %struct.oxu_murb, %struct.oxu_murb* %12, i64 0
  %14 = ptrtoint %struct.oxu_murb* %9 to i64
  %15 = ptrtoint %struct.oxu_murb* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 0, i64* %24, align 8
  %25 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
