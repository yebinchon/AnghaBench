; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_initiate_fipvlan_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_initiate_fipvlan_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i64, i64, i32, i32, i32, i32, i32 }

@QEDF_LINK_DOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Link not up.\0A\00", align 1
@QEDF_UNLOADING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Driver unloading.\0A\00", align 1
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"vlan = 0x%x already set, calling ctlr_link_up.\0A\00", align 1
@QEDF_LINK_UP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"Retry %d.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_ctx*)* @qedf_initiate_fipvlan_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_initiate_fipvlan_req(%struct.qedf_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedf_ctx*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  br label %4

4:                                                ; preds = %53, %1
  %5 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* %6, align 8
  %9 = icmp ne i64 %7, 0
  br i1 %9, label %10, label %71

10:                                               ; preds = %4
  %11 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %11, i32 0, i32 5
  %13 = call i64 @atomic_read(i32* %12)
  %14 = load i64, i64* @QEDF_LINK_DOWN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %17, i32 0, i32 3
  %19 = call i32 @QEDF_ERR(i32* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %72

20:                                               ; preds = %10
  %21 = load i32, i32* @QEDF_UNLOADING, align 4
  %22 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %22, i32 0, i32 6
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %27, i32 0, i32 3
  %29 = call i32 @QEDF_ERR(i32* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %72

30:                                               ; preds = %20
  %31 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %36, i32 0, i32 3
  %38 = load i32, i32* @QEDF_LOG_DISC, align 4
  %39 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @QEDF_INFO(i32* %37, i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %43, i32 0, i32 5
  %45 = call i64 @atomic_read(i32* %44)
  %46 = load i64, i64* @QEDF_LINK_UP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %49, i32 0, i32 4
  %51 = call i32 @fcoe_ctlr_link_up(i32* %50)
  br label %52

52:                                               ; preds = %48, %35
  store i32 1, i32* %2, align 4
  br label %72

53:                                               ; preds = %30
  %54 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %54, i32 0, i32 3
  %56 = load i32, i32* @QEDF_LOG_DISC, align 4
  %57 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @QEDF_INFO(i32* %55, i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  %61 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %61, i32 0, i32 2
  %63 = call i32 @init_completion(i32* %62)
  %64 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %65 = call i32 @qedf_fcoe_send_vlan_req(%struct.qedf_ctx* %64)
  %66 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %66, i32 0, i32 2
  %68 = load i32, i32* @HZ, align 4
  %69 = mul nsw i32 1, %68
  %70 = call i32 @wait_for_completion_timeout(i32* %67, i32 %69)
  br label %4

71:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %52, %26, %16
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i64) #1

declare dso_local i32 @fcoe_ctlr_link_up(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @qedf_fcoe_send_vlan_req(%struct.qedf_ctx*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
