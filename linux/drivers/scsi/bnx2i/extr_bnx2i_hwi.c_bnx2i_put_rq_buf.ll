; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_put_rq_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_put_rq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_conn = type { %struct.TYPE_4__*, %struct.bnx2i_endpoint* }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2i_endpoint = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.bnx2i_5771x_sq_rq_db = type { i32 }

@BNX2I_NX2_DEV_57710 = common dso_local global i32 0, align 4
@CNIC_RECV_DOORBELL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2i_put_rq_buf(%struct.bnx2i_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2i_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2i_5771x_sq_rq_db*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2i_endpoint*, align 8
  store %struct.bnx2i_conn* %0, %struct.bnx2i_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %9 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %8, i32 0, i32 1
  %10 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %9, align 8
  %11 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 32768
  store i32 %14, i32* %6, align 4
  %15 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %15, i32 0, i32 1
  %17 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %16, align 8
  store %struct.bnx2i_endpoint* %17, %struct.bnx2i_endpoint** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %18
  store i32 %23, i32* %21, align 4
  %24 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %7, align 8
  %25 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 32767
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %7, align 8
  %31 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %7, align 8
  %36 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %40 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %38, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %2
  %46 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %47 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %7, align 8
  %52 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = srem i32 %54, %50
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %45
  %59 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %7, align 8
  %60 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, 32768
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %45
  br label %72

65:                                               ; preds = %2
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %7, align 8
  %68 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %65, %64
  %73 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %74 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %7, align 8
  %75 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = call i64 @test_bit(i32 %73, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %72
  %81 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %7, align 8
  %82 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.bnx2i_5771x_sq_rq_db*
  store %struct.bnx2i_5771x_sq_rq_db* %85, %struct.bnx2i_5771x_sq_rq_db** %5, align 8
  %86 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %7, align 8
  %87 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.bnx2i_5771x_sq_rq_db*, %struct.bnx2i_5771x_sq_rq_db** %5, align 8
  %91 = getelementptr inbounds %struct.bnx2i_5771x_sq_rq_db, %struct.bnx2i_5771x_sq_rq_db* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %104

92:                                               ; preds = %72
  %93 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %7, align 8
  %94 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %7, align 8
  %98 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CNIC_RECV_DOORBELL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writew(i32 %96, i64 %102)
  br label %104

104:                                              ; preds = %92, %80
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
