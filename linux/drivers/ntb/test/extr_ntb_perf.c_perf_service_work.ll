; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_service_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_service_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.perf_peer = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.perf_peer*, i32 }
%struct.TYPE_3__ = type { i32 }

@PERF_CMD_SSIZE = common dso_local global i32 0, align 4
@PERF_CMD_RSIZE = common dso_local global i32 0, align 4
@PERF_CMD_SXLAT = common dso_local global i32 0, align 4
@PERF_CMD_RXLAT = common dso_local global i32 0, align 4
@PERF_CMD_CLEAR = common dso_local global i32 0, align 4
@PERF_STS_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Freeing while test on-fly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @perf_service_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_service_work(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.perf_peer*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %4 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %5 = call %struct.perf_peer* @to_peer_service(%struct.work_struct* %4)
  store %struct.perf_peer* %5, %struct.perf_peer** %3, align 8
  %6 = load i32, i32* @PERF_CMD_SSIZE, align 4
  %7 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %8 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %7, i32 0, i32 1
  %9 = call i64 @test_and_clear_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %13 = load i32, i32* @PERF_CMD_SSIZE, align 4
  %14 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %15 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @perf_cmd_send(%struct.perf_peer* %12, i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @PERF_CMD_RSIZE, align 4
  %20 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %21 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %20, i32 0, i32 1
  %22 = call i64 @test_and_clear_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %26 = call i32 @perf_setup_inbuf(%struct.perf_peer* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* @PERF_CMD_SXLAT, align 4
  %29 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %30 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %29, i32 0, i32 1
  %31 = call i64 @test_and_clear_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %35 = load i32, i32* @PERF_CMD_SXLAT, align 4
  %36 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %37 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @perf_cmd_send(%struct.perf_peer* %34, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %33, %27
  %41 = load i32, i32* @PERF_CMD_RXLAT, align 4
  %42 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %43 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %42, i32 0, i32 1
  %44 = call i64 @test_and_clear_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %48 = call i32 @perf_setup_outbuf(%struct.perf_peer* %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* @PERF_CMD_CLEAR, align 4
  %51 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %52 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %51, i32 0, i32 1
  %53 = call i64 @test_and_clear_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %49
  %56 = load i32, i32* @PERF_STS_DONE, align 4
  %57 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %58 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %57, i32 0, i32 1
  %59 = call i32 @clear_bit(i32 %56, i32* %58)
  %60 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %61 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = call i64 @test_bit(i32 0, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %55
  %67 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %68 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %69 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.perf_peer*, %struct.perf_peer** %71, align 8
  %73 = icmp eq %struct.perf_peer* %67, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %66
  %75 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %76 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i32 @dev_warn(i32* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %83 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = call i32 @perf_terminate_test(%struct.TYPE_4__* %84)
  br label %86

86:                                               ; preds = %74, %66, %55
  %87 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %88 = call i32 @perf_free_outbuf(%struct.perf_peer* %87)
  %89 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %90 = call i32 @perf_free_inbuf(%struct.perf_peer* %89)
  br label %91

91:                                               ; preds = %86, %49
  ret void
}

declare dso_local %struct.perf_peer* @to_peer_service(%struct.work_struct*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @perf_cmd_send(%struct.perf_peer*, i32, i32) #1

declare dso_local i32 @perf_setup_inbuf(%struct.perf_peer*) #1

declare dso_local i32 @perf_setup_outbuf(%struct.perf_peer*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @perf_terminate_test(%struct.TYPE_4__*) #1

declare dso_local i32 @perf_free_outbuf(%struct.perf_peer*) #1

declare dso_local i32 @perf_free_inbuf(%struct.perf_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
