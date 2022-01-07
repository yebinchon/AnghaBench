; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_bus_update_busn_res_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_bus_update_busn_res_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.resource }
%struct.resource = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"busn_res: %pR end %s updated to %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"can not be\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"is\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_bus_update_busn_res_end(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %11 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 1
  store %struct.resource* %11, %struct.resource** %6, align 8
  %12 = load %struct.resource*, %struct.resource** %6, align 8
  %13 = bitcast %struct.resource* %7 to i8*
  %14 = bitcast %struct.resource* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = load %struct.resource*, %struct.resource** %6, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %62

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @adjust_resource(%struct.resource* %30, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %37 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %36, i32 0, i32 0
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dev_info(i32* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.resource* %7, i8* %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %23
  %47 = load %struct.resource*, %struct.resource** %6, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %53 = load %struct.resource*, %struct.resource** %6, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pci_bus_insert_busn_res(%struct.pci_bus* %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %51, %46, %23
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %20
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @adjust_resource(%struct.resource*, i32, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, %struct.resource*, i8*, i32) #2

declare dso_local i32 @pci_bus_insert_busn_res(%struct.pci_bus*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
