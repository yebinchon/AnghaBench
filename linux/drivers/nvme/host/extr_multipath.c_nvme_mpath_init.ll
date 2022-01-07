; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_mpath_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_mpath_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nvme_id_ctrl = type { i32, i32, i32, i32 }

@multipath = common dso_local global i32 0, align 4
@nvme_anatt_timeout = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ANA log page size (%zd) larger than MDTS (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"disabling ANA support.\0A\00", align 1
@nvme_ana_work = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_mpath_init(%struct.nvme_ctrl* %0, %struct.nvme_id_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca %struct.nvme_id_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store %struct.nvme_id_ctrl* %1, %struct.nvme_id_ctrl** %5, align 8
  %7 = load i32, i32* @multipath, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %11 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %10, i32 0, i32 12
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %16 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %15, i32 0, i32 12
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14, %9, %2
  store i32 0, i32* %3, align 4
  br label %135

23:                                               ; preds = %14
  %24 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %5, align 8
  %25 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %28 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %27, i32 0, i32 11
  store i32 %26, i32* %28, align 4
  %29 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %5, align 8
  %30 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %33 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 8
  %34 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %5, align 8
  %35 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le32_to_cpu(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %40 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %5, align 8
  %42 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le32_to_cpu(i32 %43)
  %45 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %46 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %45, i32 0, i32 9
  store i8* %44, i8** %46, align 8
  %47 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %48 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %47, i32 0, i32 8
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %51 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %50, i32 0, i32 7
  %52 = load i32, i32* @nvme_anatt_timeout, align 4
  %53 = call i32 @timer_setup(i32* %51, i32 %52, i32 0)
  %54 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %55 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = add i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %62 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %64 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %69 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %75 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %78 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SECTOR_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = icmp sgt i32 %76, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %23
  %84 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %85 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %88 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %91 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SECTOR_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %94)
  %96 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %97 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, ...) @dev_err(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

100:                                              ; preds = %23
  %101 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %102 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %101, i32 0, i32 5
  %103 = load i32, i32* @nvme_ana_work, align 4
  %104 = call i32 @INIT_WORK(i32* %102, i32 %103)
  %105 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %106 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i32* @kmalloc(i32 %107, i32 %108)
  %110 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %111 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %110, i32 0, i32 4
  store i32* %109, i32** %111, align 8
  %112 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %113 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %100
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %133

119:                                              ; preds = %100
  %120 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %121 = call i32 @nvme_read_ana_log(%struct.nvme_ctrl* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %126

125:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %135

126:                                              ; preds = %124
  %127 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %128 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @kfree(i32* %129)
  %131 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %132 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %131, i32 0, i32 4
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %126, %116
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %125, %83, %22
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @nvme_read_ana_log(%struct.nvme_ctrl*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
