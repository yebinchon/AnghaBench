; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-core.c_phy_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32, %struct.TYPE_8__, i32*, %struct.phy_ops*, i32 }
%struct.TYPE_8__ = type { i32, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.phy_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@phy_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unable to get id\0A\00", align 1
@phy_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"phy-%s.%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy* @phy_create(%struct.device* %0, %struct.device_node* %1, %struct.phy_ops* %2) #0 {
  %4 = alloca %struct.phy*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.phy_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.phy*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.phy_ops* %2, %struct.phy_ops** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = icmp ne %struct.device* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.phy* @ERR_PTR(i32 %19)
  store %struct.phy* %20, %struct.phy** %4, align 8
  br label %139

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.phy* @kzalloc(i32 56, i32 %22)
  store %struct.phy* %23, %struct.phy** %10, align 8
  %24 = load %struct.phy*, %struct.phy** %10, align 8
  %25 = icmp ne %struct.phy* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.phy* @ERR_PTR(i32 %28)
  store %struct.phy* %29, %struct.phy** %4, align 8
  br label %139

30:                                               ; preds = %21
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @ida_simple_get(i32* @phy_ida, i32 0, i32 0, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %8, align 4
  br label %134

39:                                               ; preds = %30
  %40 = load %struct.phy*, %struct.phy** %10, align 8
  %41 = getelementptr inbounds %struct.phy, %struct.phy* %40, i32 0, i32 1
  %42 = call i32 @device_initialize(%struct.TYPE_8__* %41)
  %43 = load %struct.phy*, %struct.phy** %10, align 8
  %44 = getelementptr inbounds %struct.phy, %struct.phy* %43, i32 0, i32 4
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load i32, i32* @phy_class, align 4
  %47 = load %struct.phy*, %struct.phy** %10, align 8
  %48 = getelementptr inbounds %struct.phy, %struct.phy* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.phy*, %struct.phy** %10, align 8
  %52 = getelementptr inbounds %struct.phy, %struct.phy* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store %struct.device* %50, %struct.device** %53, align 8
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = icmp ne %struct.device_node* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  br label %63

57:                                               ; preds = %39
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %struct.device_node*
  br label %63

63:                                               ; preds = %57, %56
  %64 = phi %struct.device_node* [ %54, %56 ], [ %62, %57 ]
  %65 = ptrtoint %struct.device_node* %64 to i32
  %66 = load %struct.phy*, %struct.phy** %10, align 8
  %67 = getelementptr inbounds %struct.phy, %struct.phy* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.phy*, %struct.phy** %10, align 8
  %71 = getelementptr inbounds %struct.phy, %struct.phy* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.phy_ops*, %struct.phy_ops** %7, align 8
  %73 = load %struct.phy*, %struct.phy** %10, align 8
  %74 = getelementptr inbounds %struct.phy, %struct.phy* %73, i32 0, i32 3
  store %struct.phy_ops* %72, %struct.phy_ops** %74, align 8
  %75 = load %struct.phy*, %struct.phy** %10, align 8
  %76 = getelementptr inbounds %struct.phy, %struct.phy* %75, i32 0, i32 1
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = call i32 @dev_name(%struct.device* %77)
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @dev_set_name(%struct.TYPE_8__* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %63
  br label %128

84:                                               ; preds = %63
  %85 = load %struct.phy*, %struct.phy** %10, align 8
  %86 = getelementptr inbounds %struct.phy, %struct.phy* %85, i32 0, i32 1
  %87 = call i32* @regulator_get_optional(%struct.TYPE_8__* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.phy*, %struct.phy** %10, align 8
  %89 = getelementptr inbounds %struct.phy, %struct.phy* %88, i32 0, i32 2
  store i32* %87, i32** %89, align 8
  %90 = load %struct.phy*, %struct.phy** %10, align 8
  %91 = getelementptr inbounds %struct.phy, %struct.phy* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @IS_ERR(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %84
  %96 = load %struct.phy*, %struct.phy** %10, align 8
  %97 = getelementptr inbounds %struct.phy, %struct.phy* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @PTR_ERR(i32* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @EPROBE_DEFER, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %128

105:                                              ; preds = %95
  %106 = load %struct.phy*, %struct.phy** %10, align 8
  %107 = getelementptr inbounds %struct.phy, %struct.phy* %106, i32 0, i32 2
  store i32* null, i32** %107, align 8
  br label %108

108:                                              ; preds = %105, %84
  %109 = load %struct.phy*, %struct.phy** %10, align 8
  %110 = getelementptr inbounds %struct.phy, %struct.phy* %109, i32 0, i32 1
  %111 = call i32 @device_add(%struct.TYPE_8__* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %128

115:                                              ; preds = %108
  %116 = load %struct.device*, %struct.device** %5, align 8
  %117 = call i64 @pm_runtime_enabled(%struct.device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load %struct.phy*, %struct.phy** %10, align 8
  %121 = getelementptr inbounds %struct.phy, %struct.phy* %120, i32 0, i32 1
  %122 = call i32 @pm_runtime_enable(%struct.TYPE_8__* %121)
  %123 = load %struct.phy*, %struct.phy** %10, align 8
  %124 = getelementptr inbounds %struct.phy, %struct.phy* %123, i32 0, i32 1
  %125 = call i32 @pm_runtime_no_callbacks(%struct.TYPE_8__* %124)
  br label %126

126:                                              ; preds = %119, %115
  %127 = load %struct.phy*, %struct.phy** %10, align 8
  store %struct.phy* %127, %struct.phy** %4, align 8
  br label %139

128:                                              ; preds = %114, %104, %83
  %129 = load %struct.phy*, %struct.phy** %10, align 8
  %130 = getelementptr inbounds %struct.phy, %struct.phy* %129, i32 0, i32 1
  %131 = call i32 @put_device(%struct.TYPE_8__* %130)
  %132 = load i32, i32* %8, align 4
  %133 = call %struct.phy* @ERR_PTR(i32 %132)
  store %struct.phy* %133, %struct.phy** %4, align 8
  br label %139

134:                                              ; preds = %35
  %135 = load %struct.phy*, %struct.phy** %10, align 8
  %136 = call i32 @kfree(%struct.phy* %135)
  %137 = load i32, i32* %8, align 4
  %138 = call %struct.phy* @ERR_PTR(i32 %137)
  store %struct.phy* %138, %struct.phy** %4, align 8
  br label %139

139:                                              ; preds = %134, %128, %126, %26, %17
  %140 = load %struct.phy*, %struct.phy** %4, align 8
  ret %struct.phy* %140
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local %struct.phy* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32* @regulator_get_optional(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @device_add(%struct.TYPE_8__*) #1

declare dso_local i64 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @pm_runtime_no_callbacks(%struct.TYPE_8__*) #1

declare dso_local i32 @put_device(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
