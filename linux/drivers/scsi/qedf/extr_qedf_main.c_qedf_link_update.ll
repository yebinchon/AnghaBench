; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_link_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_link_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_link_output = type { i32, i64 }
%struct.qedf_ctx = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@QEDF_UNLOADING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Ignore link update, driver getting unload.\0A\00", align 1
@QEDF_LINK_UP = common dso_local global i64 0, align 8
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Ignoring link up event as link is already up.\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"LINK UP (%d GB/s).\0A\00", align 1
@QEDF_DCBX_DONE = common dso_local global i64 0, align 8
@qedf_dcbx_no_wait = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"DCBx done.\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"LINK DOWN.\0A\00", align 1
@QEDF_LINK_DOWN = common dso_local global i32 0, align 4
@QEDF_DCBX_PENDING = common dso_local global i32 0, align 4
@qedf_link_down_tmo = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Starting link down tmo.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.qed_link_output*)* @qedf_link_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_link_update(i8* %0, %struct.qed_link_output* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_link_output*, align 8
  %5 = alloca %struct.qedf_ctx*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.qed_link_output* %1, %struct.qed_link_output** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.qedf_ctx*
  store %struct.qedf_ctx* %7, %struct.qedf_ctx** %5, align 8
  %8 = load i32, i32* @QEDF_UNLOADING, align 4
  %9 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %9, i32 0, i32 8
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 4
  %16 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %125

17:                                               ; preds = %2
  %18 = load %struct.qed_link_output*, %struct.qed_link_output** %4, align 8
  %19 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %88

22:                                               ; preds = %17
  %23 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %23, i32 0, i32 6
  %25 = call i64 @atomic_read(i32* %24)
  %26 = load i64, i64* @QEDF_LINK_UP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %29, i32 0, i32 4
  %31 = load i32, i32* @QEDF_LOG_DISC, align 4
  %32 = call i32 @QEDF_INFO(i32* %30, i32 %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %125

33:                                               ; preds = %22
  %34 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %34, i32 0, i32 4
  %36 = load %struct.qed_link_output*, %struct.qed_link_output** %4, align 8
  %37 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 1000
  %40 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %41, i32 0, i32 0
  %43 = call i32 @cancel_delayed_work(i32* %42)
  %44 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %44, i32 0, i32 6
  %46 = load i64, i64* @QEDF_LINK_UP, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @atomic_set(i32* %45, i32 %47)
  %49 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %50 = load %struct.qed_link_output*, %struct.qed_link_output** %4, align 8
  %51 = call i32 @qedf_update_link_speed(%struct.qedf_ctx* %49, %struct.qed_link_output* %50)
  %52 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %52, i32 0, i32 5
  %54 = call i64 @atomic_read(i32* %53)
  %55 = load i64, i64* @QEDF_DCBX_DONE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %33
  %58 = load i64, i64* @qedf_dcbx_no_wait, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %57, %33
  %61 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %61, i32 0, i32 4
  %63 = load i32, i32* @QEDF_LOG_DISC, align 4
  %64 = call i32 @QEDF_INFO(i32* %62, i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %65, i32 0, i32 3
  %67 = call i64 @atomic_read(i32* %66)
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %73, i32 0, i32 7
  %75 = call i32 @queue_delayed_work(i32 %72, i32* %74, i32 0)
  br label %83

76:                                               ; preds = %60
  %77 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %80, i32 0, i32 0
  %82 = call i32 @queue_delayed_work(i32 %79, i32* %81, i32 0)
  br label %83

83:                                               ; preds = %76, %69
  %84 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %84, i32 0, i32 3
  %86 = call i32 @atomic_set(i32* %85, i32 0)
  br label %87

87:                                               ; preds = %83, %57
  br label %125

88:                                               ; preds = %17
  %89 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %90 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %89, i32 0, i32 4
  %91 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %93 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %92, i32 0, i32 6
  %94 = load i32, i32* @QEDF_LINK_DOWN, align 4
  %95 = call i32 @atomic_set(i32* %93, i32 %94)
  %96 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %97 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %96, i32 0, i32 5
  %98 = load i32, i32* @QEDF_DCBX_PENDING, align 4
  %99 = call i32 @atomic_set(i32* %97, i32 %98)
  %100 = load i32, i32* @qedf_link_down_tmo, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %88
  %103 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %104 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %103, i32 0, i32 4
  %105 = load i32, i32* @QEDF_LOG_DISC, align 4
  %106 = call i32 @QEDF_INFO(i32* %104, i32 %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %107 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %108 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %107, i32 0, i32 3
  %109 = call i32 @atomic_set(i32* %108, i32 1)
  br label %110

110:                                              ; preds = %102, %88
  %111 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %112 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %114 = load %struct.qed_link_output*, %struct.qed_link_output** %4, align 8
  %115 = call i32 @qedf_update_link_speed(%struct.qedf_ctx* %113, %struct.qed_link_output* %114)
  %116 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %117 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %120 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %119, i32 0, i32 0
  %121 = load i32, i32* @qedf_link_down_tmo, align 4
  %122 = load i32, i32* @HZ, align 4
  %123 = mul nsw i32 %121, %122
  %124 = call i32 @queue_delayed_work(i32 %118, i32* %120, i32 %123)
  br label %125

125:                                              ; preds = %13, %28, %110, %87
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @qedf_update_link_speed(%struct.qedf_ctx*, %struct.qed_link_output*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
