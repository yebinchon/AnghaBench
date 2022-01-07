; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-res.c_pci_enable_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-res.c_pci_enable_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i32, i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_NUM_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@IORESOURCE_ROM_ENABLE = common dso_local global i32 0, align 4
@IORESOURCE_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"can't enable device: BAR %d %pR not assigned\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"can't enable device: BAR %d %pR not claimed\0A\00", align 1
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"enabling device (%04x -> %04x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_enable_resources(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = load i32, i32* @PCI_COMMAND, align 4
  %12 = call i32 @pci_read_config_word(%struct.pci_dev* %10, i32 %11, i32* %6)
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %102, %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PCI_NUM_RESOURCES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %105

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %102

25:                                               ; preds = %18
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %28, i64 %30
  store %struct.resource* %31, %struct.resource** %9, align 8
  %32 = load %struct.resource*, %struct.resource** %9, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IORESOURCE_IO, align 4
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %25
  br label %102

41:                                               ; preds = %25
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.resource*, %struct.resource** %9, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IORESOURCE_ROM_ENABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %102

53:                                               ; preds = %45, %41
  %54 = load %struct.resource*, %struct.resource** %9, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IORESOURCE_UNSET, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.resource*, %struct.resource** %9, align 8
  %64 = call i32 @pci_err(%struct.pci_dev* %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %62, %struct.resource* %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %119

67:                                               ; preds = %53
  %68 = load %struct.resource*, %struct.resource** %9, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.resource*, %struct.resource** %9, align 8
  %76 = call i32 @pci_err(%struct.pci_dev* %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %74, %struct.resource* %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %119

79:                                               ; preds = %67
  %80 = load %struct.resource*, %struct.resource** %9, align 8
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IORESOURCE_IO, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @PCI_COMMAND_IO, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.resource*, %struct.resource** %9, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IORESOURCE_MEM, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %90
  br label %102

102:                                              ; preds = %101, %52, %40, %24
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %14

105:                                              ; preds = %14
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @pci_info(%struct.pci_dev* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = load i32, i32* @PCI_COMMAND, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @pci_write_config_word(%struct.pci_dev* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %105
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %72, %60
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32, %struct.resource*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
