; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_free_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_free_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32, %struct.rsp_que**, i32, i32, %struct.rsp_que**, i32, %struct.rsp_que**, %struct.rsp_que** }
%struct.rsp_que = type { i32 }
%struct.req_que = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*)* @qla2x00_free_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_free_queues(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  %3 = alloca %struct.req_que*, align 8
  %4 = alloca %struct.rsp_que*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 8
  %9 = load %struct.rsp_que**, %struct.rsp_que*** %8, align 8
  %10 = icmp ne %struct.rsp_que** %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 8
  %14 = load %struct.rsp_que**, %struct.rsp_que*** %13, align 8
  %15 = call i32 @kfree(%struct.rsp_que** %14)
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 8
  store %struct.rsp_que** null, %struct.rsp_que*** %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 7
  %21 = load %struct.rsp_que**, %struct.rsp_que*** %20, align 8
  %22 = icmp ne %struct.rsp_que** %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 7
  %26 = load %struct.rsp_que**, %struct.rsp_que*** %25, align 8
  %27 = call i32 @kfree(%struct.rsp_que** %26)
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 7
  store %struct.rsp_que** null, %struct.rsp_que*** %29, align 8
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 3
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %81, %30
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @test_bit(i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %81

49:                                               ; preds = %41
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 5
  %52 = load %struct.rsp_que**, %struct.rsp_que*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %52, i64 %54
  %56 = load %struct.rsp_que*, %struct.rsp_que** %55, align 8
  %57 = bitcast %struct.rsp_que* %56 to %struct.req_que*
  store %struct.req_que* %57, %struct.req_que** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clear_bit(i32 %58, i32 %61)
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %64 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %63, i32 0, i32 5
  %65 = load %struct.rsp_que**, %struct.rsp_que*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %65, i64 %67
  store %struct.rsp_que* null, %struct.rsp_que** %68, align 8
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %70 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %69, i32 0, i32 3
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %74 = load %struct.req_que*, %struct.req_que** %3, align 8
  %75 = bitcast %struct.req_que* %74 to %struct.rsp_que*
  %76 = call i32 @qla2x00_free_req_que(%struct.qla_hw_data* %73, %struct.rsp_que* %75)
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 3
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %49, %48
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %35

84:                                               ; preds = %35
  %85 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %86 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %85, i32 0, i32 3
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %90 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %89, i32 0, i32 5
  %91 = load %struct.rsp_que**, %struct.rsp_que*** %90, align 8
  %92 = call i32 @kfree(%struct.rsp_que** %91)
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %94 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %93, i32 0, i32 5
  store %struct.rsp_que** null, %struct.rsp_que*** %94, align 8
  %95 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %96 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %95, i32 0, i32 3
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %143, %84
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %102 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %146

105:                                              ; preds = %99
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %108 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @test_bit(i32 %106, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %143

113:                                              ; preds = %105
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 2
  %116 = load %struct.rsp_que**, %struct.rsp_que*** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %116, i64 %118
  %120 = load %struct.rsp_que*, %struct.rsp_que** %119, align 8
  store %struct.rsp_que* %120, %struct.rsp_que** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %123 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @clear_bit(i32 %121, i32 %124)
  %126 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %127 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %126, i32 0, i32 2
  %128 = load %struct.rsp_que**, %struct.rsp_que*** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %128, i64 %130
  store %struct.rsp_que* null, %struct.rsp_que** %131, align 8
  %132 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %133 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %132, i32 0, i32 3
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %137 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %138 = call i32 @qla2x00_free_rsp_que(%struct.qla_hw_data* %136, %struct.rsp_que* %137)
  %139 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %140 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %139, i32 0, i32 3
  %141 = load i64, i64* %6, align 8
  %142 = call i32 @spin_lock_irqsave(i32* %140, i64 %141)
  br label %143

143:                                              ; preds = %113, %112
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %99

146:                                              ; preds = %99
  %147 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %148 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %147, i32 0, i32 3
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %152 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %151, i32 0, i32 2
  %153 = load %struct.rsp_que**, %struct.rsp_que*** %152, align 8
  %154 = call i32 @kfree(%struct.rsp_que** %153)
  %155 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %156 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %155, i32 0, i32 2
  store %struct.rsp_que** null, %struct.rsp_que*** %156, align 8
  ret void
}

declare dso_local i32 @kfree(%struct.rsp_que**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qla2x00_free_req_que(%struct.qla_hw_data*, %struct.rsp_que*) #1

declare dso_local i32 @qla2x00_free_rsp_que(%struct.qla_hw_data*, %struct.rsp_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
