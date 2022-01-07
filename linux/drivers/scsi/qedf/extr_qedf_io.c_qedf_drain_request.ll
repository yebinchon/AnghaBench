; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_drain_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_drain_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)* }
%struct.qedf_ctx = type { i32, i32, i32 }

@QEDF_DRAIN_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MCP drain already active.\0A\00", align 1
@qed_ops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ctx*)* @qedf_drain_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_drain_request(%struct.qedf_ctx* %0) #0 {
  %2 = alloca %struct.qedf_ctx*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %2, align 8
  %3 = load i32, i32* @QEDF_DRAIN_ACTIVE, align 4
  %4 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %4, i32 0, i32 0
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %9, i32 0, i32 2
  %11 = call i32 @QEDF_ERR(i32* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %31

12:                                               ; preds = %1
  %13 = load i32, i32* @QEDF_DRAIN_ACTIVE, align 4
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 0
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qed_ops, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 %21(i32 %24)
  %26 = call i32 @msleep(i32 100)
  %27 = load i32, i32* @QEDF_DRAIN_ACTIVE, align 4
  %28 = load %struct.qedf_ctx*, %struct.qedf_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %28, i32 0, i32 0
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %12, %8
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
