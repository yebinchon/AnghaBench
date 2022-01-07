; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32 }
%struct.tegra_xusb_mbox_msg = type { i64, i32 }
%struct.resource = type { i32 }
%struct.tegra_xusb = type { i64, i64, i32, %struct.phy*, %struct.TYPE_40__*, i32, %struct.phy*, %struct.TYPE_41__*, %struct.phy**, %struct.TYPE_37__*, %struct.TYPE_38__*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy*, %struct.phy* }
%struct.TYPE_40__ = type { %struct.TYPE_39__, i32, i32, %struct.phy* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_37__ = type { i32, i32, %struct.TYPE_36__*, i32*, i64 }
%struct.TYPE_36__ = type { i32, i8* }
%struct.TYPE_38__ = type { i32 }
%struct.phy = type { i32 }
%struct.xhci_hcd = type { %struct.TYPE_40__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"xusb_host\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get xusb_host: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"xusb_falcon_src\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to get xusb_falcon_src: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"xusb_ss\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to get xusb_ss: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"xusb_ss_src\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to get xusb_ss_src: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"xusb_hs_src\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to get xusb_hs_src: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"xusb_fs_src\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"failed to get xusb_fs_src: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"pll_u_480m\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"failed to get pll_u_480m: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"clk_m\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"failed to get clk_m: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"pll_e\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"failed to get pll_e: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"failed to get xusb_host reset: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"failed to get xusb_ss reset: %d\0A\00", align 1
@TEGRA_POWERGATE_XUSBA = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [35 x i8] c"failed to enable XUSBA domain: %d\0A\00", align 1
@TEGRA_POWERGATE_XUSBC = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [35 x i8] c"failed to enable XUSBC domain: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"failed to get PHY %s: %ld\0A\00", align 1
@tegra_xhci_hc_driver = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [29 x i8] c"failed to enable device: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"failed to set DMA mask: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"failed to load firmware: %d\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [27 x i8] c"failed to add USB HCD: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"failed to create shared HCD\0A\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"failed to add shared HCD: %d\0A\00", align 1
@MBOX_CMD_MSG_ENABLED = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [31 x i8] c"failed to enable messages: %d\0A\00", align 1
@tegra_xusb_mbox_irq = common dso_local global i32 0, align 4
@tegra_xusb_mbox_thread = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [27 x i8] c"failed to request IRQ: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_xusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_xusb_mbox_msg, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.tegra_xusb*, align 8
  %8 = alloca %struct.xhci_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.phy*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [8 x i8], align 1
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = call i32 @BUILD_BUG_ON(i32 1)
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.tegra_xusb* @devm_kzalloc(%struct.TYPE_41__* %17, i32 192, i32 %18)
  store %struct.tegra_xusb* %19, %struct.tegra_xusb** %7, align 8
  %20 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %21 = icmp ne %struct.tegra_xusb* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %875

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call %struct.TYPE_37__* @of_device_get_match_data(%struct.TYPE_41__* %27)
  %29 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %30 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %29, i32 0, i32 9
  store %struct.TYPE_37__* %28, %struct.TYPE_37__** %30, align 8
  %31 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %32 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %31, i32 0, i32 5
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %37 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %36, i32 0, i32 7
  store %struct.TYPE_41__* %35, %struct.TYPE_41__** %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load i32, i32* @IORESOURCE_MEM, align 4
  %40 = call %struct.resource* @platform_get_resource(%struct.platform_device* %38, i32 %39, i32 0)
  store %struct.resource* %40, %struct.resource** %6, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = call i8* @devm_ioremap_resource(%struct.TYPE_41__* %42, %struct.resource* %43)
  %45 = bitcast i8* %44 to %struct.phy*
  %46 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %47 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %46, i32 0, i32 6
  store %struct.phy* %45, %struct.phy** %47, align 8
  %48 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %49 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %48, i32 0, i32 6
  %50 = load %struct.phy*, %struct.phy** %49, align 8
  %51 = call i64 @IS_ERR(%struct.phy* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %25
  %54 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %55 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %54, i32 0, i32 6
  %56 = load %struct.phy*, %struct.phy** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.phy* %56)
  store i32 %57, i32* %2, align 4
  br label %875

58:                                               ; preds = %25
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load i32, i32* @IORESOURCE_MEM, align 4
  %61 = call %struct.resource* @platform_get_resource(%struct.platform_device* %59, i32 %60, i32 1)
  store %struct.resource* %61, %struct.resource** %5, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = call i8* @devm_ioremap_resource(%struct.TYPE_41__* %63, %struct.resource* %64)
  %66 = bitcast i8* %65 to %struct.phy*
  %67 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %68 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %67, i32 0, i32 23
  store %struct.phy* %66, %struct.phy** %68, align 8
  %69 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %70 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %69, i32 0, i32 23
  %71 = load %struct.phy*, %struct.phy** %70, align 8
  %72 = call i64 @IS_ERR(%struct.phy* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %58
  %75 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %76 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %75, i32 0, i32 23
  %77 = load %struct.phy*, %struct.phy** %76, align 8
  %78 = call i32 @PTR_ERR(%struct.phy* %77)
  store i32 %78, i32* %2, align 4
  br label %875

79:                                               ; preds = %58
  %80 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %81 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %80, i32 0, i32 9
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %79
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = load i32, i32* @IORESOURCE_MEM, align 4
  %89 = call %struct.resource* @platform_get_resource(%struct.platform_device* %87, i32 %88, i32 2)
  store %struct.resource* %89, %struct.resource** %5, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load %struct.resource*, %struct.resource** %5, align 8
  %93 = call i8* @devm_ioremap_resource(%struct.TYPE_41__* %91, %struct.resource* %92)
  %94 = bitcast i8* %93 to %struct.phy*
  %95 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %96 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %95, i32 0, i32 22
  store %struct.phy* %94, %struct.phy** %96, align 8
  %97 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %98 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %97, i32 0, i32 22
  %99 = load %struct.phy*, %struct.phy** %98, align 8
  %100 = call i64 @IS_ERR(%struct.phy* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %86
  %103 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %104 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %103, i32 0, i32 22
  %105 = load %struct.phy*, %struct.phy** %104, align 8
  %106 = call i32 @PTR_ERR(%struct.phy* %105)
  store i32 %106, i32* %2, align 4
  br label %875

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107, %79
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = call i8* @platform_get_irq(%struct.platform_device* %109, i32 0)
  %111 = ptrtoint i8* %110 to i64
  %112 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %113 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %115 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %120 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %2, align 4
  br label %875

123:                                              ; preds = %108
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = call i8* @platform_get_irq(%struct.platform_device* %124, i32 1)
  %126 = ptrtoint i8* %125 to i64
  %127 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %128 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %130 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %123
  %134 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %135 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %2, align 4
  br label %875

138:                                              ; preds = %123
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call %struct.phy* @tegra_xusb_padctl_get(%struct.TYPE_41__* %140)
  %142 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %143 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %142, i32 0, i32 3
  store %struct.phy* %141, %struct.phy** %143, align 8
  %144 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %145 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %144, i32 0, i32 3
  %146 = load %struct.phy*, %struct.phy** %145, align 8
  %147 = call i64 @IS_ERR(%struct.phy* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %138
  %150 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %151 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %150, i32 0, i32 3
  %152 = load %struct.phy*, %struct.phy** %151, align 8
  %153 = call i32 @PTR_ERR(%struct.phy* %152)
  store i32 %153, i32* %2, align 4
  br label %875

154:                                              ; preds = %138
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = call i8* @devm_clk_get(%struct.TYPE_41__* %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %158 = bitcast i8* %157 to %struct.phy*
  %159 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %160 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %159, i32 0, i32 12
  store %struct.phy* %158, %struct.phy** %160, align 8
  %161 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %162 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %161, i32 0, i32 12
  %163 = load %struct.phy*, %struct.phy** %162, align 8
  %164 = call i64 @IS_ERR(%struct.phy* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %154
  %167 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %168 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %167, i32 0, i32 12
  %169 = load %struct.phy*, %struct.phy** %168, align 8
  %170 = call i32 @PTR_ERR(%struct.phy* %169)
  store i32 %170, i32* %13, align 4
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = load i32, i32* %13, align 4
  %174 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %172, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  br label %869

175:                                              ; preds = %154
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = call i8* @devm_clk_get(%struct.TYPE_41__* %177, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %179 = bitcast i8* %178 to %struct.phy*
  %180 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %181 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %180, i32 0, i32 21
  store %struct.phy* %179, %struct.phy** %181, align 8
  %182 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %183 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %182, i32 0, i32 21
  %184 = load %struct.phy*, %struct.phy** %183, align 8
  %185 = call i64 @IS_ERR(%struct.phy* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %175
  %188 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %189 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %188, i32 0, i32 21
  %190 = load %struct.phy*, %struct.phy** %189, align 8
  %191 = call i32 @PTR_ERR(%struct.phy* %190)
  store i32 %191, i32* %13, align 4
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = load i32, i32* %13, align 4
  %195 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %193, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  br label %869

196:                                              ; preds = %175
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = call i8* @devm_clk_get(%struct.TYPE_41__* %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %200 = bitcast i8* %199 to %struct.phy*
  %201 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %202 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %201, i32 0, i32 14
  store %struct.phy* %200, %struct.phy** %202, align 8
  %203 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %204 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %203, i32 0, i32 14
  %205 = load %struct.phy*, %struct.phy** %204, align 8
  %206 = call i64 @IS_ERR(%struct.phy* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %196
  %209 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %210 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %209, i32 0, i32 14
  %211 = load %struct.phy*, %struct.phy** %210, align 8
  %212 = call i32 @PTR_ERR(%struct.phy* %211)
  store i32 %212, i32* %13, align 4
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 0
  %215 = load i32, i32* %13, align 4
  %216 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %215)
  br label %869

217:                                              ; preds = %196
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = call i8* @devm_clk_get(%struct.TYPE_41__* %219, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %221 = bitcast i8* %220 to %struct.phy*
  %222 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %223 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %222, i32 0, i32 20
  store %struct.phy* %221, %struct.phy** %223, align 8
  %224 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %225 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %224, i32 0, i32 20
  %226 = load %struct.phy*, %struct.phy** %225, align 8
  %227 = call i64 @IS_ERR(%struct.phy* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %217
  %230 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %231 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %230, i32 0, i32 20
  %232 = load %struct.phy*, %struct.phy** %231, align 8
  %233 = call i32 @PTR_ERR(%struct.phy* %232)
  store i32 %233, i32* %13, align 4
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = load i32, i32* %13, align 4
  %237 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %235, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %236)
  br label %869

238:                                              ; preds = %217
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = call i8* @devm_clk_get(%struct.TYPE_41__* %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %242 = bitcast i8* %241 to %struct.phy*
  %243 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %244 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %243, i32 0, i32 19
  store %struct.phy* %242, %struct.phy** %244, align 8
  %245 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %246 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %245, i32 0, i32 19
  %247 = load %struct.phy*, %struct.phy** %246, align 8
  %248 = call i64 @IS_ERR(%struct.phy* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %238
  %251 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %252 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %251, i32 0, i32 19
  %253 = load %struct.phy*, %struct.phy** %252, align 8
  %254 = call i32 @PTR_ERR(%struct.phy* %253)
  store i32 %254, i32* %13, align 4
  %255 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %256 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %255, i32 0, i32 0
  %257 = load i32, i32* %13, align 4
  %258 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %257)
  br label %869

259:                                              ; preds = %238
  %260 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %261 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %260, i32 0, i32 0
  %262 = call i8* @devm_clk_get(%struct.TYPE_41__* %261, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %263 = bitcast i8* %262 to %struct.phy*
  %264 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %265 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %264, i32 0, i32 18
  store %struct.phy* %263, %struct.phy** %265, align 8
  %266 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %267 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %266, i32 0, i32 18
  %268 = load %struct.phy*, %struct.phy** %267, align 8
  %269 = call i64 @IS_ERR(%struct.phy* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %259
  %272 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %273 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %272, i32 0, i32 18
  %274 = load %struct.phy*, %struct.phy** %273, align 8
  %275 = call i32 @PTR_ERR(%struct.phy* %274)
  store i32 %275, i32* %13, align 4
  %276 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %277 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %276, i32 0, i32 0
  %278 = load i32, i32* %13, align 4
  %279 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %277, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %278)
  br label %869

280:                                              ; preds = %259
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = call i8* @devm_clk_get(%struct.TYPE_41__* %282, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %284 = bitcast i8* %283 to %struct.phy*
  %285 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %286 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %285, i32 0, i32 17
  store %struct.phy* %284, %struct.phy** %286, align 8
  %287 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %288 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %287, i32 0, i32 17
  %289 = load %struct.phy*, %struct.phy** %288, align 8
  %290 = call i64 @IS_ERR(%struct.phy* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %280
  %293 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %294 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %293, i32 0, i32 17
  %295 = load %struct.phy*, %struct.phy** %294, align 8
  %296 = call i32 @PTR_ERR(%struct.phy* %295)
  store i32 %296, i32* %13, align 4
  %297 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %298 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %297, i32 0, i32 0
  %299 = load i32, i32* %13, align 4
  %300 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %298, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %299)
  br label %869

301:                                              ; preds = %280
  %302 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %303 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %302, i32 0, i32 0
  %304 = call i8* @devm_clk_get(%struct.TYPE_41__* %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %305 = bitcast i8* %304 to %struct.phy*
  %306 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %307 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %306, i32 0, i32 16
  store %struct.phy* %305, %struct.phy** %307, align 8
  %308 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %309 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %308, i32 0, i32 16
  %310 = load %struct.phy*, %struct.phy** %309, align 8
  %311 = call i64 @IS_ERR(%struct.phy* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %322

313:                                              ; preds = %301
  %314 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %315 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %314, i32 0, i32 16
  %316 = load %struct.phy*, %struct.phy** %315, align 8
  %317 = call i32 @PTR_ERR(%struct.phy* %316)
  store i32 %317, i32* %13, align 4
  %318 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %319 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %318, i32 0, i32 0
  %320 = load i32, i32* %13, align 4
  %321 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %319, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %320)
  br label %869

322:                                              ; preds = %301
  %323 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %324 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %323, i32 0, i32 0
  %325 = call i8* @devm_clk_get(%struct.TYPE_41__* %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %326 = bitcast i8* %325 to %struct.phy*
  %327 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %328 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %327, i32 0, i32 15
  store %struct.phy* %326, %struct.phy** %328, align 8
  %329 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %330 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %329, i32 0, i32 15
  %331 = load %struct.phy*, %struct.phy** %330, align 8
  %332 = call i64 @IS_ERR(%struct.phy* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %343

334:                                              ; preds = %322
  %335 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %336 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %335, i32 0, i32 15
  %337 = load %struct.phy*, %struct.phy** %336, align 8
  %338 = call i32 @PTR_ERR(%struct.phy* %337)
  store i32 %338, i32* %13, align 4
  %339 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %340 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %339, i32 0, i32 0
  %341 = load i32, i32* %13, align 4
  %342 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %340, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 %341)
  br label %869

343:                                              ; preds = %322
  %344 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %345 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @of_property_read_bool(i32 %347, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %427, label %350

350:                                              ; preds = %343
  %351 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %352 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %351, i32 0, i32 0
  %353 = call i8* @devm_reset_control_get(%struct.TYPE_41__* %352, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %354 = bitcast i8* %353 to %struct.phy*
  %355 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %356 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %355, i32 0, i32 11
  store %struct.phy* %354, %struct.phy** %356, align 8
  %357 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %358 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %357, i32 0, i32 11
  %359 = load %struct.phy*, %struct.phy** %358, align 8
  %360 = call i64 @IS_ERR(%struct.phy* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %371

362:                                              ; preds = %350
  %363 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %364 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %363, i32 0, i32 11
  %365 = load %struct.phy*, %struct.phy** %364, align 8
  %366 = call i32 @PTR_ERR(%struct.phy* %365)
  store i32 %366, i32* %13, align 4
  %367 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %368 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %367, i32 0, i32 0
  %369 = load i32, i32* %13, align 4
  %370 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %368, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 %369)
  br label %869

371:                                              ; preds = %350
  %372 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %373 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %372, i32 0, i32 0
  %374 = call i8* @devm_reset_control_get(%struct.TYPE_41__* %373, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %375 = bitcast i8* %374 to %struct.phy*
  %376 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %377 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %376, i32 0, i32 13
  store %struct.phy* %375, %struct.phy** %377, align 8
  %378 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %379 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %378, i32 0, i32 13
  %380 = load %struct.phy*, %struct.phy** %379, align 8
  %381 = call i64 @IS_ERR(%struct.phy* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %392

383:                                              ; preds = %371
  %384 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %385 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %384, i32 0, i32 13
  %386 = load %struct.phy*, %struct.phy** %385, align 8
  %387 = call i32 @PTR_ERR(%struct.phy* %386)
  store i32 %387, i32* %13, align 4
  %388 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %389 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %388, i32 0, i32 0
  %390 = load i32, i32* %13, align 4
  %391 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %389, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 %390)
  br label %869

392:                                              ; preds = %371
  %393 = load i32, i32* @TEGRA_POWERGATE_XUSBA, align 4
  %394 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %395 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %394, i32 0, i32 14
  %396 = load %struct.phy*, %struct.phy** %395, align 8
  %397 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %398 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %397, i32 0, i32 13
  %399 = load %struct.phy*, %struct.phy** %398, align 8
  %400 = call i32 @tegra_powergate_sequence_power_up(i32 %393, %struct.phy* %396, %struct.phy* %399)
  store i32 %400, i32* %13, align 4
  %401 = load i32, i32* %13, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %408

403:                                              ; preds = %392
  %404 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %405 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %404, i32 0, i32 0
  %406 = load i32, i32* %13, align 4
  %407 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %405, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i32 %406)
  br label %869

408:                                              ; preds = %392
  %409 = load i32, i32* @TEGRA_POWERGATE_XUSBC, align 4
  %410 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %411 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %410, i32 0, i32 12
  %412 = load %struct.phy*, %struct.phy** %411, align 8
  %413 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %414 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %413, i32 0, i32 11
  %415 = load %struct.phy*, %struct.phy** %414, align 8
  %416 = call i32 @tegra_powergate_sequence_power_up(i32 %409, %struct.phy* %412, %struct.phy* %415)
  store i32 %416, i32* %13, align 4
  %417 = load i32, i32* %13, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %426

419:                                              ; preds = %408
  %420 = load i32, i32* @TEGRA_POWERGATE_XUSBA, align 4
  %421 = call i32 @tegra_powergate_power_off(i32 %420)
  %422 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %423 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %422, i32 0, i32 0
  %424 = load i32, i32* %13, align 4
  %425 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %423, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i32 %424)
  br label %869

426:                                              ; preds = %408
  br label %436

427:                                              ; preds = %343
  %428 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %429 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %428, i32 0, i32 0
  %430 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %431 = call i32 @tegra_xusb_powerdomain_init(%struct.TYPE_41__* %429, %struct.tegra_xusb* %430)
  store i32 %431, i32* %13, align 4
  %432 = load i32, i32* %13, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %427
  br label %851

435:                                              ; preds = %427
  br label %436

436:                                              ; preds = %435, %426
  %437 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %438 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %437, i32 0, i32 0
  %439 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %440 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %439, i32 0, i32 9
  %441 = load %struct.TYPE_37__*, %struct.TYPE_37__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @GFP_KERNEL, align 4
  %445 = call i8* @devm_kcalloc(%struct.TYPE_41__* %438, i32 %443, i32 4, i32 %444)
  %446 = bitcast i8* %445 to %struct.TYPE_38__*
  %447 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %448 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %447, i32 0, i32 10
  store %struct.TYPE_38__* %446, %struct.TYPE_38__** %448, align 8
  %449 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %450 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %449, i32 0, i32 10
  %451 = load %struct.TYPE_38__*, %struct.TYPE_38__** %450, align 8
  %452 = icmp ne %struct.TYPE_38__* %451, null
  br i1 %452, label %456, label %453

453:                                              ; preds = %436
  %454 = load i32, i32* @ENOMEM, align 4
  %455 = sub nsw i32 0, %454
  store i32 %455, i32* %13, align 4
  br label %851

456:                                              ; preds = %436
  store i32 0, i32* %9, align 4
  br label %457

457:                                              ; preds = %482, %456
  %458 = load i32, i32* %9, align 4
  %459 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %460 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %459, i32 0, i32 9
  %461 = load %struct.TYPE_37__*, %struct.TYPE_37__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = icmp ult i32 %458, %463
  br i1 %464, label %465, label %485

465:                                              ; preds = %457
  %466 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %467 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %466, i32 0, i32 9
  %468 = load %struct.TYPE_37__*, %struct.TYPE_37__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %468, i32 0, i32 3
  %470 = load i32*, i32** %469, align 8
  %471 = load i32, i32* %9, align 4
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %476 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %475, i32 0, i32 10
  %477 = load %struct.TYPE_38__*, %struct.TYPE_38__** %476, align 8
  %478 = load i32, i32* %9, align 4
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %480, i32 0, i32 0
  store i32 %474, i32* %481, align 4
  br label %482

482:                                              ; preds = %465
  %483 = load i32, i32* %9, align 4
  %484 = add i32 %483, 1
  store i32 %484, i32* %9, align 4
  br label %457

485:                                              ; preds = %457
  %486 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %487 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %486, i32 0, i32 0
  %488 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %489 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %488, i32 0, i32 9
  %490 = load %struct.TYPE_37__*, %struct.TYPE_37__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %494 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %493, i32 0, i32 10
  %495 = load %struct.TYPE_38__*, %struct.TYPE_38__** %494, align 8
  %496 = call i32 @devm_regulator_bulk_get(%struct.TYPE_41__* %487, i32 %492, %struct.TYPE_38__* %495)
  store i32 %496, i32* %13, align 4
  %497 = load i32, i32* %13, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %504

499:                                              ; preds = %485
  %500 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %501 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %500, i32 0, i32 0
  %502 = load i32, i32* %13, align 4
  %503 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %501, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i32 %502)
  br label %851

504:                                              ; preds = %485
  store i32 0, i32* %9, align 4
  br label %505

505:                                              ; preds = %528, %504
  %506 = load i32, i32* %9, align 4
  %507 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %508 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %507, i32 0, i32 9
  %509 = load %struct.TYPE_37__*, %struct.TYPE_37__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = icmp ult i32 %506, %511
  br i1 %512, label %513, label %531

513:                                              ; preds = %505
  %514 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %515 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %514, i32 0, i32 9
  %516 = load %struct.TYPE_37__*, %struct.TYPE_37__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %516, i32 0, i32 2
  %518 = load %struct.TYPE_36__*, %struct.TYPE_36__** %517, align 8
  %519 = load i32, i32* %9, align 4
  %520 = zext i32 %519 to i64
  %521 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %518, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %525 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %524, i32 0, i32 2
  %526 = load i32, i32* %525, align 8
  %527 = add i32 %526, %523
  store i32 %527, i32* %525, align 8
  br label %528

528:                                              ; preds = %513
  %529 = load i32, i32* %9, align 4
  %530 = add i32 %529, 1
  store i32 %530, i32* %9, align 4
  br label %505

531:                                              ; preds = %505
  %532 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %533 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %532, i32 0, i32 0
  %534 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %535 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %534, i32 0, i32 2
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* @GFP_KERNEL, align 4
  %538 = call i8* @devm_kcalloc(%struct.TYPE_41__* %533, i32 %536, i32 8, i32 %537)
  %539 = bitcast i8* %538 to %struct.phy**
  %540 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %541 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %540, i32 0, i32 8
  store %struct.phy** %539, %struct.phy*** %541, align 8
  %542 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %543 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %542, i32 0, i32 8
  %544 = load %struct.phy**, %struct.phy*** %543, align 8
  %545 = icmp ne %struct.phy** %544, null
  br i1 %545, label %549, label %546

546:                                              ; preds = %531
  %547 = load i32, i32* @ENOMEM, align 4
  %548 = sub nsw i32 0, %547
  store i32 %548, i32* %13, align 4
  br label %851

549:                                              ; preds = %531
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %550

550:                                              ; preds = %615, %549
  %551 = load i32, i32* %9, align 4
  %552 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %553 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %552, i32 0, i32 9
  %554 = load %struct.TYPE_37__*, %struct.TYPE_37__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = icmp ult i32 %551, %556
  br i1 %557, label %558, label %618

558:                                              ; preds = %550
  store i32 0, i32* %10, align 4
  br label %559

559:                                              ; preds = %611, %558
  %560 = load i32, i32* %10, align 4
  %561 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %562 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %561, i32 0, i32 9
  %563 = load %struct.TYPE_37__*, %struct.TYPE_37__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %563, i32 0, i32 2
  %565 = load %struct.TYPE_36__*, %struct.TYPE_36__** %564, align 8
  %566 = load i32, i32* %9, align 4
  %567 = zext i32 %566 to i64
  %568 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %565, i64 %567
  %569 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = icmp ult i32 %560, %570
  br i1 %571, label %572, label %614

572:                                              ; preds = %559
  %573 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %574 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %575 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %574, i32 0, i32 9
  %576 = load %struct.TYPE_37__*, %struct.TYPE_37__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %576, i32 0, i32 2
  %578 = load %struct.TYPE_36__*, %struct.TYPE_36__** %577, align 8
  %579 = load i32, i32* %9, align 4
  %580 = zext i32 %579 to i64
  %581 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %578, i64 %580
  %582 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %581, i32 0, i32 1
  %583 = load i8*, i8** %582, align 8
  %584 = load i32, i32* %10, align 4
  %585 = call i32 @snprintf(i8* %573, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8* %583, i32 %584)
  %586 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %587 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %586, i32 0, i32 0
  %588 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %589 = call %struct.phy* @devm_phy_optional_get(%struct.TYPE_41__* %587, i8* %588)
  store %struct.phy* %589, %struct.phy** %12, align 8
  %590 = load %struct.phy*, %struct.phy** %12, align 8
  %591 = call i64 @IS_ERR(%struct.phy* %590)
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %602

593:                                              ; preds = %572
  %594 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %595 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %594, i32 0, i32 0
  %596 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %597 = load %struct.phy*, %struct.phy** %12, align 8
  %598 = call i32 @PTR_ERR(%struct.phy* %597)
  %599 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %595, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i8* %596, i32 %598)
  %600 = load %struct.phy*, %struct.phy** %12, align 8
  %601 = call i32 @PTR_ERR(%struct.phy* %600)
  store i32 %601, i32* %13, align 4
  br label %851

602:                                              ; preds = %572
  %603 = load %struct.phy*, %struct.phy** %12, align 8
  %604 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %605 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %604, i32 0, i32 8
  %606 = load %struct.phy**, %struct.phy*** %605, align 8
  %607 = load i32, i32* %11, align 4
  %608 = add i32 %607, 1
  store i32 %608, i32* %11, align 4
  %609 = zext i32 %607 to i64
  %610 = getelementptr inbounds %struct.phy*, %struct.phy** %606, i64 %609
  store %struct.phy* %603, %struct.phy** %610, align 8
  br label %611

611:                                              ; preds = %602
  %612 = load i32, i32* %10, align 4
  %613 = add i32 %612, 1
  store i32 %613, i32* %10, align 4
  br label %559

614:                                              ; preds = %559
  br label %615

615:                                              ; preds = %614
  %616 = load i32, i32* %9, align 4
  %617 = add i32 %616, 1
  store i32 %617, i32* %9, align 4
  br label %550

618:                                              ; preds = %550
  %619 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %620 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %619, i32 0, i32 0
  %621 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %622 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %621, i32 0, i32 0
  %623 = call i32 @dev_name(%struct.TYPE_41__* %622)
  %624 = call %struct.TYPE_40__* @usb_create_hcd(i32* @tegra_xhci_hc_driver, %struct.TYPE_41__* %620, i32 %623)
  %625 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %626 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %625, i32 0, i32 4
  store %struct.TYPE_40__* %624, %struct.TYPE_40__** %626, align 8
  %627 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %628 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %627, i32 0, i32 4
  %629 = load %struct.TYPE_40__*, %struct.TYPE_40__** %628, align 8
  %630 = icmp ne %struct.TYPE_40__* %629, null
  br i1 %630, label %634, label %631

631:                                              ; preds = %618
  %632 = load i32, i32* @ENOMEM, align 4
  %633 = sub nsw i32 0, %632
  store i32 %633, i32* %13, align 4
  br label %851

634:                                              ; preds = %618
  %635 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %636 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %637 = call i32 @platform_set_drvdata(%struct.platform_device* %635, %struct.tegra_xusb* %636)
  %638 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %639 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %638, i32 0, i32 0
  %640 = call i32 @pm_runtime_enable(%struct.TYPE_41__* %639)
  %641 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %642 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %641, i32 0, i32 0
  %643 = call i64 @pm_runtime_enabled(%struct.TYPE_41__* %642)
  %644 = icmp ne i64 %643, 0
  br i1 %644, label %645, label %649

645:                                              ; preds = %634
  %646 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %647 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %646, i32 0, i32 0
  %648 = call i32 @pm_runtime_get_sync(%struct.TYPE_41__* %647)
  store i32 %648, i32* %13, align 4
  br label %653

649:                                              ; preds = %634
  %650 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %651 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %650, i32 0, i32 0
  %652 = call i32 @tegra_xusb_runtime_resume(%struct.TYPE_41__* %651)
  store i32 %652, i32* %13, align 4
  br label %653

653:                                              ; preds = %649, %645
  %654 = load i32, i32* %13, align 4
  %655 = icmp slt i32 %654, 0
  br i1 %655, label %656, label %661

656:                                              ; preds = %653
  %657 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %658 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %657, i32 0, i32 0
  %659 = load i32, i32* %13, align 4
  %660 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %658, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 %659)
  br label %843

661:                                              ; preds = %653
  %662 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %663 = load %struct.resource*, %struct.resource** %6, align 8
  %664 = call i32 @tegra_xusb_config(%struct.tegra_xusb* %662, %struct.resource* %663)
  %665 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %666 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %665, i32 0, i32 7
  %667 = load %struct.TYPE_41__*, %struct.TYPE_41__** %666, align 8
  %668 = call i32 @DMA_BIT_MASK(i32 40)
  %669 = call i32 @dma_set_mask_and_coherent(%struct.TYPE_41__* %667, i32 %668)
  store i32 %669, i32* %13, align 4
  %670 = load i32, i32* %13, align 4
  %671 = icmp slt i32 %670, 0
  br i1 %671, label %672, label %677

672:                                              ; preds = %661
  %673 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %674 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %673, i32 0, i32 0
  %675 = load i32, i32* %13, align 4
  %676 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %674, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i32 %675)
  br label %833

677:                                              ; preds = %661
  %678 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %679 = call i32 @tegra_xusb_load_firmware(%struct.tegra_xusb* %678)
  store i32 %679, i32* %13, align 4
  %680 = load i32, i32* %13, align 4
  %681 = icmp slt i32 %680, 0
  br i1 %681, label %682, label %687

682:                                              ; preds = %677
  %683 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %684 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %683, i32 0, i32 0
  %685 = load i32, i32* %13, align 4
  %686 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %684, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i32 %685)
  br label %833

687:                                              ; preds = %677
  %688 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %689 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %688, i32 0, i32 6
  %690 = load %struct.phy*, %struct.phy** %689, align 8
  %691 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %692 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %691, i32 0, i32 4
  %693 = load %struct.TYPE_40__*, %struct.TYPE_40__** %692, align 8
  %694 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %693, i32 0, i32 3
  store %struct.phy* %690, %struct.phy** %694, align 8
  %695 = load %struct.resource*, %struct.resource** %6, align 8
  %696 = getelementptr inbounds %struct.resource, %struct.resource* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 4
  %698 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %699 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %698, i32 0, i32 4
  %700 = load %struct.TYPE_40__*, %struct.TYPE_40__** %699, align 8
  %701 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %700, i32 0, i32 2
  store i32 %697, i32* %701, align 8
  %702 = load %struct.resource*, %struct.resource** %6, align 8
  %703 = call i32 @resource_size(%struct.resource* %702)
  %704 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %705 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %704, i32 0, i32 4
  %706 = load %struct.TYPE_40__*, %struct.TYPE_40__** %705, align 8
  %707 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %706, i32 0, i32 1
  store i32 %703, i32* %707, align 4
  %708 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %709 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %708, i32 0, i32 4
  %710 = load %struct.TYPE_40__*, %struct.TYPE_40__** %709, align 8
  %711 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %712 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %711, i32 0, i32 0
  %713 = load i64, i64* %712, align 8
  %714 = trunc i64 %713 to i32
  %715 = load i32, i32* @IRQF_SHARED, align 4
  %716 = call i32 @usb_add_hcd(%struct.TYPE_40__* %710, i32 %714, i32 %715)
  store i32 %716, i32* %13, align 4
  %717 = load i32, i32* %13, align 4
  %718 = icmp slt i32 %717, 0
  br i1 %718, label %719, label %724

719:                                              ; preds = %687
  %720 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %721 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %720, i32 0, i32 0
  %722 = load i32, i32* %13, align 4
  %723 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %721, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 %722)
  br label %833

724:                                              ; preds = %687
  %725 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %726 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %725, i32 0, i32 4
  %727 = load %struct.TYPE_40__*, %struct.TYPE_40__** %726, align 8
  %728 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %727, i32 0, i32 0
  %729 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %728, i32 0, i32 0
  %730 = load i32, i32* %729, align 8
  %731 = call i32 @device_wakeup_enable(i32 %730)
  %732 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %733 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %732, i32 0, i32 4
  %734 = load %struct.TYPE_40__*, %struct.TYPE_40__** %733, align 8
  %735 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.TYPE_40__* %734)
  store %struct.xhci_hcd* %735, %struct.xhci_hcd** %8, align 8
  %736 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %737 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %736, i32 0, i32 0
  %738 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %739 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %738, i32 0, i32 0
  %740 = call i32 @dev_name(%struct.TYPE_41__* %739)
  %741 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %742 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %741, i32 0, i32 4
  %743 = load %struct.TYPE_40__*, %struct.TYPE_40__** %742, align 8
  %744 = call %struct.TYPE_40__* @usb_create_shared_hcd(i32* @tegra_xhci_hc_driver, %struct.TYPE_41__* %737, i32 %740, %struct.TYPE_40__* %743)
  %745 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %746 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %745, i32 0, i32 0
  store %struct.TYPE_40__* %744, %struct.TYPE_40__** %746, align 8
  %747 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %748 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %747, i32 0, i32 0
  %749 = load %struct.TYPE_40__*, %struct.TYPE_40__** %748, align 8
  %750 = icmp ne %struct.TYPE_40__* %749, null
  br i1 %750, label %757, label %751

751:                                              ; preds = %724
  %752 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %753 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %752, i32 0, i32 0
  %754 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %753, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0))
  %755 = load i32, i32* @ENOMEM, align 4
  %756 = sub nsw i32 0, %755
  store i32 %756, i32* %13, align 4
  br label %828

757:                                              ; preds = %724
  %758 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %759 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %758, i32 0, i32 0
  %760 = load %struct.TYPE_40__*, %struct.TYPE_40__** %759, align 8
  %761 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %762 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %761, i32 0, i32 0
  %763 = load i64, i64* %762, align 8
  %764 = trunc i64 %763 to i32
  %765 = load i32, i32* @IRQF_SHARED, align 4
  %766 = call i32 @usb_add_hcd(%struct.TYPE_40__* %760, i32 %764, i32 %765)
  store i32 %766, i32* %13, align 4
  %767 = load i32, i32* %13, align 4
  %768 = icmp slt i32 %767, 0
  br i1 %768, label %769, label %774

769:                                              ; preds = %757
  %770 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %771 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %770, i32 0, i32 0
  %772 = load i32, i32* %13, align 4
  %773 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %771, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0), i32 %772)
  br label %823

774:                                              ; preds = %757
  %775 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %776 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %775, i32 0, i32 5
  %777 = call i32 @mutex_lock(i32* %776)
  %778 = load i32, i32* @MBOX_CMD_MSG_ENABLED, align 4
  %779 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, %struct.tegra_xusb_mbox_msg* %4, i32 0, i32 1
  store i32 %778, i32* %779, align 8
  %780 = getelementptr inbounds %struct.tegra_xusb_mbox_msg, %struct.tegra_xusb_mbox_msg* %4, i32 0, i32 0
  store i64 0, i64* %780, align 8
  %781 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %782 = call i32 @tegra_xusb_mbox_send(%struct.tegra_xusb* %781, %struct.tegra_xusb_mbox_msg* %4)
  store i32 %782, i32* %13, align 4
  %783 = load i32, i32* %13, align 4
  %784 = icmp slt i32 %783, 0
  br i1 %784, label %785, label %793

785:                                              ; preds = %774
  %786 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %787 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %786, i32 0, i32 0
  %788 = load i32, i32* %13, align 4
  %789 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %787, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i32 %788)
  %790 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %791 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %790, i32 0, i32 5
  %792 = call i32 @mutex_unlock(i32* %791)
  br label %818

793:                                              ; preds = %774
  %794 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %795 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %794, i32 0, i32 5
  %796 = call i32 @mutex_unlock(i32* %795)
  %797 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %798 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %797, i32 0, i32 0
  %799 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %800 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %799, i32 0, i32 1
  %801 = load i64, i64* %800, align 8
  %802 = trunc i64 %801 to i32
  %803 = load i32, i32* @tegra_xusb_mbox_irq, align 4
  %804 = load i32, i32* @tegra_xusb_mbox_thread, align 4
  %805 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %806 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %805, i32 0, i32 0
  %807 = call i32 @dev_name(%struct.TYPE_41__* %806)
  %808 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %809 = call i32 @devm_request_threaded_irq(%struct.TYPE_41__* %798, i32 %802, i32 %803, i32 %804, i32 0, i32 %807, %struct.tegra_xusb* %808)
  store i32 %809, i32* %13, align 4
  %810 = load i32, i32* %13, align 4
  %811 = icmp slt i32 %810, 0
  br i1 %811, label %812, label %817

812:                                              ; preds = %793
  %813 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %814 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %813, i32 0, i32 0
  %815 = load i32, i32* %13, align 4
  %816 = call i32 (%struct.TYPE_41__*, i8*, ...) @dev_err(%struct.TYPE_41__* %814, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0), i32 %815)
  br label %818

817:                                              ; preds = %793
  store i32 0, i32* %2, align 4
  br label %875

818:                                              ; preds = %812, %785
  %819 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %820 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %819, i32 0, i32 0
  %821 = load %struct.TYPE_40__*, %struct.TYPE_40__** %820, align 8
  %822 = call i32 @usb_remove_hcd(%struct.TYPE_40__* %821)
  br label %823

823:                                              ; preds = %818, %769
  %824 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %825 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %824, i32 0, i32 0
  %826 = load %struct.TYPE_40__*, %struct.TYPE_40__** %825, align 8
  %827 = call i32 @usb_put_hcd(%struct.TYPE_40__* %826)
  br label %828

828:                                              ; preds = %823, %751
  %829 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %830 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %829, i32 0, i32 4
  %831 = load %struct.TYPE_40__*, %struct.TYPE_40__** %830, align 8
  %832 = call i32 @usb_remove_hcd(%struct.TYPE_40__* %831)
  br label %833

833:                                              ; preds = %828, %719, %682, %672
  %834 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %835 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %834, i32 0, i32 0
  %836 = call i32 @pm_runtime_status_suspended(%struct.TYPE_41__* %835)
  %837 = icmp ne i32 %836, 0
  br i1 %837, label %842, label %838

838:                                              ; preds = %833
  %839 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %840 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %839, i32 0, i32 0
  %841 = call i32 @tegra_xusb_runtime_suspend(%struct.TYPE_41__* %840)
  br label %842

842:                                              ; preds = %838, %833
  br label %843

843:                                              ; preds = %842, %656
  %844 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %845 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %844, i32 0, i32 0
  %846 = call i32 @pm_runtime_disable(%struct.TYPE_41__* %845)
  %847 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %848 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %847, i32 0, i32 4
  %849 = load %struct.TYPE_40__*, %struct.TYPE_40__** %848, align 8
  %850 = call i32 @usb_put_hcd(%struct.TYPE_40__* %849)
  br label %851

851:                                              ; preds = %843, %631, %593, %546, %499, %453, %434
  %852 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %853 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %852, i32 0, i32 0
  %854 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %853, i32 0, i32 0
  %855 = load i32, i32* %854, align 4
  %856 = call i32 @of_property_read_bool(i32 %855, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %857 = icmp ne i32 %856, 0
  br i1 %857, label %863, label %858

858:                                              ; preds = %851
  %859 = load i32, i32* @TEGRA_POWERGATE_XUSBC, align 4
  %860 = call i32 @tegra_powergate_power_off(i32 %859)
  %861 = load i32, i32* @TEGRA_POWERGATE_XUSBA, align 4
  %862 = call i32 @tegra_powergate_power_off(i32 %861)
  br label %868

863:                                              ; preds = %851
  %864 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %865 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %864, i32 0, i32 0
  %866 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %867 = call i32 @tegra_xusb_powerdomain_remove(%struct.TYPE_41__* %865, %struct.tegra_xusb* %866)
  br label %868

868:                                              ; preds = %863, %858
  br label %869

869:                                              ; preds = %868, %419, %403, %383, %362, %334, %313, %292, %271, %250, %229, %208, %187, %166
  %870 = load %struct.tegra_xusb*, %struct.tegra_xusb** %7, align 8
  %871 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %870, i32 0, i32 3
  %872 = load %struct.phy*, %struct.phy** %871, align 8
  %873 = call i32 @tegra_xusb_padctl_put(%struct.phy* %872)
  %874 = load i32, i32* %13, align 4
  store i32 %874, i32* %2, align 4
  br label %875

875:                                              ; preds = %869, %817, %149, %133, %118, %102, %74, %53, %22
  %876 = load i32, i32* %2, align 4
  ret i32 %876
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.tegra_xusb* @devm_kzalloc(%struct.TYPE_41__*, i32, i32) #1

declare dso_local %struct.TYPE_37__* @of_device_get_match_data(%struct.TYPE_41__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_41__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.phy* @tegra_xusb_padctl_get(%struct.TYPE_41__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_41__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_41__*, i8*, ...) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.TYPE_41__*, i8*) #1

declare dso_local i32 @tegra_powergate_sequence_power_up(i32, %struct.phy*, %struct.phy*) #1

declare dso_local i32 @tegra_powergate_power_off(i32) #1

declare dso_local i32 @tegra_xusb_powerdomain_init(%struct.TYPE_41__*, %struct.tegra_xusb*) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_41__*, i32, i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_41__*, i32, %struct.TYPE_38__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local %struct.phy* @devm_phy_optional_get(%struct.TYPE_41__*, i8*) #1

declare dso_local %struct.TYPE_40__* @usb_create_hcd(i32*, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_41__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_xusb*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_41__*) #1

declare dso_local i64 @pm_runtime_enabled(%struct.TYPE_41__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_41__*) #1

declare dso_local i32 @tegra_xusb_runtime_resume(%struct.TYPE_41__*) #1

declare dso_local i32 @tegra_xusb_config(%struct.tegra_xusb*, %struct.resource*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @tegra_xusb_load_firmware(%struct.tegra_xusb*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @usb_add_hcd(%struct.TYPE_40__*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_40__* @usb_create_shared_hcd(i32*, %struct.TYPE_41__*, i32, %struct.TYPE_40__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tegra_xusb_mbox_send(%struct.tegra_xusb*, %struct.tegra_xusb_mbox_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_41__*, i32, i32, i32, i32, i32, %struct.tegra_xusb*) #1

declare dso_local i32 @usb_remove_hcd(%struct.TYPE_40__*) #1

declare dso_local i32 @usb_put_hcd(%struct.TYPE_40__*) #1

declare dso_local i32 @pm_runtime_status_suspended(%struct.TYPE_41__*) #1

declare dso_local i32 @tegra_xusb_runtime_suspend(%struct.TYPE_41__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_41__*) #1

declare dso_local i32 @tegra_xusb_powerdomain_remove(%struct.TYPE_41__*, %struct.tegra_xusb*) #1

declare dso_local i32 @tegra_xusb_padctl_put(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
