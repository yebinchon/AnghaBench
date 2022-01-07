; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_start_iocbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_start_iocbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i64, i32, %struct.req_que** }
%struct.req_que = type { i32, i32, i32, i32, i32 }

@ql2xdbwr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla82xx_start_iocbs(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.req_que*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %3, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 3
  %11 = load %struct.req_que**, %struct.req_que*** %10, align 8
  %12 = getelementptr inbounds %struct.req_que*, %struct.req_que** %11, i64 0
  %13 = load %struct.req_que*, %struct.req_que** %12, align 8
  store %struct.req_que* %13, %struct.req_que** %4, align 8
  %14 = load %struct.req_que*, %struct.req_que** %4, align 8
  %15 = getelementptr inbounds %struct.req_que, %struct.req_que* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.req_que*, %struct.req_que** %4, align 8
  %19 = getelementptr inbounds %struct.req_que, %struct.req_que* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.req_que*, %struct.req_que** %4, align 8
  %22 = getelementptr inbounds %struct.req_que, %struct.req_que* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.req_que*, %struct.req_que** %4, align 8
  %27 = getelementptr inbounds %struct.req_que, %struct.req_que* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.req_que*, %struct.req_que** %4, align 8
  %29 = getelementptr inbounds %struct.req_que, %struct.req_que* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.req_que*, %struct.req_que** %4, align 8
  %32 = getelementptr inbounds %struct.req_que, %struct.req_que* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  br label %38

33:                                               ; preds = %1
  %34 = load %struct.req_que*, %struct.req_que** %4, align 8
  %35 = getelementptr inbounds %struct.req_que, %struct.req_que* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %25
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 %41, 5
  %43 = or i32 4, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.req_que*, %struct.req_que** %4, align 8
  %46 = getelementptr inbounds %struct.req_que, %struct.req_que* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %44, %48
  %50 = load %struct.req_que*, %struct.req_que** %4, align 8
  %51 = getelementptr inbounds %struct.req_que, %struct.req_que* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = or i32 %49, %53
  store i32 %54, i32* %5, align 4
  %55 = load i64, i64* @ql2xdbwr, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %38
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %58, i64 %61, i32 %62)
  br label %86

64:                                               ; preds = %38
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @WRT_REG_DWORD(i64 %67, i32 %68)
  %70 = call i32 (...) @wmb()
  br label %71

71:                                               ; preds = %78, %64
  %72 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %73 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @RD_REG_DWORD(i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @WRT_REG_DWORD(i64 %81, i32 %82)
  %84 = call i32 (...) @wmb()
  br label %71

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %57
  ret void
}

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i64, i32) #1

declare dso_local i32 @WRT_REG_DWORD(i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @RD_REG_DWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
