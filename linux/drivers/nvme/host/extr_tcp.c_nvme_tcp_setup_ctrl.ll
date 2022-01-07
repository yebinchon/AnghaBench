; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_setup_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_setup_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i64, i64, i32, i64, i32, i64, %struct.nvmf_ctrl_options* }
%struct.nvmf_ctrl_options = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"icdoff is not supported!\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"queue_size %zu > ctrl sqsize %u, clamping down\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"sqsize %u > ctrl maxcmd %u, clamping down\0A\00", align 1
@NVME_CTRL_LIVE = common dso_local global i32 0, align 4
@NVME_CTRL_DELETING = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, i32)* @nvme_tcp_setup_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_setup_ctrl(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvmf_ctrl_options*, align 8
  %7 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %9 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %8, i32 0, i32 6
  %10 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %9, align 8
  store %struct.nvmf_ctrl_options* %10, %struct.nvmf_ctrl_options** %6, align 8
  %11 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @nvme_tcp_configure_admin_queue(%struct.nvme_ctrl* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %124

18:                                               ; preds = %2
  %19 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %25 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %117

28:                                               ; preds = %18
  %29 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %30 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %33 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = icmp sgt i64 %31, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %28
  %38 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %39 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nvmf_ctrl_options*, %struct.nvmf_ctrl_options** %6, align 8
  %42 = getelementptr inbounds %struct.nvmf_ctrl_options, %struct.nvmf_ctrl_options* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %45 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %47)
  br label %49

49:                                               ; preds = %37, %28
  %50 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %51 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %55 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %49
  %59 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %60 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %63 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  %66 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %67 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dev_warn(i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %65, i64 %68)
  %70 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %71 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, 1
  %74 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %75 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %58, %49
  %77 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %78 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @nvme_tcp_configure_io_queues(%struct.nvme_ctrl* %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %117

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %76
  %90 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %91 = load i32, i32* @NVME_CTRL_LIVE, align 4
  %92 = call i32 @nvme_change_ctrl_state(%struct.nvme_ctrl* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %89
  %95 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %96 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NVME_CTRL_DELETING, align 8
  %99 = icmp ne i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @WARN_ON_ONCE(i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %107

104:                                              ; preds = %89
  %105 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %106 = call i32 @nvme_start_ctrl(%struct.nvme_ctrl* %105)
  store i32 0, i32* %3, align 4
  br label %124

107:                                              ; preds = %94
  %108 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %109 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @nvme_tcp_destroy_io_queues(%struct.nvme_ctrl* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %107
  br label %117

117:                                              ; preds = %116, %87, %23
  %118 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %119 = call i32 @nvme_tcp_stop_queue(%struct.nvme_ctrl* %118, i32 0)
  %120 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @nvme_tcp_destroy_admin_queue(%struct.nvme_ctrl* %120, i32 %121)
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %117, %104, %16
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @nvme_tcp_configure_admin_queue(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

declare dso_local i32 @nvme_tcp_configure_io_queues(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @nvme_change_ctrl_state(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nvme_start_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @nvme_tcp_destroy_io_queues(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @nvme_tcp_stop_queue(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @nvme_tcp_destroy_admin_queue(%struct.nvme_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
