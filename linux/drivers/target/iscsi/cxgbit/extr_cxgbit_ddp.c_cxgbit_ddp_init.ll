; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_ddp.c_cxgbit_ddp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_ddp.c_cxgbit_ddp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_device = type { i32, %struct.cxgb4_lld_info }
%struct.cxgb4_lld_info = type { i32, i64*, %struct.TYPE_7__*, i32, i32, %struct.net_device**, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.cxgbi_tag_format = type { i32* }
%struct.cxgbi_ppm = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"%s, iscsi NOT enabled, check config!\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@PPOD_SIZE_SHIFT = common dso_local global i32 0, align 4
@DDP_PGIDX_MAX = common dso_local global i64 0, align 8
@CDEV_DDP_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbit_ddp_init(%struct.cxgbit_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbit_device*, align 8
  %4 = alloca %struct.cxgb4_lld_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cxgbi_tag_format, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxgbi_ppm*, align 8
  store %struct.cxgbit_device* %0, %struct.cxgbit_device** %3, align 8
  %11 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %12 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %11, i32 0, i32 1
  store %struct.cxgb4_lld_info* %12, %struct.cxgb4_lld_info** %4, align 8
  %13 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %14 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %14, i32 0, i32 5
  %16 = load %struct.net_device**, %struct.net_device*** %15, align 8
  %17 = getelementptr inbounds %struct.net_device*, %struct.net_device** %16, i64 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %5, align 8
  %19 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %20 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EACCES, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %137

33:                                               ; preds = %1
  %34 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %35 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PPOD_SIZE_SHIFT, align 4
  %41 = lshr i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = call i32 @memset(%struct.cxgbi_tag_format* %6, i32 0, i32 8)
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %59, %33
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %48 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 3
  %52 = ashr i32 %49, %51
  %53 = and i32 %52, 15
  %54 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %6, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %53, i32* %58, align 4
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %43

62:                                               ; preds = %43
  %63 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %64 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @cxgbi_tagmask_check(i32 %65, %struct.cxgbi_tag_format* %6)
  %67 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %68 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %71 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %71, i32 0, i32 5
  %73 = load %struct.net_device**, %struct.net_device*** %72, align 8
  %74 = getelementptr inbounds %struct.net_device*, %struct.net_device** %73, i64 0
  %75 = load %struct.net_device*, %struct.net_device** %74, align 8
  %76 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %77 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %81 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %80, i32 0, i32 1
  %82 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %83 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %82, i32 0, i32 2
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %89 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %92 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %91, i32 0, i32 2
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %98 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %104 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %103, i32 0, i32 2
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @cxgbi_ppm_init(i64* %69, %struct.net_device* %75, i32 %79, %struct.cxgb4_lld_info* %81, %struct.cxgbi_tag_format* %6, i32 %87, i32 %90, i32 %96, i32 2, i32 %102, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %62
  %113 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %4, align 8
  %114 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.cxgbi_ppm*
  store %struct.cxgbi_ppm* %117, %struct.cxgbi_ppm** %10, align 8
  %118 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %10, align 8
  %119 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DDP_PGIDX_MAX, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %112
  %125 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %10, align 8
  %126 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %127, 1024
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32, i32* @CDEV_DDP_ENABLE, align 4
  %131 = load %struct.cxgbit_device*, %struct.cxgbit_device** %3, align 8
  %132 = getelementptr inbounds %struct.cxgbit_device, %struct.cxgbit_device* %131, i32 0, i32 0
  %133 = call i32 @set_bit(i32 %130, i32* %132)
  br label %134

134:                                              ; preds = %129, %124, %112
  store i32 0, i32* %8, align 4
  br label %135

135:                                              ; preds = %134, %62
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %26
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @memset(%struct.cxgbi_tag_format*, i32, i32) #1

declare dso_local i32 @cxgbi_tagmask_check(i32, %struct.cxgbi_tag_format*) #1

declare dso_local i32 @cxgbi_ppm_init(i64*, %struct.net_device*, i32, %struct.cxgb4_lld_info*, %struct.cxgbi_tag_format*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
