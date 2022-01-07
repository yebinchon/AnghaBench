; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_core.c_sh_pfc_map_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_core.c_sh_pfc_map_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pfc = type { i32, i32, i32*, i32, %struct.sh_pfc_window* }
%struct.sh_pfc_window = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_pfc*, %struct.platform_device*)* @sh_pfc_map_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_pfc_map_resources(%struct.sh_pfc* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_pfc*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sh_pfc_window*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sh_pfc* %0, %struct.sh_pfc** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %22, %2
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 %16)
  store %struct.resource* %17, %struct.resource** %10, align 8
  %18 = load %struct.resource*, %struct.resource** %10, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %25

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %13

25:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i8* @platform_get_irq(%struct.platform_device* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %3, align 4
  br label %149

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %45

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %26

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %149

51:                                               ; preds = %45
  %52 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %53 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @devm_kcalloc(i32 %54, i32 %55, i32 12, i32 %56)
  %58 = bitcast i8* %57 to %struct.sh_pfc_window*
  store %struct.sh_pfc_window* %58, %struct.sh_pfc_window** %8, align 8
  %59 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %8, align 8
  %60 = icmp eq %struct.sh_pfc_window* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %149

64:                                               ; preds = %51
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %67 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %8, align 8
  %69 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %70 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %69, i32 0, i32 4
  store %struct.sh_pfc_window* %68, %struct.sh_pfc_window** %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %64
  %74 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %75 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @devm_kcalloc(i32 %76, i32 %77, i32 4, i32 %78)
  %80 = bitcast i8* %79 to i32*
  store i32* %80, i32** %9, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %149

86:                                               ; preds = %73
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %89 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %92 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  br label %93

93:                                               ; preds = %86, %64
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %130, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %133

98:                                               ; preds = %94
  %99 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %100 = load i32, i32* @IORESOURCE_MEM, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call %struct.resource* @platform_get_resource(%struct.platform_device* %99, i32 %100, i32 %101)
  store %struct.resource* %102, %struct.resource** %10, align 8
  %103 = load %struct.resource*, %struct.resource** %10, align 8
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %8, align 8
  %107 = getelementptr inbounds %struct.sh_pfc_window, %struct.sh_pfc_window* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.resource*, %struct.resource** %10, align 8
  %109 = call i32 @resource_size(%struct.resource* %108)
  %110 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %8, align 8
  %111 = getelementptr inbounds %struct.sh_pfc_window, %struct.sh_pfc_window* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.sh_pfc*, %struct.sh_pfc** %4, align 8
  %113 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.resource*, %struct.resource** %10, align 8
  %116 = call i32 @devm_ioremap_resource(i32 %114, %struct.resource* %115)
  %117 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %8, align 8
  %118 = getelementptr inbounds %struct.sh_pfc_window, %struct.sh_pfc_window* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %8, align 8
  %120 = getelementptr inbounds %struct.sh_pfc_window, %struct.sh_pfc_window* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @IS_ERR(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %98
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %149

127:                                              ; preds = %98
  %128 = load %struct.sh_pfc_window*, %struct.sh_pfc_window** %8, align 8
  %129 = getelementptr inbounds %struct.sh_pfc_window, %struct.sh_pfc_window* %128, i32 1
  store %struct.sh_pfc_window* %129, %struct.sh_pfc_window** %8, align 8
  br label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %11, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %94

133:                                              ; preds = %94
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %145, %133
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %140 = load i32, i32* %11, align 4
  %141 = call i8* @platform_get_irq(%struct.platform_device* %139, i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load i32*, i32** %9, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  br label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %11, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %134

148:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %124, %83, %61, %48, %35
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(i32, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
