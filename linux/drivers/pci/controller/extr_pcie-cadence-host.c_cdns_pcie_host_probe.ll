; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-host.c_cdns_pcie_host_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-host.c_cdns_pcie_host_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pci_host_bridge = type { i32, i32, i32*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.list_head = type { i32 }
%struct.cdns_pcie_rc = type { i32, i32, i32, i32, %struct.resource*, i32, %struct.cdns_pcie, %struct.device* }
%struct.resource = type { i32 }
%struct.cdns_pcie = type { i32, i32, i32*, i32, %struct.resource*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cdns,max-outbound-regions\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cdns,no-bar-match-nbits\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"vendor-id\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"device-id\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"missing \22reg\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"missing \22cfg\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"missing \22mem\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"failed to init phy\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"pm_runtime_get_sync() failed\0A\00", align 1
@cdns_pcie_host_ops = common dso_local global i32 0, align 4
@of_irq_parse_and_map_pci = common dso_local global i32 0, align 4
@pci_common_swizzle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cdns_pcie_host_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_pcie_host_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pci_host_bridge*, align 8
  %7 = alloca %struct.list_head, align 4
  %8 = alloca %struct.cdns_pcie_rc*, align 8
  %9 = alloca %struct.cdns_pcie*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device* %18, i32 80)
  store %struct.pci_host_bridge* %19, %struct.pci_host_bridge** %6, align 8
  %20 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %21 = icmp ne %struct.pci_host_bridge* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %202

25:                                               ; preds = %1
  %26 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %27 = call %struct.cdns_pcie_rc* @pci_host_bridge_priv(%struct.pci_host_bridge* %26)
  store %struct.cdns_pcie_rc* %27, %struct.cdns_pcie_rc** %8, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %30 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %29, i32 0, i32 7
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %32 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %31, i32 0, i32 6
  store %struct.cdns_pcie* %32, %struct.cdns_pcie** %9, align 8
  %33 = load %struct.cdns_pcie*, %struct.cdns_pcie** %9, align 8
  %34 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %36 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %35, i32 0, i32 0
  store i32 32, i32* %36, align 8
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %39 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %38, i32 0, i32 0
  %40 = call i32 @of_property_read_u32(%struct.device_node* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %39)
  %41 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %42 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %41, i32 0, i32 1
  store i32 32, i32* %42, align 4
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %45 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %44, i32 0, i32 1
  %46 = call i32 @of_property_read_u32(%struct.device_node* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %45)
  %47 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %48 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %47, i32 0, i32 2
  store i32 65535, i32* %48, align 8
  %49 = load %struct.device_node*, %struct.device_node** %5, align 8
  %50 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %51 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %50, i32 0, i32 2
  %52 = call i32 @of_property_read_u16(%struct.device_node* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %51)
  %53 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %54 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %53, i32 0, i32 3
  store i32 65535, i32* %54, align 4
  %55 = load %struct.device_node*, %struct.device_node** %5, align 8
  %56 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %57 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %56, i32 0, i32 3
  %58 = call i32 @of_property_read_u16(%struct.device_node* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load i32, i32* @IORESOURCE_MEM, align 4
  %61 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %59, i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store %struct.resource* %61, %struct.resource** %10, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.resource*, %struct.resource** %10, align 8
  %64 = call i32 @devm_ioremap_resource(%struct.device* %62, %struct.resource* %63)
  %65 = load %struct.cdns_pcie*, %struct.cdns_pcie** %9, align 8
  %66 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.cdns_pcie*, %struct.cdns_pcie** %9, align 8
  %68 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %25
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.cdns_pcie*, %struct.cdns_pcie** %9, align 8
  %76 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %202

79:                                               ; preds = %25
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load i32, i32* @IORESOURCE_MEM, align 4
  %82 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %80, i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store %struct.resource* %82, %struct.resource** %10, align 8
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load %struct.resource*, %struct.resource** %10, align 8
  %85 = call i32 @devm_pci_remap_cfg_resource(%struct.device* %83, %struct.resource* %84)
  %86 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %87 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %89 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @IS_ERR(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %79
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %96 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %97 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @PTR_ERR(i32 %98)
  store i32 %99, i32* %2, align 4
  br label %202

100:                                              ; preds = %79
  %101 = load %struct.resource*, %struct.resource** %10, align 8
  %102 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %103 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %102, i32 0, i32 4
  store %struct.resource* %101, %struct.resource** %103, align 8
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = load i32, i32* @IORESOURCE_MEM, align 4
  %106 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %104, i32 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store %struct.resource* %106, %struct.resource** %10, align 8
  %107 = load %struct.resource*, %struct.resource** %10, align 8
  %108 = icmp ne %struct.resource* %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %100
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %202

114:                                              ; preds = %100
  %115 = load %struct.resource*, %struct.resource** %10, align 8
  %116 = load %struct.cdns_pcie*, %struct.cdns_pcie** %9, align 8
  %117 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %116, i32 0, i32 4
  store %struct.resource* %115, %struct.resource** %117, align 8
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load %struct.cdns_pcie*, %struct.cdns_pcie** %9, align 8
  %120 = call i32 @cdns_pcie_init_phy(%struct.device* %118, %struct.cdns_pcie* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %2, align 4
  br label %202

127:                                              ; preds = %114
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = load %struct.cdns_pcie*, %struct.cdns_pcie** %9, align 8
  %130 = call i32 @platform_set_drvdata(%struct.platform_device* %128, %struct.cdns_pcie* %129)
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = call i32 @pm_runtime_enable(%struct.device* %131)
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = call i32 @pm_runtime_get_sync(%struct.device* %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = call i32 @dev_err(%struct.device* %138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %179

140:                                              ; preds = %127
  %141 = load %struct.device*, %struct.device** %4, align 8
  %142 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %8, align 8
  %143 = call i32 @cdns_pcie_host_init(%struct.device* %141, %struct.list_head* %7, %struct.cdns_pcie_rc* %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %176

147:                                              ; preds = %140
  %148 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %149 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %148, i32 0, i32 5
  %150 = call i32 @list_splice_init(%struct.list_head* %7, i32* %149)
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %153 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store %struct.device* %151, %struct.device** %154, align 8
  %155 = load %struct.cdns_pcie*, %struct.cdns_pcie** %9, align 8
  %156 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %159 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %161 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %160, i32 0, i32 2
  store i32* @cdns_pcie_host_ops, i32** %161, align 8
  %162 = load i32, i32* @of_irq_parse_and_map_pci, align 4
  %163 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %164 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @pci_common_swizzle, align 4
  %166 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %167 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %169 = call i32 @pci_host_probe(%struct.pci_host_bridge* %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %147
  br label %174

173:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %202

174:                                              ; preds = %172
  %175 = call i32 @pci_free_resource_list(%struct.list_head* %7)
  br label %176

176:                                              ; preds = %174, %146
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = call i32 @pm_runtime_put_sync(%struct.device* %177)
  br label %179

179:                                              ; preds = %176, %137
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = call i32 @pm_runtime_disable(%struct.device* %180)
  %182 = load %struct.cdns_pcie*, %struct.cdns_pcie** %9, align 8
  %183 = call i32 @cdns_pcie_disable_phy(%struct.cdns_pcie* %182)
  %184 = load %struct.cdns_pcie*, %struct.cdns_pcie** %9, align 8
  %185 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %12, align 4
  br label %187

187:                                              ; preds = %191, %179
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %12, align 4
  %190 = icmp ne i32 %188, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load %struct.cdns_pcie*, %struct.cdns_pcie** %9, align 8
  %193 = getelementptr inbounds %struct.cdns_pcie, %struct.cdns_pcie* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @device_link_del(i32 %198)
  br label %187

200:                                              ; preds = %187
  %201 = load i32, i32* %11, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %200, %173, %123, %109, %93, %72, %22
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device*, i32) #1

declare dso_local %struct.cdns_pcie_rc* @pci_host_bridge_priv(%struct.pci_host_bridge*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u16(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_pci_remap_cfg_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @cdns_pcie_init_phy(%struct.device*, %struct.cdns_pcie*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cdns_pcie*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @cdns_pcie_host_init(%struct.device*, %struct.list_head*, %struct.cdns_pcie_rc*) #1

declare dso_local i32 @list_splice_init(%struct.list_head*, i32*) #1

declare dso_local i32 @pci_host_probe(%struct.pci_host_bridge*) #1

declare dso_local i32 @pci_free_resource_list(%struct.list_head*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @cdns_pcie_disable_phy(%struct.cdns_pcie*) #1

declare dso_local i32 @device_link_del(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
