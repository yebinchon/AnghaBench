; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btt = type { i64, i32, i32, i64, i64, i32*, %struct.nd_region*, i32, i32, %struct.nd_btt* }
%struct.nd_btt = type { %struct.TYPE_2__*, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.nd_region = type { i32, i64 }
%struct.nd_namespace_io = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"init: error in arena_discover: %d\0A\00", align 1
@INIT_READY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"%s is read-only, unable to init btt metadata\0A\00", align 1
@ARENA_MAX_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"init: %d arenas for %llu rawsize\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"init: create_arenas: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"init: error in meta_init: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"init: error in blk_init: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btt* (%struct.nd_btt*, i64, i32, i32*, %struct.nd_region*)* @btt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btt* @btt_init(%struct.nd_btt* %0, i64 %1, i32 %2, i32* %3, %struct.nd_region* %4) #0 {
  %6 = alloca %struct.btt*, align 8
  %7 = alloca %struct.nd_btt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nd_region*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.btt*, align 8
  %14 = alloca %struct.nd_namespace_io*, align 8
  %15 = alloca %struct.device*, align 8
  store %struct.nd_btt* %0, %struct.nd_btt** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.nd_region* %4, %struct.nd_region** %11, align 8
  %16 = load %struct.nd_btt*, %struct.nd_btt** %7, align 8
  %17 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %16, i32 0, i32 1
  store %struct.device* %17, %struct.device** %15, align 8
  %18 = load %struct.device*, %struct.device** %15, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.btt* @devm_kzalloc(%struct.device* %18, i32 64, i32 %19)
  store %struct.btt* %20, %struct.btt** %13, align 8
  %21 = load %struct.btt*, %struct.btt** %13, align 8
  %22 = icmp ne %struct.btt* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store %struct.btt* null, %struct.btt** %6, align 8
  br label %141

24:                                               ; preds = %5
  %25 = load %struct.nd_btt*, %struct.nd_btt** %7, align 8
  %26 = load %struct.btt*, %struct.btt** %13, align 8
  %27 = getelementptr inbounds %struct.btt, %struct.btt* %26, i32 0, i32 9
  store %struct.nd_btt* %25, %struct.nd_btt** %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.btt*, %struct.btt** %13, align 8
  %30 = getelementptr inbounds %struct.btt, %struct.btt* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.btt*, %struct.btt** %13, align 8
  %33 = getelementptr inbounds %struct.btt, %struct.btt* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %34, 4096
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 4096, i32 512
  %38 = load %struct.btt*, %struct.btt** %13, align 8
  %39 = getelementptr inbounds %struct.btt, %struct.btt* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.btt*, %struct.btt** %13, align 8
  %41 = getelementptr inbounds %struct.btt, %struct.btt* %40, i32 0, i32 8
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.btt*, %struct.btt** %13, align 8
  %44 = getelementptr inbounds %struct.btt, %struct.btt* %43, i32 0, i32 7
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.nd_region*, %struct.nd_region** %11, align 8
  %47 = load %struct.btt*, %struct.btt** %13, align 8
  %48 = getelementptr inbounds %struct.btt, %struct.btt* %47, i32 0, i32 6
  store %struct.nd_region* %46, %struct.nd_region** %48, align 8
  %49 = load %struct.nd_btt*, %struct.nd_btt** %7, align 8
  %50 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call %struct.nd_namespace_io* @to_nd_namespace_io(i32* %52)
  store %struct.nd_namespace_io* %53, %struct.nd_namespace_io** %14, align 8
  %54 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %14, align 8
  %55 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %54, i32 0, i32 0
  %56 = load %struct.btt*, %struct.btt** %13, align 8
  %57 = getelementptr inbounds %struct.btt, %struct.btt* %56, i32 0, i32 5
  store i32* %55, i32** %57, align 8
  %58 = load %struct.btt*, %struct.btt** %13, align 8
  %59 = call i32 @discover_arenas(%struct.btt* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %24
  %63 = load %struct.device*, %struct.device** %15, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %64)
  store %struct.btt* null, %struct.btt** %6, align 8
  br label %141

66:                                               ; preds = %24
  %67 = load %struct.btt*, %struct.btt** %13, align 8
  %68 = getelementptr inbounds %struct.btt, %struct.btt* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @INIT_READY, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load %struct.nd_region*, %struct.nd_region** %11, align 8
  %74 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %15, align 8
  %79 = load %struct.nd_region*, %struct.nd_region** %11, align 8
  %80 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %79, i32 0, i32 0
  %81 = call i32 @dev_name(i32* %80)
  %82 = call i32 @dev_warn(%struct.device* %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  store %struct.btt* null, %struct.btt** %6, align 8
  br label %141

83:                                               ; preds = %72, %66
  %84 = load %struct.btt*, %struct.btt** %13, align 8
  %85 = getelementptr inbounds %struct.btt, %struct.btt* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @INIT_READY, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %127

89:                                               ; preds = %83
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @ARENA_MAX_SIZE, align 8
  %92 = udiv i64 %90, %91
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @ARENA_MAX_SIZE, align 8
  %95 = urem i64 %93, %94
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  %99 = sext i32 %98 to i64
  %100 = add i64 %92, %99
  %101 = load %struct.btt*, %struct.btt** %13, align 8
  %102 = getelementptr inbounds %struct.btt, %struct.btt* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  %103 = load %struct.device*, %struct.device** %15, align 8
  %104 = load %struct.btt*, %struct.btt** %13, align 8
  %105 = getelementptr inbounds %struct.btt, %struct.btt* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @dev_dbg(%struct.device* %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %106, i64 %107)
  %109 = load %struct.btt*, %struct.btt** %13, align 8
  %110 = call i32 @create_arenas(%struct.btt* %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %89
  %114 = load %struct.device*, %struct.device** %15, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @dev_info(%struct.device* %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  store %struct.btt* null, %struct.btt** %6, align 8
  br label %141

117:                                              ; preds = %89
  %118 = load %struct.btt*, %struct.btt** %13, align 8
  %119 = call i32 @btt_meta_init(%struct.btt* %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.device*, %struct.device** %15, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @dev_err(%struct.device* %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  store %struct.btt* null, %struct.btt** %6, align 8
  br label %141

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126, %83
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.btt*, %struct.btt** %13, align 8
  %130 = call i32 @btt_blk_init(%struct.btt* %129)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.device*, %struct.device** %15, align 8
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @dev_err(%struct.device* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  store %struct.btt* null, %struct.btt** %6, align 8
  br label %141

137:                                              ; preds = %128
  %138 = load %struct.btt*, %struct.btt** %13, align 8
  %139 = call i32 @btt_debugfs_init(%struct.btt* %138)
  %140 = load %struct.btt*, %struct.btt** %13, align 8
  store %struct.btt* %140, %struct.btt** %6, align 8
  br label %141

141:                                              ; preds = %137, %133, %122, %113, %77, %62, %23
  %142 = load %struct.btt*, %struct.btt** %6, align 8
  ret %struct.btt* %142
}

declare dso_local %struct.btt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.nd_namespace_io* @to_nd_namespace_io(i32*) #1

declare dso_local i32 @discover_arenas(%struct.btt*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @create_arenas(%struct.btt*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @btt_meta_init(%struct.btt*) #1

declare dso_local i32 @btt_blk_init(%struct.btt*) #1

declare dso_local i32 @btt_debugfs_init(%struct.btt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
