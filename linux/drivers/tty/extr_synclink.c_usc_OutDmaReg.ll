; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_OutDmaReg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_OutDmaReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i64, i32, i64 }

@MGSL_BUS_TYPE_PCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*, i64, i64)* @usc_OutDmaReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_OutDmaReg(%struct.mgsl_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mgsl_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.mgsl_struct*, %struct.mgsl_struct** %4, align 8
  %9 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  %12 = load %struct.mgsl_struct*, %struct.mgsl_struct** %4, align 8
  %13 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @outw(i64 %11, i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.mgsl_struct*, %struct.mgsl_struct** %4, align 8
  %18 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @outw(i64 %16, i32 %19)
  %21 = load %struct.mgsl_struct*, %struct.mgsl_struct** %4, align 8
  %22 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MGSL_BUS_TYPE_PCI, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.mgsl_struct*, %struct.mgsl_struct** %4, align 8
  %28 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @inw(i32 %29)
  br label %31

31:                                               ; preds = %26, %3
  ret void
}

declare dso_local i32 @outw(i64, i32) #1

declare dso_local i32 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
