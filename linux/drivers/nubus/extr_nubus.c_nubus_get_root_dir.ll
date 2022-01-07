; ModuleID = '/home/carl/AnghaBench/linux/drivers/nubus/extr_nubus.c_nubus_get_root_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nubus/extr_nubus.c_nubus_get_root_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_board = type { i32, i32 }
%struct.nubus_dir = type { i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nubus_get_root_dir(%struct.nubus_board* %0, %struct.nubus_dir* %1) #0 {
  %3 = alloca %struct.nubus_board*, align 8
  %4 = alloca %struct.nubus_dir*, align 8
  store %struct.nubus_board* %0, %struct.nubus_board** %3, align 8
  store %struct.nubus_dir* %1, %struct.nubus_dir** %4, align 8
  %5 = load %struct.nubus_board*, %struct.nubus_board** %3, align 8
  %6 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %9 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %11 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %10, i32 0, i32 3
  store i32 %7, i32* %11, align 4
  %12 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %13 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.nubus_board*, %struct.nubus_board** %3, align 8
  %15 = getelementptr inbounds %struct.nubus_board, %struct.nubus_board* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %18 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
