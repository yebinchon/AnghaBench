; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer_inject.c_aer_inject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/pcie/extr_aer_inject.c_aer_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aer_error_inj = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aer_error = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pcie_device = type { i32, %struct.pci_dev* }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Root port not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Device doesn't support AER\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@PCI_ERR_UNCOR_SEVER = common dso_local global i64 0, align 8
@PCI_ERR_COR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Root port doesn't support AER\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aer_mask_override = common dso_local global i64 0, align 8
@inject_lock = common dso_local global i32 0, align 4
@einjected = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"The correctable error(s) is masked by device\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"The uncorrectable error(s) is masked by device\0A\00", align 1
@PCI_ERR_ROOT_COR_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_MULTI_COR_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_UNCOR_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_MULTI_UNCOR_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_FATAL_RCV = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_FIRST_FATAL = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_NONFATAL_RCV = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_AER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"AER service is not initialized\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Injecting errors %08x/%08x into device %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"AER device not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aer_error_inj*)* @aer_inject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aer_inject(%struct.aer_error_inj* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aer_error_inj*, align 8
  %4 = alloca %struct.aer_error*, align 8
  %5 = alloca %struct.aer_error*, align 8
  %6 = alloca %struct.aer_error*, align 8
  %7 = alloca %struct.aer_error*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.pcie_device*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.aer_error_inj* %0, %struct.aer_error_inj** %3, align 8
  store %struct.aer_error* null, %struct.aer_error** %6, align 8
  store %struct.aer_error* null, %struct.aer_error** %7, align 8
  %22 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %23 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %26 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PCI_DEVFN(i32 %24, i32 %27)
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %29 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %30 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %33 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %31, i32 %34, i32 %35)
  store %struct.pci_dev* %36, %struct.pci_dev** %8, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %38 = icmp ne %struct.pci_dev* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %469

42:                                               ; preds = %1
  %43 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %44 = call %struct.pci_dev* @pcie_find_root_port(%struct.pci_dev* %43)
  store %struct.pci_dev* %44, %struct.pci_dev** %9, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %46 = icmp ne %struct.pci_dev* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %49 = call i32 @pci_err(%struct.pci_dev* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %21, align 4
  br label %461

52:                                               ; preds = %42
  %53 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %60 = call i32 @pci_err(%struct.pci_dev* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EPROTONOSUPPORT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %21, align 4
  br label %461

63:                                               ; preds = %52
  %64 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @PCI_ERR_UNCOR_SEVER, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @pci_read_config_dword(%struct.pci_dev* %64, i64 %68, i32* %16)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @pci_read_config_dword(%struct.pci_dev* %70, i64 %74, i32* %17)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @pci_read_config_dword(%struct.pci_dev* %76, i64 %80, i32* %18)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %63
  %88 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %89 = call i32 @pci_err(%struct.pci_dev* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @EPROTONOSUPPORT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %21, align 4
  br label %461

92:                                               ; preds = %63
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.aer_error* @kzalloc(i32 36, i32 %93)
  store %struct.aer_error* %94, %struct.aer_error** %6, align 8
  %95 = load %struct.aer_error*, %struct.aer_error** %6, align 8
  %96 = icmp ne %struct.aer_error* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %21, align 4
  br label %461

100:                                              ; preds = %92
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call %struct.aer_error* @kzalloc(i32 36, i32 %101)
  store %struct.aer_error* %102, %struct.aer_error** %7, align 8
  %103 = load %struct.aer_error*, %struct.aer_error** %7, align 8
  %104 = icmp ne %struct.aer_error* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %21, align 4
  br label %461

108:                                              ; preds = %100
  %109 = load i64, i64* @aer_mask_override, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %144

111:                                              ; preds = %108
  %112 = load i32, i32* %17, align 4
  store i32 %112, i32* %19, align 4
  %113 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %114 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %17, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %17, align 4
  %121 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %125 = add nsw i64 %123, %124
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @pci_write_config_dword(%struct.pci_dev* %121, i64 %125, i32 %126)
  %128 = load i32, i32* %18, align 4
  store i32 %128, i32* %20, align 4
  %129 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %130 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %18, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %18, align 4
  %137 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %141 = add nsw i64 %139, %140
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @pci_write_config_dword(%struct.pci_dev* %137, i64 %141, i32 %142)
  br label %144

144:                                              ; preds = %111, %108
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @spin_lock_irqsave(i32* @inject_lock, i64 %145)
  %147 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %148 = call %struct.aer_error* @__find_aer_error_by_dev(%struct.pci_dev* %147)
  store %struct.aer_error* %148, %struct.aer_error** %4, align 8
  %149 = load %struct.aer_error*, %struct.aer_error** %4, align 8
  %150 = icmp ne %struct.aer_error* %149, null
  br i1 %150, label %166, label %151

151:                                              ; preds = %144
  %152 = load %struct.aer_error*, %struct.aer_error** %6, align 8
  store %struct.aer_error* %152, %struct.aer_error** %4, align 8
  store %struct.aer_error* null, %struct.aer_error** %6, align 8
  %153 = load %struct.aer_error*, %struct.aer_error** %4, align 8
  %154 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %155 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %158 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @aer_error_init(%struct.aer_error* %153, i32 %156, i32 %159, i32 %160, i32 %161)
  %163 = load %struct.aer_error*, %struct.aer_error** %4, align 8
  %164 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %163, i32 0, i32 4
  %165 = call i32 @list_add(i32* %164, i32* @einjected)
  br label %166

166:                                              ; preds = %151, %144
  %167 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %168 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.aer_error*, %struct.aer_error** %4, align 8
  %171 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %175 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.aer_error*, %struct.aer_error** %4, align 8
  %178 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  %181 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %182 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.aer_error*, %struct.aer_error** %4, align 8
  %185 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %184, i32 0, i32 8
  store i32 %183, i32* %185, align 4
  %186 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %187 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.aer_error*, %struct.aer_error** %4, align 8
  %190 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %189, i32 0, i32 7
  store i32 %188, i32* %190, align 4
  %191 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %192 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.aer_error*, %struct.aer_error** %4, align 8
  %195 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %194, i32 0, i32 6
  store i32 %193, i32* %195, align 4
  %196 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %197 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.aer_error*, %struct.aer_error** %4, align 8
  %200 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 4
  %201 = load i64, i64* @aer_mask_override, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %223, label %203

203:                                              ; preds = %166
  %204 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %205 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %223

208:                                              ; preds = %203
  %209 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %210 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %17, align 4
  %213 = xor i32 %212, -1
  %214 = and i32 %211, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %208
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %21, align 4
  %219 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %220 = call i32 @pci_warn(%struct.pci_dev* %219, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %221 = load i64, i64* %12, align 8
  %222 = call i32 @spin_unlock_irqrestore(i32* @inject_lock, i64 %221)
  br label %461

223:                                              ; preds = %208, %203, %166
  %224 = load i64, i64* @aer_mask_override, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %246, label %226

226:                                              ; preds = %223
  %227 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %228 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %226
  %232 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %233 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %18, align 4
  %236 = xor i32 %235, -1
  %237 = and i32 %234, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %231
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %21, align 4
  %242 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %243 = call i32 @pci_warn(%struct.pci_dev* %242, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %244 = load i64, i64* %12, align 8
  %245 = call i32 @spin_unlock_irqrestore(i32* @inject_lock, i64 %244)
  br label %461

246:                                              ; preds = %231, %226, %223
  %247 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %248 = call %struct.aer_error* @__find_aer_error_by_dev(%struct.pci_dev* %247)
  store %struct.aer_error* %248, %struct.aer_error** %5, align 8
  %249 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %250 = icmp ne %struct.aer_error* %249, null
  br i1 %250, label %271, label %251

251:                                              ; preds = %246
  %252 = load %struct.aer_error*, %struct.aer_error** %7, align 8
  store %struct.aer_error* %252, %struct.aer_error** %5, align 8
  store %struct.aer_error* null, %struct.aer_error** %7, align 8
  %253 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %254 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %255 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %254, i32 0, i32 2
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %255, align 8
  %257 = call i32 @pci_domain_nr(%struct.TYPE_3__* %256)
  %258 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %259 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %258, i32 0, i32 2
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %264 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %15, align 4
  %267 = call i32 @aer_error_init(%struct.aer_error* %253, i32 %257, i32 %262, i32 %265, i32 %266)
  %268 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %269 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %268, i32 0, i32 4
  %270 = call i32 @list_add(i32* %269, i32* @einjected)
  br label %271

271:                                              ; preds = %251, %246
  %272 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %273 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %310

276:                                              ; preds = %271
  %277 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %278 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @PCI_ERR_ROOT_COR_RCV, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %276
  %284 = load i32, i32* @PCI_ERR_ROOT_MULTI_COR_RCV, align 4
  %285 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %286 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 4
  br label %295

289:                                              ; preds = %276
  %290 = load i32, i32* @PCI_ERR_ROOT_COR_RCV, align 4
  %291 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %292 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %289, %283
  %296 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %297 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %298, -65536
  store i32 %299, i32* %297, align 4
  %300 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %301 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = shl i32 %302, 8
  %304 = load i32, i32* %13, align 4
  %305 = or i32 %303, %304
  %306 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %307 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %295, %271
  %311 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %312 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %381

315:                                              ; preds = %310
  %316 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %317 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @PCI_ERR_ROOT_UNCOR_RCV, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %315
  %323 = load i32, i32* @PCI_ERR_ROOT_MULTI_UNCOR_RCV, align 4
  %324 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %325 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 4
  br label %328

328:                                              ; preds = %322, %315
  %329 = load i32, i32* %16, align 4
  %330 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %331 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %329, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %354

335:                                              ; preds = %328
  %336 = load i32, i32* @PCI_ERR_ROOT_FATAL_RCV, align 4
  %337 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %338 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = or i32 %339, %336
  store i32 %340, i32* %338, align 4
  %341 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %342 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @PCI_ERR_ROOT_UNCOR_RCV, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %353, label %347

347:                                              ; preds = %335
  %348 = load i32, i32* @PCI_ERR_ROOT_FIRST_FATAL, align 4
  %349 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %350 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %351, %348
  store i32 %352, i32* %350, align 4
  br label %353

353:                                              ; preds = %347, %335
  br label %360

354:                                              ; preds = %328
  %355 = load i32, i32* @PCI_ERR_ROOT_NONFATAL_RCV, align 4
  %356 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %357 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %355
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %354, %353
  %361 = load i32, i32* @PCI_ERR_ROOT_UNCOR_RCV, align 4
  %362 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %363 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 4
  %365 = or i32 %364, %361
  store i32 %365, i32* %363, align 4
  %366 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %367 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, 65535
  store i32 %369, i32* %367, align 4
  %370 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %371 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = shl i32 %372, 8
  %374 = load i32, i32* %13, align 4
  %375 = or i32 %373, %374
  %376 = shl i32 %375, 16
  %377 = load %struct.aer_error*, %struct.aer_error** %5, align 8
  %378 = getelementptr inbounds %struct.aer_error, %struct.aer_error* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = or i32 %379, %376
  store i32 %380, i32* %378, align 4
  br label %381

381:                                              ; preds = %360, %310
  %382 = load i64, i64* %12, align 8
  %383 = call i32 @spin_unlock_irqrestore(i32* @inject_lock, i64 %382)
  %384 = load i64, i64* @aer_mask_override, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %401

386:                                              ; preds = %381
  %387 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %388 = load i32, i32* %14, align 4
  %389 = sext i32 %388 to i64
  %390 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %391 = add nsw i64 %389, %390
  %392 = load i32, i32* %19, align 4
  %393 = call i32 @pci_write_config_dword(%struct.pci_dev* %387, i64 %391, i32 %392)
  %394 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %395 = load i32, i32* %14, align 4
  %396 = sext i32 %395 to i64
  %397 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %398 = add nsw i64 %396, %397
  %399 = load i32, i32* %20, align 4
  %400 = call i32 @pci_write_config_dword(%struct.pci_dev* %394, i64 %398, i32 %399)
  br label %401

401:                                              ; preds = %386, %381
  %402 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %403 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %402, i32 0, i32 2
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %403, align 8
  %405 = call i32 @pci_bus_set_aer_ops(%struct.TYPE_3__* %404)
  store i32 %405, i32* %21, align 4
  %406 = load i32, i32* %21, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %401
  br label %461

409:                                              ; preds = %401
  %410 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %411 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %410, i32 0, i32 2
  %412 = load %struct.TYPE_3__*, %struct.TYPE_3__** %411, align 8
  %413 = call i32 @pci_bus_set_aer_ops(%struct.TYPE_3__* %412)
  store i32 %413, i32* %21, align 4
  %414 = load i32, i32* %21, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %409
  br label %461

417:                                              ; preds = %409
  %418 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %419 = load i32, i32* @PCIE_PORT_SERVICE_AER, align 4
  %420 = call %struct.device* @pcie_port_find_device(%struct.pci_dev* %418, i32 %419)
  store %struct.device* %420, %struct.device** %11, align 8
  %421 = load %struct.device*, %struct.device** %11, align 8
  %422 = icmp ne %struct.device* %421, null
  br i1 %422, label %423, label %455

423:                                              ; preds = %417
  %424 = load %struct.device*, %struct.device** %11, align 8
  %425 = call %struct.pcie_device* @to_pcie_device(%struct.device* %424)
  store %struct.pcie_device* %425, %struct.pcie_device** %10, align 8
  %426 = load %struct.pcie_device*, %struct.pcie_device** %10, align 8
  %427 = call i32 @get_service_data(%struct.pcie_device* %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %436, label %429

429:                                              ; preds = %423
  %430 = load %struct.pcie_device*, %struct.pcie_device** %10, align 8
  %431 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %430, i32 0, i32 1
  %432 = load %struct.pci_dev*, %struct.pci_dev** %431, align 8
  %433 = call i32 @pci_warn(%struct.pci_dev* %432, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %434 = load i32, i32* @EPROTONOSUPPORT, align 4
  %435 = sub nsw i32 0, %434
  store i32 %435, i32* %21, align 4
  br label %461

436:                                              ; preds = %423
  %437 = load %struct.pcie_device*, %struct.pcie_device** %10, align 8
  %438 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %437, i32 0, i32 1
  %439 = load %struct.pci_dev*, %struct.pci_dev** %438, align 8
  %440 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %441 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.aer_error_inj*, %struct.aer_error_inj** %3, align 8
  %444 = getelementptr inbounds %struct.aer_error_inj, %struct.aer_error_inj* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %447 = call i32 @pci_name(%struct.pci_dev* %446)
  %448 = call i32 @pci_info(%struct.pci_dev* %439, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %442, i32 %445, i32 %447)
  %449 = call i32 (...) @local_irq_disable()
  %450 = load %struct.pcie_device*, %struct.pcie_device** %10, align 8
  %451 = getelementptr inbounds %struct.pcie_device, %struct.pcie_device* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = call i32 @generic_handle_irq(i32 %452)
  %454 = call i32 (...) @local_irq_enable()
  br label %460

455:                                              ; preds = %417
  %456 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %457 = call i32 @pci_err(%struct.pci_dev* %456, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %458 = load i32, i32* @ENODEV, align 4
  %459 = sub nsw i32 0, %458
  store i32 %459, i32* %21, align 4
  br label %460

460:                                              ; preds = %455, %436
  br label %461

461:                                              ; preds = %460, %429, %416, %408, %239, %216, %105, %97, %87, %58, %47
  %462 = load %struct.aer_error*, %struct.aer_error** %6, align 8
  %463 = call i32 @kfree(%struct.aer_error* %462)
  %464 = load %struct.aer_error*, %struct.aer_error** %7, align 8
  %465 = call i32 @kfree(%struct.aer_error* %464)
  %466 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %467 = call i32 @pci_dev_put(%struct.pci_dev* %466)
  %468 = load i32, i32* %21, align 4
  store i32 %468, i32* %2, align 4
  br label %469

469:                                              ; preds = %461, %39
  %470 = load i32, i32* %2, align 4
  ret i32 %470
}

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local %struct.pci_dev* @pcie_find_root_port(%struct.pci_dev*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local %struct.aer_error* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.aer_error* @__find_aer_error_by_dev(%struct.pci_dev*) #1

declare dso_local i32 @aer_error_init(%struct.aer_error*, i32, i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_bus_set_aer_ops(%struct.TYPE_3__*) #1

declare dso_local %struct.device* @pcie_port_find_device(%struct.pci_dev*, i32) #1

declare dso_local %struct.pcie_device* @to_pcie_device(%struct.device*) #1

declare dso_local i32 @get_service_data(%struct.pcie_device*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @kfree(%struct.aer_error*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
