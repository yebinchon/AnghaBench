; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_inbound_primed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_inbound_primed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"in prim:%1d %02x\00", align 1
@SLSB_P_INPUT_NOT_INIT = common dso_local global i32 0, align 4
@SLSB_P_INPUT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*, i32, i32)* @inbound_primed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inbound_primed(%struct.qdio_q* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qdio_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @DBF_INFO, align 4
  %9 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %10 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %13 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @DBF_DEV_EVENT(i32 %8, i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %18 = call i64 @is_qebsm(%struct.qdio_q* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %3
  %21 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %22 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %20
  %28 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %29 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %34 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %39 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 4
  br label %116

42:                                               ; preds = %20
  %43 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %44 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %45 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SLSB_P_INPUT_NOT_INIT, align 4
  %50 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %51 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @set_buf_states(%struct.qdio_q* %43, i32 %48, i32 %49, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %58 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %63 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32 %61, i32* %65, align 4
  br label %116

66:                                               ; preds = %3
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @add_buf(i32 %67, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %72 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %66
  %78 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @SLSB_P_INPUT_ACK, align 4
  %81 = call i32 @set_buf_state(%struct.qdio_q* %78, i32 %79, i32 %80)
  %82 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %83 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %84 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SLSB_P_INPUT_NOT_INIT, align 4
  %89 = call i32 @set_buf_state(%struct.qdio_q* %82, i32 %87, i32 %88)
  br label %99

90:                                               ; preds = %66
  %91 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %92 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  %95 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @SLSB_P_INPUT_ACK, align 4
  %98 = call i32 @set_buf_state(%struct.qdio_q* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %90, %77
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %102 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %99
  br label %116

110:                                              ; preds = %99
  %111 = load %struct.qdio_q*, %struct.qdio_q** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @SLSB_P_INPUT_NOT_INIT, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @set_buf_states(%struct.qdio_q* %111, i32 %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %109, %42, %27
  ret void
}

declare dso_local i32 @DBF_DEV_EVENT(i32, i32, i8*, i32, i32) #1

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i32 @set_buf_states(%struct.qdio_q*, i32, i32, i32) #1

declare dso_local i32 @add_buf(i32, i32) #1

declare dso_local i32 @set_buf_state(%struct.qdio_q*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
