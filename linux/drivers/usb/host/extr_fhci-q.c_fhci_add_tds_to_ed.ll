; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-q.c_fhci_add_tds_to_ed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-q.c_fhci_add_tds_to_ed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ed = type { %struct.td*, i32 }
%struct.td = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fhci_add_tds_to_ed(%struct.ed* %0, %struct.td** %1, i32 %2) #0 {
  %4 = alloca %struct.ed*, align 8
  %5 = alloca %struct.td**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.td*, align 8
  store %struct.ed* %0, %struct.ed** %4, align 8
  store %struct.td** %1, %struct.td*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %24, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.td**, %struct.td*** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.td*, %struct.td** %14, i64 %16
  %18 = load %struct.td*, %struct.td** %17, align 8
  store %struct.td* %18, %struct.td** %8, align 8
  %19 = load %struct.td*, %struct.td** %8, align 8
  %20 = getelementptr inbounds %struct.td, %struct.td* %19, i32 0, i32 0
  %21 = load %struct.ed*, %struct.ed** %4, align 8
  %22 = getelementptr inbounds %struct.ed, %struct.ed* %21, i32 0, i32 1
  %23 = call i32 @list_add_tail(i32* %20, i32* %22)
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.ed*, %struct.ed** %4, align 8
  %29 = getelementptr inbounds %struct.ed, %struct.ed* %28, i32 0, i32 0
  %30 = load %struct.td*, %struct.td** %29, align 8
  %31 = icmp eq %struct.td* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.td**, %struct.td*** %5, align 8
  %34 = getelementptr inbounds %struct.td*, %struct.td** %33, i64 0
  %35 = load %struct.td*, %struct.td** %34, align 8
  %36 = load %struct.ed*, %struct.ed** %4, align 8
  %37 = getelementptr inbounds %struct.ed, %struct.ed* %36, i32 0, i32 0
  store %struct.td* %35, %struct.td** %37, align 8
  br label %38

38:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
