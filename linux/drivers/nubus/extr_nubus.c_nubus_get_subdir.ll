; ModuleID = '/home/carl/AnghaBench/linux/drivers/nubus/extr_nubus.c_nubus_get_subdir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nubus/extr_nubus.c_nubus_get_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_dirent = type { i32 }
%struct.nubus_dir = type { i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nubus_get_subdir(%struct.nubus_dirent* %0, %struct.nubus_dir* %1) #0 {
  %3 = alloca %struct.nubus_dirent*, align 8
  %4 = alloca %struct.nubus_dir*, align 8
  store %struct.nubus_dirent* %0, %struct.nubus_dirent** %3, align 8
  store %struct.nubus_dir* %1, %struct.nubus_dir** %4, align 8
  %5 = load %struct.nubus_dirent*, %struct.nubus_dirent** %3, align 8
  %6 = call i32 @nubus_dirptr(%struct.nubus_dirent* %5)
  %7 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %8 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 8
  %9 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %10 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %9, i32 0, i32 3
  store i32 %6, i32* %10, align 4
  %11 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %12 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.nubus_dirent*, %struct.nubus_dirent** %3, align 8
  %14 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nubus_dir*, %struct.nubus_dir** %4, align 8
  %17 = getelementptr inbounds %struct.nubus_dir, %struct.nubus_dir* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  ret i32 0
}

declare dso_local i32 @nubus_dirptr(%struct.nubus_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
