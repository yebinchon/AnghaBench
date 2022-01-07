; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_msi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-iproc.c_iproc_pcie_msi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pcie = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"msi-map\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_pcie*)* @iproc_pcie_msi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pcie_msi_enable(%struct.iproc_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iproc_pcie*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iproc_pcie* %0, %struct.iproc_pcie** %3, align 8
  %9 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.device_node* @of_parse_phandle(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %1
  store i32* null, i32** %6, align 8
  %18 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %19 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @of_get_property(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %62

29:                                               ; preds = %17
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = call i32 @be32_to_cpup(i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.device_node* @of_find_node_by_phandle(i32 %33)
  store %struct.device_node* %34, %struct.device_node** %4, align 8
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  %36 = icmp ne %struct.device_node* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %62

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %43 = getelementptr inbounds %struct.iproc_pcie, %struct.iproc_pcie* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %48 = load %struct.device_node*, %struct.device_node** %4, align 8
  %49 = call i32 @iproc_pcie_msi_steer(%struct.iproc_pcie* %47, %struct.device_node* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %58

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %41
  %55 = load %struct.iproc_pcie*, %struct.iproc_pcie** %3, align 8
  %56 = load %struct.device_node*, %struct.device_node** %4, align 8
  %57 = call i32 @iproc_msi_init(%struct.iproc_pcie* %55, %struct.device_node* %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %52
  %59 = load %struct.device_node*, %struct.device_node** %4, align 8
  %60 = call i32 @of_node_put(%struct.device_node* %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %37, %26
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @iproc_pcie_msi_steer(%struct.iproc_pcie*, %struct.device_node*) #1

declare dso_local i32 @iproc_msi_init(%struct.iproc_pcie*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
