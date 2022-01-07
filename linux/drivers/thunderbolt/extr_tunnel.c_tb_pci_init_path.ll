; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_pci_init_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_tunnel.c_tb_pci_init_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_path = type { i32, i32, i32, %struct.TYPE_2__*, i64, i64, i8*, i32, i8* }
%struct.TYPE_2__ = type { i32 }

@TB_PATH_SOURCE = common dso_local global i32 0, align 4
@TB_PATH_INTERNAL = common dso_local global i32 0, align 4
@TB_PATH_NONE = common dso_local global i8* null, align 8
@TB_PATH_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_path*)* @tb_pci_init_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tb_pci_init_path(%struct.tb_path* %0) #0 {
  %2 = alloca %struct.tb_path*, align 8
  store %struct.tb_path* %0, %struct.tb_path** %2, align 8
  %3 = load i32, i32* @TB_PATH_SOURCE, align 4
  %4 = load i32, i32* @TB_PATH_INTERNAL, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %7 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load i8*, i8** @TB_PATH_NONE, align 8
  %9 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %10 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %9, i32 0, i32 8
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @TB_PATH_ALL, align 4
  %12 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %13 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** @TB_PATH_NONE, align 8
  %15 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %16 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %18 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %17, i32 0, i32 1
  store i32 3, i32* %18, align 4
  %19 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %20 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %19, i32 0, i32 2
  store i32 1, i32* %20, align 8
  %21 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %22 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %24 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %26 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 7, i32* %29, align 4
  %30 = load %struct.tb_path*, %struct.tb_path** %2, align 8
  %31 = getelementptr inbounds %struct.tb_path, %struct.tb_path* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 16, i32* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
