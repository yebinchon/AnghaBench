; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_pad_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_pad_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_pad = type { %struct.tegra_xusb_lane**, %struct.tegra_xusb_lane*, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.tegra_xusb_lane = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.tegra_xusb_lane* (%struct.tegra_xusb_pad*, %struct.device_node*, i32)* }
%struct.device_node = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.phy_ops = type { i32 }
%struct.phy = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"lanes\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra_xusb_pad_of_xlate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_xusb_pad_register(%struct.tegra_xusb_pad* %0, %struct.phy_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_xusb_pad*, align 8
  %5 = alloca %struct.phy_ops*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.tegra_xusb_lane*, align 8
  store %struct.tegra_xusb_pad* %0, %struct.tegra_xusb_pad** %4, align 8
  store %struct.phy_ops* %1, %struct.phy_ops** %5, align 8
  %12 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.device_node* @of_get_child_by_name(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %178

22:                                               ; preds = %2
  %23 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %23, i32 0, i32 2
  %25 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %25, i32 0, i32 5
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.tegra_xusb_lane** @devm_kcalloc(%struct.TYPE_10__* %24, i32 %29, i32 8, i32 %30)
  %32 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %33 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %32, i32 0, i32 0
  store %struct.tegra_xusb_lane** %31, %struct.tegra_xusb_lane*** %33, align 8
  %34 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %34, i32 0, i32 0
  %36 = load %struct.tegra_xusb_lane**, %struct.tegra_xusb_lane*** %35, align 8
  %37 = icmp ne %struct.tegra_xusb_lane** %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %22
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = call i32 @of_node_put(%struct.device_node* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %178

43:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %138, %43
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %47 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %46, i32 0, i32 5
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %45, %50
  br i1 %51, label %52, label %141

52:                                               ; preds = %44
  %53 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call %struct.device_node* @tegra_xusb_pad_find_phy_node(%struct.tegra_xusb_pad* %53, i32 %54)
  store %struct.device_node* %55, %struct.device_node** %10, align 8
  %56 = load %struct.device_node*, %struct.device_node** %10, align 8
  %57 = icmp ne %struct.device_node* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.device_node*, %struct.device_node** %10, align 8
  %60 = call i32 @of_device_is_available(%struct.device_node* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.device_node*, %struct.device_node** %10, align 8
  %64 = call i32 @of_node_put(%struct.device_node* %63)
  br label %138

65:                                               ; preds = %58
  %66 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %67 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %66, i32 0, i32 2
  %68 = load %struct.device_node*, %struct.device_node** %10, align 8
  %69 = load %struct.phy_ops*, %struct.phy_ops** %5, align 8
  %70 = call %struct.tegra_xusb_lane* @phy_create(%struct.TYPE_10__* %67, %struct.device_node* %68, %struct.phy_ops* %69)
  %71 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %71, i32 0, i32 0
  %73 = load %struct.tegra_xusb_lane**, %struct.tegra_xusb_lane*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %73, i64 %75
  store %struct.tegra_xusb_lane* %70, %struct.tegra_xusb_lane** %76, align 8
  %77 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %78 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %77, i32 0, i32 0
  %79 = load %struct.tegra_xusb_lane**, %struct.tegra_xusb_lane*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %79, i64 %81
  %83 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %82, align 8
  %84 = call i64 @IS_ERR(%struct.tegra_xusb_lane* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %65
  %87 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %88 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %87, i32 0, i32 0
  %89 = load %struct.tegra_xusb_lane**, %struct.tegra_xusb_lane*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %89, i64 %91
  %93 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %92, align 8
  %94 = call i32 @PTR_ERR(%struct.tegra_xusb_lane* %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.device_node*, %struct.device_node** %10, align 8
  %96 = call i32 @of_node_put(%struct.device_node* %95)
  br label %160

97:                                               ; preds = %65
  %98 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %99 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %98, i32 0, i32 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.tegra_xusb_lane* (%struct.tegra_xusb_pad*, %struct.device_node*, i32)*, %struct.tegra_xusb_lane* (%struct.tegra_xusb_pad*, %struct.device_node*, i32)** %101, align 8
  %103 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %104 = load %struct.device_node*, %struct.device_node** %10, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call %struct.tegra_xusb_lane* %102(%struct.tegra_xusb_pad* %103, %struct.device_node* %104, i32 %105)
  store %struct.tegra_xusb_lane* %106, %struct.tegra_xusb_lane** %11, align 8
  %107 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %11, align 8
  %108 = call i64 @IS_ERR(%struct.tegra_xusb_lane* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %97
  %111 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %112 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %111, i32 0, i32 0
  %113 = load %struct.tegra_xusb_lane**, %struct.tegra_xusb_lane*** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %113, i64 %115
  %117 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %116, align 8
  %118 = call i32 @phy_destroy(%struct.tegra_xusb_lane* %117)
  %119 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %11, align 8
  %120 = call i32 @PTR_ERR(%struct.tegra_xusb_lane* %119)
  store i32 %120, i32* %9, align 4
  br label %160

121:                                              ; preds = %97
  %122 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %11, align 8
  %123 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %122, i32 0, i32 0
  %124 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %125 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %124, i32 0, i32 3
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = call i32 @list_add_tail(i32* %123, i32* %127)
  %129 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %130 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %129, i32 0, i32 0
  %131 = load %struct.tegra_xusb_lane**, %struct.tegra_xusb_lane*** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %131, i64 %133
  %135 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %134, align 8
  %136 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %11, align 8
  %137 = call i32 @phy_set_drvdata(%struct.tegra_xusb_lane* %135, %struct.tegra_xusb_lane* %136)
  br label %138

138:                                              ; preds = %121, %62
  %139 = load i32, i32* %8, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %44

141:                                              ; preds = %44
  %142 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %143 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %142, i32 0, i32 2
  %144 = load %struct.device_node*, %struct.device_node** %6, align 8
  %145 = load i32, i32* @tegra_xusb_pad_of_xlate, align 4
  %146 = call %struct.tegra_xusb_lane* @of_phy_provider_register_full(%struct.TYPE_10__* %143, %struct.device_node* %144, i32 %145)
  %147 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %148 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %147, i32 0, i32 1
  store %struct.tegra_xusb_lane* %146, %struct.tegra_xusb_lane** %148, align 8
  %149 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %150 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %149, i32 0, i32 1
  %151 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %150, align 8
  %152 = call i64 @IS_ERR(%struct.tegra_xusb_lane* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %141
  %155 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %156 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %155, i32 0, i32 1
  %157 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %156, align 8
  %158 = call i32 @PTR_ERR(%struct.tegra_xusb_lane* %157)
  store i32 %158, i32* %9, align 4
  br label %160

159:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %178

160:                                              ; preds = %154, %110, %86
  br label %161

161:                                              ; preds = %165, %160
  %162 = load i32, i32* %8, align 4
  %163 = add i32 %162, -1
  store i32 %163, i32* %8, align 4
  %164 = icmp ne i32 %162, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  %167 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %166, i32 0, i32 0
  %168 = load %struct.tegra_xusb_lane**, %struct.tegra_xusb_lane*** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %168, i64 %170
  %172 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %171, align 8
  %173 = call i32 @tegra_xusb_lane_destroy(%struct.tegra_xusb_lane* %172)
  br label %161

174:                                              ; preds = %161
  %175 = load %struct.device_node*, %struct.device_node** %6, align 8
  %176 = call i32 @of_node_put(%struct.device_node* %175)
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %174, %159, %38, %19
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local %struct.tegra_xusb_lane** @devm_kcalloc(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.device_node* @tegra_xusb_pad_find_phy_node(%struct.tegra_xusb_pad*, i32) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local %struct.tegra_xusb_lane* @phy_create(%struct.TYPE_10__*, %struct.device_node*, %struct.phy_ops*) #1

declare dso_local i64 @IS_ERR(%struct.tegra_xusb_lane*) #1

declare dso_local i32 @PTR_ERR(%struct.tegra_xusb_lane*) #1

declare dso_local i32 @phy_destroy(%struct.tegra_xusb_lane*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.tegra_xusb_lane*, %struct.tegra_xusb_lane*) #1

declare dso_local %struct.tegra_xusb_lane* @of_phy_provider_register_full(%struct.TYPE_10__*, %struct.device_node*, i32) #1

declare dso_local i32 @tegra_xusb_lane_destroy(%struct.tegra_xusb_lane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
