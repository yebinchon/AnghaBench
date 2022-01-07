; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_next_port_on_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_next_port_on_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { i64, %struct.tb_port*, %struct.TYPE_6__*, %struct.tb_port* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tb_port* @tb_next_port_on_path(%struct.tb_port* %0, %struct.tb_port* %1, %struct.tb_port* %2) #0 {
  %4 = alloca %struct.tb_port*, align 8
  %5 = alloca %struct.tb_port*, align 8
  %6 = alloca %struct.tb_port*, align 8
  %7 = alloca %struct.tb_port*, align 8
  %8 = alloca %struct.tb_port*, align 8
  store %struct.tb_port* %0, %struct.tb_port** %5, align 8
  store %struct.tb_port* %1, %struct.tb_port** %6, align 8
  store %struct.tb_port* %2, %struct.tb_port** %7, align 8
  %9 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %10 = icmp ne %struct.tb_port* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  store %struct.tb_port* %12, %struct.tb_port** %4, align 8
  br label %110

13:                                               ; preds = %3
  %14 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %15 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %18 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp eq %struct.TYPE_6__* %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %23 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %24 = icmp eq %struct.tb_port* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store %struct.tb_port* null, %struct.tb_port** %4, align 8
  br label %110

26:                                               ; preds = %21
  %27 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  store %struct.tb_port* %27, %struct.tb_port** %4, align 8
  br label %110

28:                                               ; preds = %13
  %29 = load %struct.tb_port*, %struct.tb_port** %5, align 8
  %30 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %36 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %34, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %28
  %43 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %44 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %43, i32 0, i32 3
  %45 = load %struct.tb_port*, %struct.tb_port** %44, align 8
  %46 = icmp ne %struct.tb_port* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %49 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %48, i32 0, i32 3
  %50 = load %struct.tb_port*, %struct.tb_port** %49, align 8
  %51 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %57 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %55, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %65 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %64, i32 0, i32 3
  %66 = load %struct.tb_port*, %struct.tb_port** %65, align 8
  store %struct.tb_port* %66, %struct.tb_port** %8, align 8
  br label %76

67:                                               ; preds = %47, %42
  %68 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %69 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @tb_route(%struct.TYPE_6__* %70)
  %72 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %73 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = call %struct.tb_port* @tb_port_at(i32 %71, %struct.TYPE_6__* %74)
  store %struct.tb_port* %75, %struct.tb_port** %8, align 8
  br label %76

76:                                               ; preds = %67, %63
  br label %108

77:                                               ; preds = %28
  %78 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %79 = call i64 @tb_is_upstream_port(%struct.tb_port* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %83 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %82, i32 0, i32 3
  %84 = load %struct.tb_port*, %struct.tb_port** %83, align 8
  store %struct.tb_port* %84, %struct.tb_port** %8, align 8
  br label %107

85:                                               ; preds = %77
  %86 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %87 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call %struct.tb_port* @tb_upstream_port(%struct.TYPE_6__* %88)
  store %struct.tb_port* %89, %struct.tb_port** %8, align 8
  %90 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %91 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %90, i32 0, i32 1
  %92 = load %struct.tb_port*, %struct.tb_port** %91, align 8
  %93 = icmp ne %struct.tb_port* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %85
  %95 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %96 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.tb_port*, %struct.tb_port** %7, align 8
  %99 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  %104 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %103, i32 0, i32 1
  %105 = load %struct.tb_port*, %struct.tb_port** %104, align 8
  store %struct.tb_port* %105, %struct.tb_port** %8, align 8
  br label %106

106:                                              ; preds = %102, %94, %85
  br label %107

107:                                              ; preds = %106, %81
  br label %108

108:                                              ; preds = %107, %76
  %109 = load %struct.tb_port*, %struct.tb_port** %8, align 8
  store %struct.tb_port* %109, %struct.tb_port** %4, align 8
  br label %110

110:                                              ; preds = %108, %26, %25, %11
  %111 = load %struct.tb_port*, %struct.tb_port** %4, align 8
  ret %struct.tb_port* %111
}

declare dso_local %struct.tb_port* @tb_port_at(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @tb_route(%struct.TYPE_6__*) #1

declare dso_local i64 @tb_is_upstream_port(%struct.tb_port*) #1

declare dso_local %struct.tb_port* @tb_upstream_port(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
