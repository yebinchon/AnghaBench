; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_fdb_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_fdb_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ethsw_port_priv = type { %struct.ethsw_core* }
%struct.ethsw_core = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fdb_dump_entry = type { i32 }
%struct.ethsw_dump_ctx = type { i32, %struct.netlink_callback*, %struct.sk_buff*, %struct.net_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dma_map_single() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"dpsw_fdb_dump() = %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)* @port_fdb_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_fdb_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.net_device* %2, %struct.net_device* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ethsw_port_priv*, align 8
  %13 = alloca %struct.ethsw_core*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.fdb_dump_entry*, align 8
  %16 = alloca %struct.fdb_dump_entry, align 4
  %17 = alloca %struct.ethsw_dump_ctx, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load %struct.net_device*, %struct.net_device** %9, align 8
  %25 = call %struct.ethsw_port_priv* @netdev_priv(%struct.net_device* %24)
  store %struct.ethsw_port_priv* %25, %struct.ethsw_port_priv** %12, align 8
  %26 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %12, align 8
  %27 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %26, i32 0, i32 0
  %28 = load %struct.ethsw_core*, %struct.ethsw_core** %27, align 8
  store %struct.ethsw_core* %28, %struct.ethsw_core** %13, align 8
  %29 = load %struct.net_device*, %struct.net_device** %9, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.device*, %struct.device** %31, align 8
  store %struct.device* %32, %struct.device** %14, align 8
  %33 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %17, i32 0, i32 0
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %33, align 8
  %36 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %17, i32 0, i32 1
  %37 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  store %struct.netlink_callback* %37, %struct.netlink_callback** %36, align 8
  %38 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %17, i32 0, i32 2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %38, align 8
  %40 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %17, i32 0, i32 3
  %41 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %41, %struct.net_device** %40, align 8
  store i32 0, i32* %21, align 4
  %42 = load %struct.ethsw_core*, %struct.ethsw_core** %13, align 8
  %43 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32* @kzalloc(i32 %49, i32 %50)
  store i32* %51, i32** %23, align 8
  %52 = load i32*, i32** %23, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %5
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %137

57:                                               ; preds = %5
  %58 = load %struct.device*, %struct.device** %14, align 8
  %59 = load i32*, i32** %23, align 8
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %62 = call i32 @dma_map_single(%struct.device* %58, i32* %59, i32 %60, i32 %61)
  store i32 %62, i32* %18, align 4
  %63 = load %struct.device*, %struct.device** %14, align 8
  %64 = load i32, i32* %18, align 4
  %65 = call i64 @dma_mapping_error(%struct.device* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.net_device*, %struct.net_device** %9, align 8
  %69 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %21, align 4
  br label %133

72:                                               ; preds = %57
  %73 = load %struct.ethsw_core*, %struct.ethsw_core** %13, align 8
  %74 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ethsw_core*, %struct.ethsw_core** %13, align 8
  %77 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %20, align 4
  %81 = call i32 @dpsw_fdb_dump(i32 %75, i32 0, i32 %78, i32 0, i32 %79, i32 %80, i32* %19)
  store i32 %81, i32* %21, align 4
  %82 = load i32, i32* %21, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load %struct.net_device*, %struct.net_device** %9, align 8
  %86 = load i32, i32* %21, align 4
  %87 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %127

88:                                               ; preds = %72
  %89 = load %struct.device*, %struct.device** %14, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %93 = call i32 @dma_unmap_single(%struct.device* %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32*, i32** %23, align 8
  %95 = bitcast i32* %94 to %struct.fdb_dump_entry*
  store %struct.fdb_dump_entry* %95, %struct.fdb_dump_entry** %15, align 8
  store i32 0, i32* %22, align 4
  br label %96

96:                                               ; preds = %117, %88
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %19, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %96
  %101 = load %struct.fdb_dump_entry*, %struct.fdb_dump_entry** %15, align 8
  %102 = load i32, i32* %22, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.fdb_dump_entry, %struct.fdb_dump_entry* %101, i64 %103
  %105 = bitcast %struct.fdb_dump_entry* %16 to i8*
  %106 = bitcast %struct.fdb_dump_entry* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 4, i1 false)
  %107 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %12, align 8
  %108 = call i32 @port_fdb_valid_entry(%struct.fdb_dump_entry* %16, %struct.ethsw_port_priv* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %100
  br label %117

111:                                              ; preds = %100
  %112 = call i32 @ethsw_fdb_do_dump(%struct.fdb_dump_entry* %16, %struct.ethsw_dump_ctx* %17)
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %21, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %121

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %110
  %118 = load i32, i32* %22, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %22, align 4
  br label %96

120:                                              ; preds = %96
  br label %121

121:                                              ; preds = %120, %115
  %122 = getelementptr inbounds %struct.ethsw_dump_ctx, %struct.ethsw_dump_ctx* %17, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %23, align 8
  %126 = call i32 @kfree(i32* %125)
  store i32 0, i32* %6, align 4
  br label %137

127:                                              ; preds = %84
  %128 = load %struct.device*, %struct.device** %14, align 8
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* @DMA_TO_DEVICE, align 4
  %132 = call i32 @dma_unmap_single(%struct.device* %128, i32 %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %127, %67
  %134 = load i32*, i32** %23, align 8
  %135 = call i32 @kfree(i32* %134)
  %136 = load i32, i32* %21, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %133, %121, %54
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local %struct.ethsw_port_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @dpsw_fdb_dump(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @port_fdb_valid_entry(%struct.fdb_dump_entry*, %struct.ethsw_port_priv*) #1

declare dso_local i32 @ethsw_fdb_do_dump(%struct.fdb_dump_entry*, %struct.ethsw_dump_ctx*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
