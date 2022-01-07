; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_net_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_net_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.xlr_net_priv = type { i32, i32, i32, %struct.xlr_net_data*, i32, i32, i32, i32, i32, i32, %struct.xlr_adapter*, i32, %struct.net_device*, %struct.platform_device* }
%struct.xlr_net_data = type { i32, i32, i32, i32, i32*, i32* }
%struct.xlr_adapter = type { %struct.net_device** }
%struct.net_device = type { i32*, i32, i32*, i32 }
%struct.resource = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"XLR/XLS Ethernet Driver controller %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Allocation of Ethernet device failed\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"No irq resource for MAC %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@xlr_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MAX_NUM_DESC_SPILL = common dso_local global i64 0, align 8
@xlr_ethtool_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"gmac\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gmac%d init failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Registering netdev failed for gmac%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xlr_net_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_net_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.xlr_net_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.xlr_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.xlr_net_priv* null, %struct.xlr_net_priv** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.xlr_adapter* @devm_kzalloc(%struct.TYPE_5__* %15, i32 8, i32 %16)
  store %struct.xlr_adapter* %17, %struct.xlr_adapter** %7, align 8
  %18 = load %struct.xlr_adapter*, %struct.xlr_adapter** %7, align 8
  %19 = icmp ne %struct.xlr_adapter* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %262

23:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %249, %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 2
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %252

31:                                               ; preds = %24
  %32 = call %struct.net_device* @alloc_etherdev_mq(i32 80, i32 32)
  store %struct.net_device* %32, %struct.net_device** %5, align 8
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 2
  %38 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %262

41:                                               ; preds = %31
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call %struct.xlr_net_priv* @netdev_priv(%struct.net_device* %42)
  store %struct.xlr_net_priv* %43, %struct.xlr_net_priv** %4, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %46 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %45, i32 0, i32 13
  store %struct.platform_device* %44, %struct.platform_device** %46, align 8
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %49 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %48, i32 0, i32 12
  store %struct.net_device* %47, %struct.net_device** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %52, 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %57 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.xlr_net_data*
  %63 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %64 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %63, i32 0, i32 3
  store %struct.xlr_net_data* %62, %struct.xlr_net_data** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load i32, i32* @IORESOURCE_MEM, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call %struct.resource* @platform_get_resource(%struct.platform_device* %65, i32 %66, i32 %67)
  store %struct.resource* %68, %struct.resource** %6, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 2
  %71 = load %struct.resource*, %struct.resource** %6, align 8
  %72 = call i32 @devm_ioremap_resource(%struct.TYPE_5__* %70, %struct.resource* %71)
  %73 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %74 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %73, i32 0, i32 11
  store i32 %72, i32* %74, align 8
  %75 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %76 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %41
  %81 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %82 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %8, align 4
  br label %258

85:                                               ; preds = %41
  %86 = load %struct.xlr_adapter*, %struct.xlr_adapter** %7, align 8
  %87 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %88 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %87, i32 0, i32 10
  store %struct.xlr_adapter* %86, %struct.xlr_adapter** %88, align 8
  %89 = load %struct.net_device*, %struct.net_device** %5, align 8
  %90 = load %struct.xlr_adapter*, %struct.xlr_adapter** %7, align 8
  %91 = getelementptr inbounds %struct.xlr_adapter, %struct.xlr_adapter* %90, i32 0, i32 0
  %92 = load %struct.net_device**, %struct.net_device*** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.net_device*, %struct.net_device** %92, i64 %94
  store %struct.net_device* %89, %struct.net_device** %95, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = load i32, i32* @IORESOURCE_IRQ, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call %struct.resource* @platform_get_resource(%struct.platform_device* %96, i32 %97, i32 %98)
  store %struct.resource* %99, %struct.resource** %6, align 8
  %100 = load %struct.resource*, %struct.resource** %6, align 8
  %101 = icmp ne %struct.resource* %100, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %85
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 2
  %105 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %106 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %8, align 4
  br label %258

111:                                              ; preds = %85
  %112 = load %struct.resource*, %struct.resource** %6, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %118 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %117, i32 0, i32 3
  %119 = load %struct.xlr_net_data*, %struct.xlr_net_data** %118, align 8
  %120 = getelementptr inbounds %struct.xlr_net_data, %struct.xlr_net_data* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %127 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %126, i32 0, i32 9
  store i32 %125, i32* %127, align 4
  %128 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %129 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %128, i32 0, i32 3
  %130 = load %struct.xlr_net_data*, %struct.xlr_net_data** %129, align 8
  %131 = getelementptr inbounds %struct.xlr_net_data, %struct.xlr_net_data* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %138 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %137, i32 0, i32 8
  store i32 %136, i32* %138, align 8
  %139 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %140 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %139, i32 0, i32 3
  %141 = load %struct.xlr_net_data*, %struct.xlr_net_data** %140, align 8
  %142 = getelementptr inbounds %struct.xlr_net_data, %struct.xlr_net_data* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %145 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %144, i32 0, i32 7
  store i32 %143, i32* %145, align 4
  %146 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %147 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %146, i32 0, i32 3
  %148 = load %struct.xlr_net_data*, %struct.xlr_net_data** %147, align 8
  %149 = getelementptr inbounds %struct.xlr_net_data, %struct.xlr_net_data* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %152 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %151, i32 0, i32 6
  store i32 %150, i32* %152, align 8
  %153 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %154 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %153, i32 0, i32 3
  %155 = load %struct.xlr_net_data*, %struct.xlr_net_data** %154, align 8
  %156 = getelementptr inbounds %struct.xlr_net_data, %struct.xlr_net_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %159 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 4
  %160 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %161 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %160, i32 0, i32 3
  %162 = load %struct.xlr_net_data*, %struct.xlr_net_data** %161, align 8
  %163 = getelementptr inbounds %struct.xlr_net_data, %struct.xlr_net_data* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %166 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 8
  %167 = load %struct.net_device*, %struct.net_device** %5, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 2
  store i32* @xlr_netdev_ops, i32** %168, align 8
  %169 = load i32, i32* @HZ, align 4
  %170 = load %struct.net_device*, %struct.net_device** %5, align 8
  %171 = getelementptr inbounds %struct.net_device, %struct.net_device* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 8
  %172 = load %struct.net_device*, %struct.net_device** %5, align 8
  %173 = call i32 @eth_hw_addr_random(%struct.net_device* %172)
  %174 = load %struct.net_device*, %struct.net_device** %5, align 8
  %175 = call i32 @xlr_hw_set_mac_addr(%struct.net_device* %174)
  %176 = load %struct.net_device*, %struct.net_device** %5, align 8
  %177 = call i32 @xlr_set_rx_mode(%struct.net_device* %176)
  %178 = load i64, i64* @MAX_NUM_DESC_SPILL, align 8
  %179 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %180 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %178
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 8
  %185 = load %struct.net_device*, %struct.net_device** %5, align 8
  %186 = getelementptr inbounds %struct.net_device, %struct.net_device* %185, i32 0, i32 0
  store i32* @xlr_ethtool_ops, i32** %186, align 8
  %187 = load %struct.net_device*, %struct.net_device** %5, align 8
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 2
  %190 = call i32 @SET_NETDEV_DEV(%struct.net_device* %187, %struct.TYPE_5__* %189)
  %191 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %192 = call i32 @xlr_config_fifo_spill_area(%struct.xlr_net_priv* %191)
  %193 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %194 = call i32 @xlr_config_pde(%struct.xlr_net_priv* %193)
  %195 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %196 = call i32 @xlr_config_parser(%struct.xlr_net_priv* %195)
  %197 = load %struct.resource*, %struct.resource** %6, align 8
  %198 = getelementptr inbounds %struct.resource, %struct.resource* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @strcmp(i32 %199, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %111
  %203 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = call i32 @xlr_gmac_init(%struct.xlr_net_priv* %203, %struct.platform_device* %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %202
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 2
  %211 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %212 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %210, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %213)
  br label %258

215:                                              ; preds = %202
  br label %216

216:                                              ; preds = %215, %111
  %217 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %218 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %216
  %222 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %223 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 4
  br i1 %225, label %226, label %233

226:                                              ; preds = %221, %216
  %227 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %228 = call i32 @xlr_config_common(%struct.xlr_net_priv* %227)
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %253

232:                                              ; preds = %226
  br label %233

233:                                              ; preds = %232, %221
  %234 = load %struct.net_device*, %struct.net_device** %5, align 8
  %235 = call i32 @register_netdev(%struct.net_device* %234)
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %233
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 2
  %241 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %242 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %240, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %243)
  br label %253

245:                                              ; preds = %233
  %246 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %247 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %248 = call i32 @platform_set_drvdata(%struct.platform_device* %246, %struct.xlr_net_priv* %247)
  br label %249

249:                                              ; preds = %245
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %9, align 4
  br label %24

252:                                              ; preds = %24
  store i32 0, i32* %2, align 4
  br label %262

253:                                              ; preds = %238, %231
  %254 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %4, align 8
  %255 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @mdiobus_free(i32 %256)
  br label %258

258:                                              ; preds = %253, %208, %102, %80
  %259 = load %struct.net_device*, %struct.net_device** %5, align 8
  %260 = call i32 @free_netdev(%struct.net_device* %259)
  %261 = load i32, i32* %8, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %258, %252, %35, %20
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.xlr_adapter* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local %struct.xlr_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @xlr_hw_set_mac_addr(%struct.net_device*) #1

declare dso_local i32 @xlr_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @xlr_config_fifo_spill_area(%struct.xlr_net_priv*) #1

declare dso_local i32 @xlr_config_pde(%struct.xlr_net_priv*) #1

declare dso_local i32 @xlr_config_parser(%struct.xlr_net_priv*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @xlr_gmac_init(%struct.xlr_net_priv*, %struct.platform_device*) #1

declare dso_local i32 @xlr_config_common(%struct.xlr_net_priv*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.xlr_net_priv*) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
