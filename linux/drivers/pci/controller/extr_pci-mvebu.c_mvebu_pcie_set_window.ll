; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_set_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-mvebu.c_mvebu_pcie_set_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_pcie_port = type { i32 }
%struct.mvebu_pcie_window = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvebu_pcie_port*, i32, i32, %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window*)* @mvebu_pcie_set_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pcie_set_window(%struct.mvebu_pcie_port* %0, i32 %1, i32 %2, %struct.mvebu_pcie_window* %3, %struct.mvebu_pcie_window* %4) #0 {
  %6 = alloca %struct.mvebu_pcie_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mvebu_pcie_window*, align 8
  %10 = alloca %struct.mvebu_pcie_window*, align 8
  store %struct.mvebu_pcie_port* %0, %struct.mvebu_pcie_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mvebu_pcie_window* %3, %struct.mvebu_pcie_window** %9, align 8
  store %struct.mvebu_pcie_window* %4, %struct.mvebu_pcie_window** %10, align 8
  %11 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %9, align 8
  %12 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %10, align 8
  %15 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %5
  %19 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %9, align 8
  %20 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %10, align 8
  %23 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %9, align 8
  %28 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %10, align 8
  %31 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %77

35:                                               ; preds = %26, %18, %5
  %36 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %10, align 8
  %37 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %6, align 8
  %42 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %10, align 8
  %43 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %10, align 8
  %46 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @mvebu_pcie_del_windows(%struct.mvebu_pcie_port* %41, i64 %44, i64 %47)
  %49 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %10, align 8
  %50 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %10, align 8
  %52 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %40, %35
  %54 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %9, align 8
  %55 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %77

59:                                               ; preds = %53
  %60 = load %struct.mvebu_pcie_port*, %struct.mvebu_pcie_port** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %9, align 8
  %64 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %9, align 8
  %67 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %9, align 8
  %70 = getelementptr inbounds %struct.mvebu_pcie_window, %struct.mvebu_pcie_window* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @mvebu_pcie_add_windows(%struct.mvebu_pcie_port* %60, i32 %61, i32 %62, i64 %65, i64 %68, i64 %71)
  %73 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %10, align 8
  %74 = load %struct.mvebu_pcie_window*, %struct.mvebu_pcie_window** %9, align 8
  %75 = bitcast %struct.mvebu_pcie_window* %73 to i8*
  %76 = bitcast %struct.mvebu_pcie_window* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 24, i1 false)
  br label %77

77:                                               ; preds = %59, %58, %34
  ret void
}

declare dso_local i32 @mvebu_pcie_del_windows(%struct.mvebu_pcie_port*, i64, i64) #1

declare dso_local i32 @mvebu_pcie_add_windows(%struct.mvebu_pcie_port*, i32, i32, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
