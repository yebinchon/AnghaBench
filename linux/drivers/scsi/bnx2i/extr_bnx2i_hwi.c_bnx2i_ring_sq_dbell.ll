; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_ring_sq_dbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_ring_sq_dbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_conn = type { %struct.bnx2i_endpoint* }
%struct.bnx2i_endpoint = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2i_5771x_sq_rq_db = type { i32 }

@BNX2I_NX2_DEV_57710 = common dso_local global i32 0, align 4
@CNIC_SEND_DOORBELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2i_conn*, i32)* @bnx2i_ring_sq_dbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_ring_sq_dbell(%struct.bnx2i_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2i_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2i_5771x_sq_rq_db*, align 8
  %6 = alloca %struct.bnx2i_endpoint*, align 8
  store %struct.bnx2i_conn* %0, %struct.bnx2i_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %7, i32 0, i32 0
  %9 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %8, align 8
  store %struct.bnx2i_endpoint* %9, %struct.bnx2i_endpoint** %6, align 8
  %10 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %11 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %10, i32 0, i32 2
  %12 = call i32 @atomic_inc(i32* %11)
  %13 = call i32 (...) @wmb()
  %14 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %15 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %16 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %14, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %23 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.bnx2i_5771x_sq_rq_db*
  store %struct.bnx2i_5771x_sq_rq_db* %26, %struct.bnx2i_5771x_sq_rq_db** %5, align 8
  %27 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bnx2i_5771x_sq_rq_db*, %struct.bnx2i_5771x_sq_rq_db** %5, align 8
  %32 = getelementptr inbounds %struct.bnx2i_5771x_sq_rq_db, %struct.bnx2i_5771x_sq_rq_db* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %34 = call i32 @bnx2i_ring_577xx_doorbell(%struct.bnx2i_conn* %33)
  br label %44

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %6, align 8
  %38 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CNIC_SEND_DOORBELL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writew(i32 %36, i64 %42)
  br label %44

44:                                               ; preds = %35, %21
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bnx2i_ring_577xx_doorbell(%struct.bnx2i_conn*) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
