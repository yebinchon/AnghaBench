; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-ep.c_dw_pcie_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_pcie_ep = type { i8*, i8*, i32, i32, i32, i32, i32, %struct.TYPE_3__*, %struct.pci_epc*, i8*, i32, i8*, i8*, i32 }
%struct.TYPE_3__ = type { {}* }
%struct.pci_epc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dw_pcie = type { %struct.device*, i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"dbi_base/dbi_base2 is not populated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"num-ib-windows\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to read *num-ib-windows* property\0A\00", align 1
@MAX_IATU_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Invalid *num-ib-windows*\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"num-ob-windows\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Unable to read *num-ob-windows* property\0A\00", align 1
@MAX_IATU_OUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Invalid *num-ob-windows*\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@epc_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to create epc device\0A\00", align 1
@PCI_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_NORMAL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [56 x i8] c"PCIe controller is not set to EP mode (hdr_type:0x%x)!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"max-functions\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Failed to initialize address space\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Failed to reserve memory for MSI/MSI-X\0A\00", align 1
@PCI_CAP_ID_MSI = common dso_local global i32 0, align 4
@PCI_CAP_ID_MSIX = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_REBAR = common dso_local global i32 0, align 4
@PCI_REBAR_CTRL = common dso_local global i64 0, align 8
@PCI_REBAR_CTRL_NBAR_MASK = common dso_local global i32 0, align 4
@PCI_REBAR_CTRL_NBAR_SHIFT = common dso_local global i32 0, align 4
@PCI_REBAR_CAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dw_pcie_ep_init(%struct.dw_pcie_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_pcie_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_epc*, align 8
  %12 = alloca %struct.dw_pcie*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.device_node*, align 8
  store %struct.dw_pcie_ep* %0, %struct.dw_pcie_ep** %3, align 8
  %15 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %16 = call %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep* %15)
  store %struct.dw_pcie* %16, %struct.dw_pcie** %12, align 8
  %17 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %18 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %13, align 8
  %20 = load %struct.device*, %struct.device** %13, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %14, align 8
  %23 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %24 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %29 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.device*, %struct.device** %13, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %283

37:                                               ; preds = %27
  %38 = load %struct.device_node*, %struct.device_node** %14, align 8
  %39 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %40 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %39, i32 0, i32 13
  %41 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.device*, %struct.device** %13, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %283

48:                                               ; preds = %37
  %49 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %50 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MAX_IATU_IN, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.device*, %struct.device** %13, align 8
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %283

59:                                               ; preds = %48
  %60 = load %struct.device_node*, %struct.device_node** %14, align 8
  %61 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %62 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %61, i32 0, i32 10
  %63 = call i32 @of_property_read_u32(%struct.device_node* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.device*, %struct.device** %13, align 8
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %283

70:                                               ; preds = %59
  %71 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %72 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MAX_IATU_OUT, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.device*, %struct.device** %13, align 8
  %78 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %283

81:                                               ; preds = %70
  %82 = load %struct.device*, %struct.device** %13, align 8
  %83 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %84 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @BITS_TO_LONGS(i32 %85)
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @devm_kcalloc(%struct.device* %82, i32 %86, i32 8, i32 %87)
  %89 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %90 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %89, i32 0, i32 12
  store i8* %88, i8** %90, align 8
  %91 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %92 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %91, i32 0, i32 12
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %81
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %283

98:                                               ; preds = %81
  %99 = load %struct.device*, %struct.device** %13, align 8
  %100 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %101 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @BITS_TO_LONGS(i32 %102)
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i8* @devm_kcalloc(%struct.device* %99, i32 %103, i32 8, i32 %104)
  %106 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %107 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %106, i32 0, i32 11
  store i8* %105, i8** %107, align 8
  %108 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %109 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %108, i32 0, i32 11
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %98
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %283

115:                                              ; preds = %98
  %116 = load %struct.device*, %struct.device** %13, align 8
  %117 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %118 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %117, i32 0, i32 10
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i8* @devm_kcalloc(%struct.device* %116, i32 %119, i32 4, i32 %120)
  store i8* %121, i8** %7, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %115
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %283

127:                                              ; preds = %115
  %128 = load i8*, i8** %7, align 8
  %129 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %130 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %129, i32 0, i32 9
  store i8* %128, i8** %130, align 8
  %131 = load %struct.device*, %struct.device** %13, align 8
  %132 = call %struct.pci_epc* @devm_pci_epc_create(%struct.device* %131, i32* @epc_ops)
  store %struct.pci_epc* %132, %struct.pci_epc** %11, align 8
  %133 = load %struct.pci_epc*, %struct.pci_epc** %11, align 8
  %134 = call i64 @IS_ERR(%struct.pci_epc* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %127
  %137 = load %struct.device*, %struct.device** %13, align 8
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %139 = load %struct.pci_epc*, %struct.pci_epc** %11, align 8
  %140 = call i32 @PTR_ERR(%struct.pci_epc* %139)
  store i32 %140, i32* %2, align 4
  br label %283

141:                                              ; preds = %127
  %142 = load %struct.pci_epc*, %struct.pci_epc** %11, align 8
  %143 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %144 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %143, i32 0, i32 8
  store %struct.pci_epc* %142, %struct.pci_epc** %144, align 8
  %145 = load %struct.pci_epc*, %struct.pci_epc** %11, align 8
  %146 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %147 = call i32 @epc_set_drvdata(%struct.pci_epc* %145, %struct.dw_pcie_ep* %146)
  %148 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %149 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %148, i32 0, i32 7
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = bitcast {}** %151 to i32 (%struct.dw_pcie_ep*)**
  %153 = load i32 (%struct.dw_pcie_ep*)*, i32 (%struct.dw_pcie_ep*)** %152, align 8
  %154 = icmp ne i32 (%struct.dw_pcie_ep*)* %153, null
  br i1 %154, label %155, label %164

155:                                              ; preds = %141
  %156 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %157 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %156, i32 0, i32 7
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = bitcast {}** %159 to i32 (%struct.dw_pcie_ep*)**
  %161 = load i32 (%struct.dw_pcie_ep*)*, i32 (%struct.dw_pcie_ep*)** %160, align 8
  %162 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %163 = call i32 %161(%struct.dw_pcie_ep* %162)
  br label %164

164:                                              ; preds = %155, %141
  %165 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %166 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %167 = call i64 @dw_pcie_readb_dbi(%struct.dw_pcie* %165, i32 %166)
  store i64 %167, i64* %8, align 8
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @PCI_HEADER_TYPE_NORMAL, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %164
  %172 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %173 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %172, i32 0, i32 0
  %174 = load %struct.device*, %struct.device** %173, align 8
  %175 = load i64, i64* %8, align 8
  %176 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %174, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i64 %175)
  %177 = load i32, i32* @EIO, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %2, align 4
  br label %283

179:                                              ; preds = %164
  %180 = load %struct.device_node*, %struct.device_node** %14, align 8
  %181 = load %struct.pci_epc*, %struct.pci_epc** %11, align 8
  %182 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %181, i32 0, i32 0
  %183 = call i32 @of_property_read_u8(%struct.device_node* %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32* %182)
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %179
  %187 = load %struct.pci_epc*, %struct.pci_epc** %11, align 8
  %188 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %186, %179
  %190 = load %struct.pci_epc*, %struct.pci_epc** %11, align 8
  %191 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %192 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %195 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %198 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @__pci_epc_mem_init(%struct.pci_epc* %190, i32 %193, i32 %196, i32 %199)
  store i32 %200, i32* %5, align 4
  %201 = load i32, i32* %5, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %189
  %204 = load %struct.device*, %struct.device** %13, align 8
  %205 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %204, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %206 = load i32, i32* %5, align 4
  store i32 %206, i32* %2, align 4
  br label %283

207:                                              ; preds = %189
  %208 = load %struct.pci_epc*, %struct.pci_epc** %11, align 8
  %209 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %210 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %209, i32 0, i32 3
  %211 = load %struct.pci_epc*, %struct.pci_epc** %11, align 8
  %212 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %211, i32 0, i32 1
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @pci_epc_mem_alloc_addr(%struct.pci_epc* %208, i32* %210, i32 %215)
  %217 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %218 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  %219 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %220 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %207
  %224 = load %struct.device*, %struct.device** %13, align 8
  %225 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %224, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %226 = load i32, i32* @ENOMEM, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %2, align 4
  br label %283

228:                                              ; preds = %207
  %229 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %230 = load i32, i32* @PCI_CAP_ID_MSI, align 4
  %231 = call i8* @dw_pcie_find_capability(%struct.dw_pcie* %229, i32 %230)
  %232 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %233 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %232, i32 0, i32 1
  store i8* %231, i8** %233, align 8
  %234 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %235 = load i32, i32* @PCI_CAP_ID_MSIX, align 4
  %236 = call i8* @dw_pcie_find_capability(%struct.dw_pcie* %234, i32 %235)
  %237 = load %struct.dw_pcie_ep*, %struct.dw_pcie_ep** %3, align 8
  %238 = getelementptr inbounds %struct.dw_pcie_ep, %struct.dw_pcie_ep* %237, i32 0, i32 0
  store i8* %236, i8** %238, align 8
  %239 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %240 = load i32, i32* @PCI_EXT_CAP_ID_REBAR, align 4
  %241 = call i32 @dw_pcie_ep_find_ext_capability(%struct.dw_pcie* %239, i32 %240)
  store i32 %241, i32* %10, align 4
  %242 = load i32, i32* %10, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %280

244:                                              ; preds = %228
  %245 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %246 = load i32, i32* %10, align 4
  %247 = zext i32 %246 to i64
  %248 = load i64, i64* @PCI_REBAR_CTRL, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @dw_pcie_readl_dbi(%struct.dw_pcie* %245, i64 %249)
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* %6, align 4
  %252 = load i32, i32* @PCI_REBAR_CTRL_NBAR_MASK, align 4
  %253 = and i32 %251, %252
  %254 = load i32, i32* @PCI_REBAR_CTRL_NBAR_SHIFT, align 4
  %255 = lshr i32 %253, %254
  store i32 %255, i32* %9, align 4
  %256 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %257 = call i32 @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie* %256)
  store i32 0, i32* %4, align 4
  br label %258

258:                                              ; preds = %269, %244
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* %9, align 4
  %261 = icmp ult i32 %259, %260
  br i1 %261, label %262, label %277

262:                                              ; preds = %258
  %263 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %264 = load i32, i32* %10, align 4
  %265 = zext i32 %264 to i64
  %266 = load i64, i64* @PCI_REBAR_CAP, align 8
  %267 = add nsw i64 %265, %266
  %268 = call i32 @dw_pcie_writel_dbi(%struct.dw_pcie* %263, i64 %267, i32 0)
  br label %269

269:                                              ; preds = %262
  %270 = load i32, i32* %4, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %4, align 4
  %272 = load i64, i64* @PCI_REBAR_CTRL, align 8
  %273 = load i32, i32* %10, align 4
  %274 = zext i32 %273 to i64
  %275 = add nsw i64 %274, %272
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %10, align 4
  br label %258

277:                                              ; preds = %258
  %278 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %279 = call i32 @dw_pcie_dbi_ro_wr_dis(%struct.dw_pcie* %278)
  br label %280

280:                                              ; preds = %277, %228
  %281 = load %struct.dw_pcie*, %struct.dw_pcie** %12, align 8
  %282 = call i32 @dw_pcie_setup(%struct.dw_pcie* %281)
  store i32 0, i32* %2, align 4
  br label %283

283:                                              ; preds = %280, %223, %203, %171, %136, %124, %112, %95, %76, %66, %54, %44, %32
  %284 = load i32, i32* %2, align 4
  ret i32 %284
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_ep(%struct.dw_pcie_ep*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local %struct.pci_epc* @devm_pci_epc_create(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.pci_epc*) #1

declare dso_local i32 @PTR_ERR(%struct.pci_epc*) #1

declare dso_local i32 @epc_set_drvdata(%struct.pci_epc*, %struct.dw_pcie_ep*) #1

declare dso_local i64 @dw_pcie_readb_dbi(%struct.dw_pcie*, i32) #1

declare dso_local i32 @of_property_read_u8(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @__pci_epc_mem_init(%struct.pci_epc*, i32, i32, i32) #1

declare dso_local i32 @pci_epc_mem_alloc_addr(%struct.pci_epc*, i32*, i32) #1

declare dso_local i8* @dw_pcie_find_capability(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dw_pcie_ep_find_ext_capability(%struct.dw_pcie*, i32) #1

declare dso_local i32 @dw_pcie_readl_dbi(%struct.dw_pcie*, i64) #1

declare dso_local i32 @dw_pcie_dbi_ro_wr_en(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_writel_dbi(%struct.dw_pcie*, i64, i32) #1

declare dso_local i32 @dw_pcie_dbi_ro_wr_dis(%struct.dw_pcie*) #1

declare dso_local i32 @dw_pcie_setup(%struct.dw_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
