; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-v3-semi.c_v3_pci_setup_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-v3-semi.c_v3_pci_setup_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3_pci = type { i64, i64, i64, i64, i64, i64, i32, %struct.device* }
%struct.device = type { i32 }
%struct.pci_host_bridge = type { i64 }
%struct.resource_entry = type { %struct.resource*, i64 }
%struct.resource = type { i8*, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"V3 PCI I/O\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"I/O window %pR, bus addr %pap\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"error %d: failed to map resource %pR\0A\00", align 1
@V3_LB_BASE2_ENABLE = common dso_local global i32 0, align 4
@V3_LB_BASE2 = common dso_local global i64 0, align 8
@V3_LB_MAP2 = common dso_local global i64 0, align 8
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"V3 PCI PRE-MEM\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"PREFETCHABLE MEM window %pR, bus addr %pap\0A\00", align 1
@SZ_256M = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"prefetchable memory range is not 256MB\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [64 x i8] c"prefetchable memory is not adjacent to non-prefetchable memory\0A\00", align 1
@V3_LB_BASE_ADR_SIZE_256MB = common dso_local global i32 0, align 4
@V3_LB_BASE_PREFETCH = common dso_local global i32 0, align 4
@V3_LB_BASE_ENABLE = common dso_local global i32 0, align 4
@V3_LB_BASE1 = common dso_local global i64 0, align 8
@V3_LB_MAP_TYPE_MEM = common dso_local global i32 0, align 4
@V3_LB_MAP1 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"V3 PCI NON-PRE-MEM\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"NON-PREFETCHABLE MEM window %pR, bus addr %pap\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"non-prefetchable memory range is not 256MB\0A\00", align 1
@V3_LB_BASE0 = common dso_local global i64 0, align 8
@V3_LB_MAP0 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"BUS %pR\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Unknown resource type %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v3_pci*, i32, %struct.pci_host_bridge*, %struct.resource_entry*)* @v3_pci_setup_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3_pci_setup_resource(%struct.v3_pci* %0, i32 %1, %struct.pci_host_bridge* %2, %struct.resource_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v3_pci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_host_bridge*, align 8
  %9 = alloca %struct.resource_entry*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  store %struct.v3_pci* %0, %struct.v3_pci** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.pci_host_bridge* %2, %struct.pci_host_bridge** %8, align 8
  store %struct.resource_entry* %3, %struct.resource_entry** %9, align 8
  %14 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %15 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %14, i32 0, i32 7
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.resource_entry*, %struct.resource_entry** %9, align 8
  %18 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %17, i32 0, i32 0
  %19 = load %struct.resource*, %struct.resource** %18, align 8
  %20 = call i32 @resource_type(%struct.resource* %19)
  switch i32 %20, label %241 [
    i32 129, label %21
    i32 128, label %79
    i32 130, label %228
  ]

21:                                               ; preds = %4
  %22 = load %struct.resource_entry*, %struct.resource_entry** %9, align 8
  %23 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %22, i32 0, i32 0
  %24 = load %struct.resource*, %struct.resource** %23, align 8
  store %struct.resource* %24, %struct.resource** %12, align 8
  %25 = load %struct.resource*, %struct.resource** %12, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %29 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.resource*, %struct.resource** %12, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.resource_entry*, %struct.resource_entry** %9, align 8
  %34 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %38 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %37, i32 0, i32 5
  store i64 %36, i64* %38, align 8
  %39 = load %struct.device*, %struct.device** %10, align 8
  %40 = load %struct.resource*, %struct.resource** %12, align 8
  %41 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %42 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %41, i32 0, i32 5
  %43 = call i32 (%struct.device*, i8*, %struct.resource*, ...) @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %40, i64* %42)
  %44 = load %struct.device*, %struct.device** %10, align 8
  %45 = load %struct.resource*, %struct.resource** %12, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @devm_pci_remap_iospace(%struct.device* %44, %struct.resource* %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %21
  %51 = load %struct.device*, %struct.device** %10, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.resource*, %struct.resource** %12, align 8
  %54 = call i32 @dev_warn(%struct.device* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %52, %struct.resource* %53)
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %5, align 4
  br label %249

56:                                               ; preds = %21
  %57 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %58 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @v3_addr_to_lb_base2(i32 %59)
  %61 = load i32, i32* @V3_LB_BASE2_ENABLE, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %64 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @V3_LB_BASE2, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  %69 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %70 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @v3_addr_to_lb_map2(i64 %71)
  %73 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %74 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @V3_LB_MAP2, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writew(i32 %72, i64 %77)
  br label %248

79:                                               ; preds = %4
  %80 = load %struct.resource_entry*, %struct.resource_entry** %9, align 8
  %81 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %80, i32 0, i32 0
  %82 = load %struct.resource*, %struct.resource** %81, align 8
  store %struct.resource* %82, %struct.resource** %11, align 8
  %83 = load %struct.resource*, %struct.resource** %11, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %169

89:                                               ; preds = %79
  %90 = load %struct.resource*, %struct.resource** %11, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %91, align 8
  %92 = load %struct.resource*, %struct.resource** %11, align 8
  %93 = getelementptr inbounds %struct.resource, %struct.resource* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %96 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %95, i32 0, i32 4
  store i64 %94, i64* %96, align 8
  %97 = load %struct.resource*, %struct.resource** %11, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.resource_entry*, %struct.resource_entry** %9, align 8
  %101 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  %104 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %105 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %104, i32 0, i32 3
  store i64 %103, i64* %105, align 8
  %106 = load %struct.device*, %struct.device** %10, align 8
  %107 = load %struct.resource*, %struct.resource** %11, align 8
  %108 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %109 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %108, i32 0, i32 3
  %110 = call i32 (%struct.device*, i8*, %struct.resource*, ...) @dev_dbg(%struct.device* %106, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), %struct.resource* %107, i64* %109)
  %111 = load %struct.resource*, %struct.resource** %11, align 8
  %112 = call i64 @resource_size(%struct.resource* %111)
  %113 = load i64, i64* @SZ_256M, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %89
  %116 = load %struct.device*, %struct.device** %10, align 8
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %249

120:                                              ; preds = %89
  %121 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %122 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %120
  %126 = load %struct.resource*, %struct.resource** %11, align 8
  %127 = getelementptr inbounds %struct.resource, %struct.resource* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %130 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SZ_256M, align 8
  %133 = add nsw i64 %131, %132
  %134 = icmp ne i64 %128, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %125
  %136 = load %struct.device*, %struct.device** %10, align 8
  %137 = call i32 @dev_err(%struct.device* %136, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0))
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %249

140:                                              ; preds = %125, %120
  %141 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %142 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @v3_addr_to_lb_base(i64 %143)
  %145 = load i32, i32* @V3_LB_BASE_ADR_SIZE_256MB, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @V3_LB_BASE_PREFETCH, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @V3_LB_BASE_ENABLE, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %152 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @V3_LB_BASE1, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writel(i32 %150, i64 %155)
  %157 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %158 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @v3_addr_to_lb_map(i64 %159)
  %161 = load i32, i32* @V3_LB_MAP_TYPE_MEM, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %164 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @V3_LB_MAP1, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @writew(i32 %162, i64 %167)
  br label %227

169:                                              ; preds = %79
  %170 = load %struct.resource*, %struct.resource** %11, align 8
  %171 = getelementptr inbounds %struct.resource, %struct.resource* %170, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %171, align 8
  %172 = load %struct.resource*, %struct.resource** %11, align 8
  %173 = getelementptr inbounds %struct.resource, %struct.resource* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %176 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %175, i32 0, i32 2
  store i64 %174, i64* %176, align 8
  %177 = load %struct.resource*, %struct.resource** %11, align 8
  %178 = getelementptr inbounds %struct.resource, %struct.resource* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.resource_entry*, %struct.resource_entry** %9, align 8
  %181 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %179, %182
  %184 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %185 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = load %struct.device*, %struct.device** %10, align 8
  %187 = load %struct.resource*, %struct.resource** %11, align 8
  %188 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %189 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %188, i32 0, i32 1
  %190 = call i32 (%struct.device*, i8*, %struct.resource*, ...) @dev_dbg(%struct.device* %186, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), %struct.resource* %187, i64* %189)
  %191 = load %struct.resource*, %struct.resource** %11, align 8
  %192 = call i64 @resource_size(%struct.resource* %191)
  %193 = load i64, i64* @SZ_256M, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %169
  %196 = load %struct.device*, %struct.device** %10, align 8
  %197 = call i32 @dev_err(%struct.device* %196, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %5, align 4
  br label %249

200:                                              ; preds = %169
  %201 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %202 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @v3_addr_to_lb_base(i64 %203)
  %205 = load i32, i32* @V3_LB_BASE_ADR_SIZE_256MB, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @V3_LB_BASE_ENABLE, align 4
  %208 = or i32 %206, %207
  %209 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %210 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @V3_LB_BASE0, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 @writel(i32 %208, i64 %213)
  %215 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %216 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @v3_addr_to_lb_map(i64 %217)
  %219 = load i32, i32* @V3_LB_MAP_TYPE_MEM, align 4
  %220 = or i32 %218, %219
  %221 = load %struct.v3_pci*, %struct.v3_pci** %6, align 8
  %222 = getelementptr inbounds %struct.v3_pci, %struct.v3_pci* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @V3_LB_MAP0, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writew(i32 %220, i64 %225)
  br label %227

227:                                              ; preds = %200, %140
  br label %248

228:                                              ; preds = %4
  %229 = load %struct.device*, %struct.device** %10, align 8
  %230 = load %struct.resource_entry*, %struct.resource_entry** %9, align 8
  %231 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %230, i32 0, i32 0
  %232 = load %struct.resource*, %struct.resource** %231, align 8
  %233 = call i32 (%struct.device*, i8*, %struct.resource*, ...) @dev_dbg(%struct.device* %229, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), %struct.resource* %232)
  %234 = load %struct.resource_entry*, %struct.resource_entry** %9, align 8
  %235 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %234, i32 0, i32 0
  %236 = load %struct.resource*, %struct.resource** %235, align 8
  %237 = getelementptr inbounds %struct.resource, %struct.resource* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %8, align 8
  %240 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %239, i32 0, i32 0
  store i64 %238, i64* %240, align 8
  br label %248

241:                                              ; preds = %4
  %242 = load %struct.device*, %struct.device** %10, align 8
  %243 = load %struct.resource_entry*, %struct.resource_entry** %9, align 8
  %244 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %243, i32 0, i32 0
  %245 = load %struct.resource*, %struct.resource** %244, align 8
  %246 = call i32 @resource_type(%struct.resource* %245)
  %247 = call i32 @dev_info(%struct.device* %242, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %241, %228, %227, %56
  store i32 0, i32* %5, align 4
  br label %249

249:                                              ; preds = %248, %195, %135, %115, %50
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local i32 @resource_type(%struct.resource*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.resource*, ...) #1

declare dso_local i32 @devm_pci_remap_iospace(%struct.device*, %struct.resource*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, %struct.resource*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @v3_addr_to_lb_base2(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @v3_addr_to_lb_map2(i64) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @v3_addr_to_lb_base(i64) #1

declare dso_local i32 @v3_addr_to_lb_map(i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
