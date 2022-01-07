; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_base.c_pxa2xx_drv_pcmcia_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_base.c_pxa2xx_drv_pcmcia_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.pcmcia_low_level = type { i32, i64 }
%struct.skt_dev_info = type { i32, %struct.soc_pcmcia_socket* }
%struct.soc_pcmcia_socket = type { %struct.clk*, i64 }
%struct.clk = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"pxa320 supports only one pcmcia slot\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa2xx_drv_pcmcia_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_drv_pcmcia_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcmcia_low_level*, align 8
  %7 = alloca %struct.skt_dev_info*, align 8
  %8 = alloca %struct.soc_pcmcia_socket*, align 8
  %9 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.pcmcia_low_level*
  store %struct.pcmcia_low_level* %14, %struct.pcmcia_low_level** %6, align 8
  %15 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %6, align 8
  %16 = icmp ne %struct.pcmcia_low_level* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %127

20:                                               ; preds = %1
  %21 = call i64 (...) @cpu_is_pxa320()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %6, align 8
  %25 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(%struct.TYPE_7__* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %127

34:                                               ; preds = %23, %20
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call %struct.clk* @devm_clk_get(%struct.TYPE_7__* %36, i32* null)
  store %struct.clk* %37, %struct.clk** %9, align 8
  %38 = load %struct.clk*, %struct.clk** %9, align 8
  %39 = call i64 @IS_ERR(%struct.clk* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %129

44:                                               ; preds = %34
  %45 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %6, align 8
  %46 = call i32 @pxa2xx_drv_pcmcia_ops(%struct.pcmcia_low_level* %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %6, align 8
  %50 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @SKT_DEV_INFO_SIZE(i32 %51)
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.skt_dev_info* @devm_kzalloc(%struct.TYPE_7__* %48, i32 %52, i32 %53)
  store %struct.skt_dev_info* %54, %struct.skt_dev_info** %7, align 8
  %55 = load %struct.skt_dev_info*, %struct.skt_dev_info** %7, align 8
  %56 = icmp ne %struct.skt_dev_info* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %129

60:                                               ; preds = %44
  %61 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %6, align 8
  %62 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.skt_dev_info*, %struct.skt_dev_info** %7, align 8
  %65 = getelementptr inbounds %struct.skt_dev_info, %struct.skt_dev_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %101, %60
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %6, align 8
  %69 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %66
  %73 = load %struct.skt_dev_info*, %struct.skt_dev_info** %7, align 8
  %74 = getelementptr inbounds %struct.skt_dev_info, %struct.skt_dev_info* %73, i32 0, i32 1
  %75 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %75, i64 %77
  store %struct.soc_pcmcia_socket* %78, %struct.soc_pcmcia_socket** %8, align 8
  %79 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %6, align 8
  %80 = getelementptr inbounds %struct.pcmcia_low_level, %struct.pcmcia_low_level* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %8, align 8
  %86 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.clk*, %struct.clk** %9, align 8
  %88 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %8, align 8
  %89 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %88, i32 0, i32 0
  store %struct.clk* %87, %struct.clk** %89, align 8
  %90 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %8, align 8
  %91 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %6, align 8
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @soc_pcmcia_init_one(%struct.soc_pcmcia_socket* %90, %struct.pcmcia_low_level* %91, %struct.TYPE_7__* %93)
  %95 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %8, align 8
  %96 = call i32 @pxa2xx_drv_pcmcia_add_one(%struct.soc_pcmcia_socket* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %72
  br label %113

100:                                              ; preds = %72
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %66

104:                                              ; preds = %66
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %6, align 8
  %108 = call i32 @pxa2xx_configure_sockets(%struct.TYPE_7__* %106, %struct.pcmcia_low_level* %107)
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.skt_dev_info*, %struct.skt_dev_info** %7, align 8
  %112 = call i32 @dev_set_drvdata(%struct.TYPE_7__* %110, %struct.skt_dev_info* %111)
  store i32 0, i32* %2, align 4
  br label %129

113:                                              ; preds = %99
  br label %114

114:                                              ; preds = %118, %113
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %4, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load %struct.skt_dev_info*, %struct.skt_dev_info** %7, align 8
  %120 = getelementptr inbounds %struct.skt_dev_info, %struct.skt_dev_info* %119, i32 0, i32 1
  %121 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %121, i64 %123
  %125 = call i32 @soc_pcmcia_remove_one(%struct.soc_pcmcia_socket* %124)
  br label %114

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %28, %17
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %104, %57, %41
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i64 @cpu_is_pxa320(...) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @pxa2xx_drv_pcmcia_ops(%struct.pcmcia_low_level*) #1

declare dso_local %struct.skt_dev_info* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @SKT_DEV_INFO_SIZE(i32) #1

declare dso_local i32 @soc_pcmcia_init_one(%struct.soc_pcmcia_socket*, %struct.pcmcia_low_level*, %struct.TYPE_7__*) #1

declare dso_local i32 @pxa2xx_drv_pcmcia_add_one(%struct.soc_pcmcia_socket*) #1

declare dso_local i32 @pxa2xx_configure_sockets(%struct.TYPE_7__*, %struct.pcmcia_low_level*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_7__*, %struct.skt_dev_info*) #1

declare dso_local i32 @soc_pcmcia_remove_one(%struct.soc_pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
