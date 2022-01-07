; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_setup_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_setup_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_ctrl = type { i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i64, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"icdoff is not supported!\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Mandatory keyed sgls are not supported!\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"queue_size %zu > ctrl sqsize %u, clamping down\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"sqsize %u > ctrl maxcmd %u, clamping down\0A\00", align 1
@NVME_CTRL_LIVE = common dso_local global i32 0, align 4
@NVME_CTRL_DELETING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_ctrl*, i32)* @nvme_rdma_setup_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_setup_ctrl(%struct.nvme_rdma_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_rdma_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvme_rdma_ctrl* %0, %struct.nvme_rdma_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @nvme_rdma_configure_admin_queue(%struct.nvme_rdma_ctrl* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %173

17:                                               ; preds = %2
  %18 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %19 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %25 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %163

29:                                               ; preds = %17
  %30 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %38 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %163

42:                                               ; preds = %29
  %43 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %44 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %50 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = icmp sgt i64 %48, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %42
  %56 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %57 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %61 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 6
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %67 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  %71 = call i32 @dev_warn(i32 %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %65, i64 %70)
  br label %72

72:                                               ; preds = %55, %42
  %73 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %74 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  %78 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %79 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %77, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %72
  %84 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %85 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %89 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  %93 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %94 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @dev_warn(i32 %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %92, i64 %96)
  %98 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %99 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 1
  %103 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %104 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i64 %102, i64* %105, align 8
  br label %106

106:                                              ; preds = %83, %72
  %107 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %108 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 1048576
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %115 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %106
  %117 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %118 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %120, 1
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @nvme_rdma_configure_io_queues(%struct.nvme_rdma_ctrl* %123, i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %163

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %116
  %131 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %132 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %131, i32 0, i32 2
  %133 = load i32, i32* @NVME_CTRL_LIVE, align 4
  %134 = call i32 @nvme_change_ctrl_state(%struct.TYPE_5__* %132, i32 %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %130
  %138 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %139 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @NVME_CTRL_DELETING, align 8
  %143 = icmp ne i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @WARN_ON_ONCE(i32 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %6, align 4
  br label %152

148:                                              ; preds = %130
  %149 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %150 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %149, i32 0, i32 2
  %151 = call i32 @nvme_start_ctrl(%struct.TYPE_5__* %150)
  store i32 0, i32* %3, align 4
  br label %173

152:                                              ; preds = %137
  %153 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %154 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @nvme_rdma_destroy_io_queues(%struct.nvme_rdma_ctrl* %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %152
  br label %163

163:                                              ; preds = %162, %128, %36, %23
  %164 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %165 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = call i32 @nvme_rdma_stop_queue(i32* %167)
  %169 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @nvme_rdma_destroy_admin_queue(%struct.nvme_rdma_ctrl* %169, i32 %170)
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %163, %148, %15
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @nvme_rdma_configure_admin_queue(%struct.nvme_rdma_ctrl*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

declare dso_local i32 @nvme_rdma_configure_io_queues(%struct.nvme_rdma_ctrl*, i32) #1

declare dso_local i32 @nvme_change_ctrl_state(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nvme_start_ctrl(%struct.TYPE_5__*) #1

declare dso_local i32 @nvme_rdma_destroy_io_queues(%struct.nvme_rdma_ctrl*, i32) #1

declare dso_local i32 @nvme_rdma_stop_queue(i32*) #1

declare dso_local i32 @nvme_rdma_destroy_admin_queue(%struct.nvme_rdma_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
