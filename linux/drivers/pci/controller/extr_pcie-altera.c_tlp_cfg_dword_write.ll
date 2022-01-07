; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_tlp_cfg_dword_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-altera.c_tlp_cfg_dword_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_pcie = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.altera_pcie*, i32*)*, i32 (%struct.altera_pcie*, i64*, i64, i32)* }

@TLP_HDR_SIZE = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@PCI_PRIMARY_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_pcie*, i64, i64, i32, i64, i64)* @tlp_cfg_dword_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlp_cfg_dword_write(%struct.altera_pcie* %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.altera_pcie*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.altera_pcie* %0, %struct.altera_pcie** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* @TLP_HDR_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @get_tlp_header(%struct.altera_pcie* %22, i64 %23, i64 %24, i32 %25, i64 %26, i32 0, i64* %21)
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, 7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %6
  %32 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %33 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32 (%struct.altera_pcie*, i64*, i64, i32)*, i32 (%struct.altera_pcie*, i64*, i64, i32)** %37, align 8
  %39 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 %38(%struct.altera_pcie* %39, i64* %21, i64 %40, i32 1)
  br label %53

42:                                               ; preds = %6
  %43 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %44 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32 (%struct.altera_pcie*, i64*, i64, i32)*, i32 (%struct.altera_pcie*, i64*, i64, i32)** %48, align 8
  %50 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 %49(%struct.altera_pcie* %50, i64* %21, i64 %51, i32 0)
  br label %53

53:                                               ; preds = %42, %31
  %54 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %55 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.altera_pcie*, i32*)*, i32 (%struct.altera_pcie*, i32*)** %59, align 8
  %61 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %62 = call i32 %60(%struct.altera_pcie* %61, i32* null)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %84

68:                                               ; preds = %53
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %71 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @PCI_PRIMARY_BUS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.altera_pcie*, %struct.altera_pcie** %8, align 8
  %81 = getelementptr inbounds %struct.altera_pcie, %struct.altera_pcie* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %74, %68
  %83 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %83, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %84

84:                                               ; preds = %82, %66
  %85 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_tlp_header(%struct.altera_pcie*, i64, i64, i32, i64, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
