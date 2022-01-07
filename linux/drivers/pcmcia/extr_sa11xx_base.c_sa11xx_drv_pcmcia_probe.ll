; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa11xx_base.c_sa11xx_drv_pcmcia_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa11xx_base.c_sa11xx_drv_pcmcia_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcmcia_low_level = type { i32 }
%struct.skt_dev_info = type { i32, %struct.soc_pcmcia_socket* }
%struct.soc_pcmcia_socket = type { i32, %struct.clk* }
%struct.clk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa11xx_drv_pcmcia_probe(%struct.device* %0, %struct.pcmcia_low_level* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.pcmcia_low_level*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.skt_dev_info*, align 8
  %11 = alloca %struct.soc_pcmcia_socket*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.pcmcia_low_level* %1, %struct.pcmcia_low_level** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.clk* @devm_clk_get(%struct.device* %15, i32* null)
  store %struct.clk* %16, %struct.clk** %14, align 8
  %17 = load %struct.clk*, %struct.clk** %14, align 8
  %18 = call i64 @IS_ERR(%struct.clk* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.clk*, %struct.clk** %14, align 8
  %22 = call i32 @PTR_ERR(%struct.clk* %21)
  store i32 %22, i32* %5, align 4
  br label %95

23:                                               ; preds = %4
  %24 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %7, align 8
  %25 = call i32 @sa11xx_drv_pcmcia_ops(%struct.pcmcia_low_level* %24)
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @SKT_DEV_INFO_SIZE(i32 %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.skt_dev_info* @devm_kzalloc(%struct.device* %26, i32 %28, i32 %29)
  store %struct.skt_dev_info* %30, %struct.skt_dev_info** %10, align 8
  %31 = load %struct.skt_dev_info*, %struct.skt_dev_info** %10, align 8
  %32 = icmp ne %struct.skt_dev_info* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %95

36:                                               ; preds = %23
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.skt_dev_info*, %struct.skt_dev_info** %10, align 8
  %39 = getelementptr inbounds %struct.skt_dev_info, %struct.skt_dev_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %69, %36
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load %struct.skt_dev_info*, %struct.skt_dev_info** %10, align 8
  %46 = getelementptr inbounds %struct.skt_dev_info, %struct.skt_dev_info* %45, i32 0, i32 1
  %47 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %47, i64 %49
  store %struct.soc_pcmcia_socket* %50, %struct.soc_pcmcia_socket** %11, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %51, %52
  %54 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %11, align 8
  %55 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.clk*, %struct.clk** %14, align 8
  %57 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %11, align 8
  %58 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %57, i32 0, i32 1
  store %struct.clk* %56, %struct.clk** %58, align 8
  %59 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %11, align 8
  %60 = load %struct.pcmcia_low_level*, %struct.pcmcia_low_level** %7, align 8
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @soc_pcmcia_init_one(%struct.soc_pcmcia_socket* %59, %struct.pcmcia_low_level* %60, %struct.device* %61)
  %63 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %11, align 8
  %64 = call i32 @sa11xx_drv_pcmcia_add_one(%struct.soc_pcmcia_socket* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %44
  br label %72

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %40

72:                                               ; preds = %67, %40
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %80, %75
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %12, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.skt_dev_info*, %struct.skt_dev_info** %10, align 8
  %82 = getelementptr inbounds %struct.skt_dev_info, %struct.skt_dev_info* %81, i32 0, i32 1
  %83 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %83, i64 %85
  %87 = call i32 @soc_pcmcia_remove_one(%struct.soc_pcmcia_socket* %86)
  br label %76

88:                                               ; preds = %76
  br label %93

89:                                               ; preds = %72
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = load %struct.skt_dev_info*, %struct.skt_dev_info** %10, align 8
  %92 = call i32 @dev_set_drvdata(%struct.device* %90, %struct.skt_dev_info* %91)
  br label %93

93:                                               ; preds = %89, %88
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %33, %20
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @sa11xx_drv_pcmcia_ops(%struct.pcmcia_low_level*) #1

declare dso_local %struct.skt_dev_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @SKT_DEV_INFO_SIZE(i32) #1

declare dso_local i32 @soc_pcmcia_init_one(%struct.soc_pcmcia_socket*, %struct.pcmcia_low_level*, %struct.device*) #1

declare dso_local i32 @sa11xx_drv_pcmcia_add_one(%struct.soc_pcmcia_socket*) #1

declare dso_local i32 @soc_pcmcia_remove_one(%struct.soc_pcmcia_socket*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.skt_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
