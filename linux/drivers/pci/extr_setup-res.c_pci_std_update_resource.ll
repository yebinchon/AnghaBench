; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_setup-res.c_pci_std_update_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_setup-res.c_pci_std_update_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i64, %struct.resource* }
%struct.resource = type { i32 }
%struct.pci_bus_region = type { i32 }

@IORESOURCE_UNSET = common dso_local global i32 0, align 4
@IORESOURCE_PCI_FIXED = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_IO_MASK = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS_MASK = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@IORESOURCE_ROM_ENABLE = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS_ENABLE = common dso_local global i32 0, align 4
@IORESOURCE_MEM_64 = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BAR %d: error updating (%#08x != %#08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"BAR %d: error updating (high %#08x != %#08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @pci_std_update_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_std_update_resource(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus_region, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 4
  %15 = load %struct.resource*, %struct.resource** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %15, i64 %17
  store %struct.resource* %18, %struct.resource** %12, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %205

24:                                               ; preds = %2
  %25 = load %struct.resource*, %struct.resource** %12, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %205

30:                                               ; preds = %24
  %31 = load %struct.resource*, %struct.resource** %12, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IORESOURCE_UNSET, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %205

38:                                               ; preds = %30
  %39 = load %struct.resource*, %struct.resource** %12, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IORESOURCE_PCI_FIXED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %205

46:                                               ; preds = %38
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.resource*, %struct.resource** %12, align 8
  %51 = call i32 @pcibios_resource_to_bus(i32 %49, %struct.pci_bus_region* %5, %struct.resource* %50)
  %52 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  %54 = load %struct.resource*, %struct.resource** %12, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IORESOURCE_IO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %46
  %61 = load i32, i32* @PCI_BASE_ADDRESS_IO_MASK, align 4
  store i32 %61, i32* %10, align 4
  %62 = load %struct.resource*, %struct.resource** %12, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PCI_BASE_ADDRESS_IO_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %87

70:                                               ; preds = %46
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @PCI_ROM_ADDRESS_MASK, align 4
  store i32 %75, i32* %10, align 4
  br label %86

76:                                               ; preds = %70
  %77 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  store i32 %77, i32* %10, align 4
  %78 = load %struct.resource*, %struct.resource** %12, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %76, %74
  br label %87

87:                                               ; preds = %86, %60
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %93 = load i32, i32* %4, align 4
  %94 = mul nsw i32 4, %93
  %95 = add nsw i32 %92, %94
  store i32 %95, i32* %11, align 4
  br label %117

96:                                               ; preds = %87
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load %struct.resource*, %struct.resource** %12, align 8
  %102 = getelementptr inbounds %struct.resource, %struct.resource* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IORESOURCE_ROM_ENABLE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  br label %205

108:                                              ; preds = %100
  %109 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* @PCI_ROM_ADDRESS_ENABLE, align 4
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %116

115:                                              ; preds = %96
  br label %205

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %91
  %118 = load %struct.resource*, %struct.resource** %12, align 8
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br label %130

130:                                              ; preds = %124, %117
  %131 = phi i1 [ false, %117 ], [ %129, %124 ]
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %137 = load i32, i32* @PCI_COMMAND, align 4
  %138 = call i32 @pci_read_config_word(%struct.pci_dev* %136, i32 %137, i32* %7)
  %139 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %140 = load i32, i32* @PCI_COMMAND, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %143 = xor i32 %142, -1
  %144 = and i32 %141, %143
  %145 = call i32 @pci_write_config_word(%struct.pci_dev* %139, i32 %140, i32 %144)
  br label %146

146:                                              ; preds = %135, %130
  %147 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @pci_write_config_dword(%struct.pci_dev* %147, i32 %148, i32 %149)
  %151 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @pci_read_config_dword(%struct.pci_dev* %151, i32 %152, i32* %9)
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = xor i32 %154, %155
  %157 = load i32, i32* %10, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %146
  %161 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @pci_err(%struct.pci_dev* %161, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %160, %146
  %167 = load %struct.resource*, %struct.resource** %12, align 8
  %168 = getelementptr inbounds %struct.resource, %struct.resource* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %197

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 16
  %177 = ashr i32 %176, 16
  store i32 %177, i32* %8, align 4
  %178 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @pci_write_config_dword(%struct.pci_dev* %178, i32 %180, i32 %181)
  %183 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 4
  %186 = call i32 @pci_read_config_dword(%struct.pci_dev* %183, i32 %185, i32* %9)
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %173
  %191 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @pci_err(%struct.pci_dev* %191, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %190, %173
  br label %197

197:                                              ; preds = %196, %166
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %202 = load i32, i32* @PCI_COMMAND, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @pci_write_config_word(%struct.pci_dev* %201, i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %23, %29, %37, %45, %107, %115, %200, %197
  ret void
}

declare dso_local i32 @pcibios_resource_to_bus(i32, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
