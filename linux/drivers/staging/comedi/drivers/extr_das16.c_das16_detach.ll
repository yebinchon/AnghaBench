; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.das16_private_struct*, %struct.das16_board* }
%struct.das16_private_struct = type { i64 }
%struct.das16_board = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @das16_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das16_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.das16_board*, align 8
  %4 = alloca %struct.das16_private_struct*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %5, i32 0, i32 2
  %7 = load %struct.das16_board*, %struct.das16_board** %6, align 8
  store %struct.das16_board* %7, %struct.das16_board** %3, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.das16_private_struct*, %struct.das16_private_struct** %9, align 8
  store %struct.das16_private_struct* %10, %struct.das16_private_struct** %4, align 8
  %11 = load %struct.das16_private_struct*, %struct.das16_private_struct** %4, align 8
  %12 = icmp ne %struct.das16_private_struct* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = call i32 @das16_reset(%struct.comedi_device* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %23 = call i32 @das16_free_dma(%struct.comedi_device* %22)
  %24 = load %struct.das16_private_struct*, %struct.das16_private_struct** %4, align 8
  %25 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.das16_private_struct*, %struct.das16_private_struct** %4, align 8
  %30 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.das16_board*, %struct.das16_board** %3, align 8
  %33 = getelementptr inbounds %struct.das16_board, %struct.das16_board* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 1023
  %36 = call i32 @release_region(i64 %31, i32 %35)
  br label %37

37:                                               ; preds = %28, %21
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %40 = call i32 @comedi_legacy_detach(%struct.comedi_device* %39)
  ret void
}

declare dso_local i32 @das16_reset(%struct.comedi_device*) #1

declare dso_local i32 @das16_free_dma(%struct.comedi_device*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @comedi_legacy_detach(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
