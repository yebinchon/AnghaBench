; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_init_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_init_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, %struct.device*, i32, i32, i32, i32, i32, i8*, %struct.pinctrl_desc*, i32 }
%struct.pinctrl_desc = type { i32, i32, i64, i64, i32, i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"pinctrl ops lacks necessary functions\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"try to register %d pins ...\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"error during pin registration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pinctrl_dev* (%struct.pinctrl_desc*, %struct.device*, i8*)* @pinctrl_init_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pinctrl_dev* @pinctrl_init_controller(%struct.pinctrl_desc* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_desc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pinctrl_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.pinctrl_desc* %0, %struct.pinctrl_desc** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %11 = icmp ne %struct.pinctrl_desc* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.pinctrl_dev* @ERR_PTR(i32 %14)
  store %struct.pinctrl_dev* %15, %struct.pinctrl_dev** %4, align 8
  br label %130

16:                                               ; preds = %3
  %17 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %18 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.pinctrl_dev* @ERR_PTR(i32 %23)
  store %struct.pinctrl_dev* %24, %struct.pinctrl_dev** %4, align 8
  br label %130

25:                                               ; preds = %16
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.pinctrl_dev* @kzalloc(i32 64, i32 %26)
  store %struct.pinctrl_dev* %27, %struct.pinctrl_dev** %8, align 8
  %28 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %29 = icmp ne %struct.pinctrl_dev* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.pinctrl_dev* @ERR_PTR(i32 %32)
  store %struct.pinctrl_dev* %33, %struct.pinctrl_dev** %4, align 8
  br label %130

34:                                               ; preds = %25
  %35 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %36 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %39 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %41 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %42 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %41, i32 0, i32 8
  store %struct.pinctrl_desc* %40, %struct.pinctrl_desc** %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %45 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %47 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %46, i32 0, i32 6
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @INIT_RADIX_TREE(i32* %47, i32 %48)
  %50 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %51 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %50, i32 0, i32 3
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %54 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %53, i32 0, i32 2
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %58 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %57, i32 0, i32 1
  store %struct.device* %56, %struct.device** %58, align 8
  %59 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %60 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %59, i32 0, i32 0
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %63 = call i32 @pinctrl_check_ops(%struct.pinctrl_dev* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %34
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %122

69:                                               ; preds = %34
  %70 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %71 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %76 = call i32 @pinmux_check_ops(%struct.pinctrl_dev* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %122

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %69
  %82 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %83 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %88 = call i32 @pinconf_check_ops(%struct.pinctrl_dev* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %122

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %81
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %96 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_dbg(%struct.device* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %100 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %101 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %104 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @pinctrl_register_pins(%struct.pinctrl_dev* %99, i32 %102, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %93
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %112 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %113 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %114 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %117 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @pinctrl_free_pindescs(%struct.pinctrl_dev* %112, i32 %115, i32 %118)
  br label %122

120:                                              ; preds = %93
  %121 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  store %struct.pinctrl_dev* %121, %struct.pinctrl_dev** %4, align 8
  br label %130

122:                                              ; preds = %109, %91, %79, %66
  %123 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %124 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %123, i32 0, i32 0
  %125 = call i32 @mutex_destroy(i32* %124)
  %126 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %8, align 8
  %127 = call i32 @kfree(%struct.pinctrl_dev* %126)
  %128 = load i32, i32* %9, align 4
  %129 = call %struct.pinctrl_dev* @ERR_PTR(i32 %128)
  store %struct.pinctrl_dev* %129, %struct.pinctrl_dev** %4, align 8
  br label %130

130:                                              ; preds = %122, %120, %30, %21, %12
  %131 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  ret %struct.pinctrl_dev* %131
}

declare dso_local %struct.pinctrl_dev* @ERR_PTR(i32) #1

declare dso_local %struct.pinctrl_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pinctrl_check_ops(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pinmux_check_ops(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_check_ops(%struct.pinctrl_dev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @pinctrl_register_pins(%struct.pinctrl_dev*, i32, i32) #1

declare dso_local i32 @pinctrl_free_pindescs(%struct.pinctrl_dev*, i32, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
