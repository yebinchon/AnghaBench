; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_allocate_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_allocate_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, i32, %struct.TYPE_2__*, %struct.resource* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32, i32, i32, i32, i64 }
%struct.pci_bus_region = type { i32, i32 }

@PCI_BRIDGE_RESOURCES = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@override_bios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Preassigned resource %d busy or not available, reconfiguring...\0A\00", align 1
@BRIDGE_IO_MAX = common dso_local global i32 0, align 4
@BRIDGE_IO_ACC = common dso_local global i32 0, align 4
@BRIDGE_IO_MIN = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@BRIDGE_MEM_MAX = common dso_local global i32 0, align 4
@BRIDGE_MEM_ACC = common dso_local global i32 0, align 4
@BRIDGE_MEM_MIN = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"no resource of type %x available, trying to continue...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.yenta_socket*, i32, i32, i32, i32)* @yenta_allocate_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yenta_allocate_res(%struct.yenta_socket* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.yenta_socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.resource*, align 8
  %14 = alloca %struct.pci_bus_region, align 4
  %15 = alloca i32, align 4
  store %struct.yenta_socket* %0, %struct.yenta_socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %17 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %12, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 3
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  %22 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %21, i64 %23
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %24, i64 %26
  store %struct.resource* %27, %struct.resource** %13, align 8
  %28 = load %struct.resource*, %struct.resource** %13, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %177

33:                                               ; preds = %5
  store i32 -4096, i32* %15, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @IORESOURCE_IO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -4, i32* %15, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.resource*, %struct.resource** %13, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.resource*, %struct.resource** %13, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @config_readl(%struct.yenta_socket* %50, i32 %51)
  %53 = load i32, i32* %15, align 4
  %54 = and i32 %52, %53
  %55 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %14, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @config_readl(%struct.yenta_socket* %56, i32 %57)
  %59 = load i32, i32* %15, align 4
  %60 = xor i32 %59, -1
  %61 = or i32 %58, %60
  %62 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %14, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %14, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %39
  %67 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %14, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %14, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ugt i32 %68, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %66
  %73 = load i32, i32* @override_bios, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %72
  %76 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.resource*, %struct.resource** %13, align 8
  %80 = call i32 @pcibios_bus_to_resource(i32 %78, %struct.resource* %79, %struct.pci_bus_region* %14)
  %81 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %82 = load i32, i32* @PCI_BRIDGE_RESOURCES, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i64 @pci_claim_resource(%struct.pci_dev* %81, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %177

88:                                               ; preds = %75
  %89 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @dev_info(i32* %90, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %72, %66, %39
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @IORESOURCE_IO, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %93
  %99 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %100 = load %struct.resource*, %struct.resource** %13, align 8
  %101 = load i32, i32* @BRIDGE_IO_MAX, align 4
  %102 = call i64 @yenta_search_res(%struct.yenta_socket* %99, %struct.resource* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %98
  %105 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %106 = load %struct.resource*, %struct.resource** %13, align 8
  %107 = load i32, i32* @BRIDGE_IO_ACC, align 4
  %108 = call i64 @yenta_search_res(%struct.yenta_socket* %105, %struct.resource* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %112 = load %struct.resource*, %struct.resource** %13, align 8
  %113 = load i32, i32* @BRIDGE_IO_MIN, align 4
  %114 = call i64 @yenta_search_res(%struct.yenta_socket* %111, %struct.resource* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110, %104, %98
  store i32 1, i32* %6, align 4
  br label %177

117:                                              ; preds = %110
  br label %166

118:                                              ; preds = %93
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %146

123:                                              ; preds = %118
  %124 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %125 = load %struct.resource*, %struct.resource** %13, align 8
  %126 = load i32, i32* @BRIDGE_MEM_MAX, align 4
  %127 = call i64 @yenta_search_res(%struct.yenta_socket* %124, %struct.resource* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %123
  %130 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %131 = load %struct.resource*, %struct.resource** %13, align 8
  %132 = load i32, i32* @BRIDGE_MEM_ACC, align 4
  %133 = call i64 @yenta_search_res(%struct.yenta_socket* %130, %struct.resource* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %137 = load %struct.resource*, %struct.resource** %13, align 8
  %138 = load i32, i32* @BRIDGE_MEM_MIN, align 4
  %139 = call i64 @yenta_search_res(%struct.yenta_socket* %136, %struct.resource* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135, %129, %123
  store i32 1, i32* %6, align 4
  br label %177

142:                                              ; preds = %135
  %143 = load i32, i32* @IORESOURCE_MEM, align 4
  %144 = load %struct.resource*, %struct.resource** %13, align 8
  %145 = getelementptr inbounds %struct.resource, %struct.resource* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %142, %118
  %147 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %148 = load %struct.resource*, %struct.resource** %13, align 8
  %149 = load i32, i32* @BRIDGE_MEM_MAX, align 4
  %150 = call i64 @yenta_search_res(%struct.yenta_socket* %147, %struct.resource* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %164, label %152

152:                                              ; preds = %146
  %153 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %154 = load %struct.resource*, %struct.resource** %13, align 8
  %155 = load i32, i32* @BRIDGE_MEM_ACC, align 4
  %156 = call i64 @yenta_search_res(%struct.yenta_socket* %153, %struct.resource* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %160 = load %struct.resource*, %struct.resource** %13, align 8
  %161 = load i32, i32* @BRIDGE_MEM_MIN, align 4
  %162 = call i64 @yenta_search_res(%struct.yenta_socket* %159, %struct.resource* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158, %152, %146
  store i32 1, i32* %6, align 4
  br label %177

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %165, %117
  %167 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %168 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %167, i32 0, i32 0
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @dev_info(i32* %168, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  %171 = load %struct.resource*, %struct.resource** %13, align 8
  %172 = getelementptr inbounds %struct.resource, %struct.resource* %171, i32 0, i32 0
  store i32 0, i32* %172, align 8
  %173 = load %struct.resource*, %struct.resource** %13, align 8
  %174 = getelementptr inbounds %struct.resource, %struct.resource* %173, i32 0, i32 2
  store i32 0, i32* %174, align 8
  %175 = load %struct.resource*, %struct.resource** %13, align 8
  %176 = getelementptr inbounds %struct.resource, %struct.resource* %175, i32 0, i32 1
  store i32 0, i32* %176, align 4
  store i32 0, i32* %6, align 4
  br label %177

177:                                              ; preds = %166, %164, %141, %116, %87, %32
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i32 @config_readl(%struct.yenta_socket*, i32) #1

declare dso_local i32 @pcibios_bus_to_resource(i32, %struct.resource*, %struct.pci_bus_region*) #1

declare dso_local i64 @pci_claim_resource(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i64 @yenta_search_res(%struct.yenta_socket*, %struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
