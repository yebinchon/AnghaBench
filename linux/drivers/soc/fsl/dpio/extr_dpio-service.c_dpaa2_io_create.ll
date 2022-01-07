; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_io = type { %struct.device*, i32, i32, %struct.dpaa2_io_desc, i32, i32, i32, %struct.TYPE_2__ }
%struct.device = type { i32 }
%struct.dpaa2_io_desc = type { i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DPAA2_IO_ANY_CPU = common dso_local global i64 0, align 8
@QBMAN_SWP_INTERRUPT_DQRI = common dso_local global i32 0, align 4
@dpio_list_lock = common dso_local global i32 0, align 4
@dpio_list = common dso_local global i32 0, align 4
@dpio_by_cpu = common dso_local global %struct.dpaa2_io** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dpaa2_io* @dpaa2_io_create(%struct.dpaa2_io_desc* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.dpaa2_io*, align 8
  %4 = alloca %struct.dpaa2_io_desc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dpaa2_io*, align 8
  store %struct.dpaa2_io_desc* %0, %struct.dpaa2_io_desc** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dpaa2_io* @kmalloc(i32 72, i32 %7)
  store %struct.dpaa2_io* %8, %struct.dpaa2_io** %6, align 8
  %9 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %10 = icmp ne %struct.dpaa2_io* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.dpaa2_io* null, %struct.dpaa2_io** %3, align 8
  br label %128

12:                                               ; preds = %2
  %13 = load %struct.dpaa2_io_desc*, %struct.dpaa2_io_desc** %4, align 8
  %14 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DPAA2_IO_ANY_CPU, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.dpaa2_io_desc*, %struct.dpaa2_io_desc** %4, align 8
  %20 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 (...) @num_possible_cpus()
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %26 = call i32 @kfree(%struct.dpaa2_io* %25)
  store %struct.dpaa2_io* null, %struct.dpaa2_io** %3, align 8
  br label %128

27:                                               ; preds = %18, %12
  %28 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %29 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %28, i32 0, i32 3
  %30 = load %struct.dpaa2_io_desc*, %struct.dpaa2_io_desc** %4, align 8
  %31 = bitcast %struct.dpaa2_io_desc* %29 to i8*
  %32 = bitcast %struct.dpaa2_io_desc* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %34 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %38 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 4
  %40 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %41 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %45 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %48 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %52 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %55 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %54, i32 0, i32 7
  %56 = call i32 @qbman_swp_init(%struct.TYPE_2__* %55)
  %57 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %58 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %60 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %27
  %64 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %65 = call i32 @kfree(%struct.dpaa2_io* %64)
  store %struct.dpaa2_io* null, %struct.dpaa2_io** %3, align 8
  br label %128

66:                                               ; preds = %27
  %67 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %68 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %67, i32 0, i32 1
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %71 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %70, i32 0, i32 6
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %74 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %73, i32 0, i32 5
  %75 = call i32 @spin_lock_init(i32* %74)
  %76 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %77 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %76, i32 0, i32 4
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %80 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @QBMAN_SWP_INTERRUPT_DQRI, align 4
  %83 = call i32 @qbman_swp_interrupt_set_trigger(i32 %81, i32 %82)
  %84 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %85 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @qbman_swp_interrupt_clear_status(i32 %86, i32 -1)
  %88 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %89 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %66
  %94 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %95 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @qbman_swp_push_set(i32 %96, i32 0, i32 1)
  br label %98

98:                                               ; preds = %93, %66
  %99 = call i32 @spin_lock(i32* @dpio_list_lock)
  %100 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %101 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %100, i32 0, i32 1
  %102 = call i32 @list_add_tail(i32* %101, i32* @dpio_list)
  %103 = load %struct.dpaa2_io_desc*, %struct.dpaa2_io_desc** %4, align 8
  %104 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp uge i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %98
  %108 = load %struct.dpaa2_io**, %struct.dpaa2_io*** @dpio_by_cpu, align 8
  %109 = load %struct.dpaa2_io_desc*, %struct.dpaa2_io_desc** %4, align 8
  %110 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.dpaa2_io*, %struct.dpaa2_io** %108, i64 %111
  %113 = load %struct.dpaa2_io*, %struct.dpaa2_io** %112, align 8
  %114 = icmp ne %struct.dpaa2_io* %113, null
  br i1 %114, label %122, label %115

115:                                              ; preds = %107
  %116 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %117 = load %struct.dpaa2_io**, %struct.dpaa2_io*** @dpio_by_cpu, align 8
  %118 = load %struct.dpaa2_io_desc*, %struct.dpaa2_io_desc** %4, align 8
  %119 = getelementptr inbounds %struct.dpaa2_io_desc, %struct.dpaa2_io_desc* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.dpaa2_io*, %struct.dpaa2_io** %117, i64 %120
  store %struct.dpaa2_io* %116, %struct.dpaa2_io** %121, align 8
  br label %122

122:                                              ; preds = %115, %107, %98
  %123 = call i32 @spin_unlock(i32* @dpio_list_lock)
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  %126 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %125, i32 0, i32 0
  store %struct.device* %124, %struct.device** %126, align 8
  %127 = load %struct.dpaa2_io*, %struct.dpaa2_io** %6, align 8
  store %struct.dpaa2_io* %127, %struct.dpaa2_io** %3, align 8
  br label %128

128:                                              ; preds = %122, %63, %24, %11
  %129 = load %struct.dpaa2_io*, %struct.dpaa2_io** %3, align 8
  ret %struct.dpaa2_io* %129
}

declare dso_local %struct.dpaa2_io* @kmalloc(i32, i32) #1

declare dso_local i64 @num_possible_cpus(...) #1

declare dso_local i32 @kfree(%struct.dpaa2_io*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qbman_swp_init(%struct.TYPE_2__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @qbman_swp_interrupt_set_trigger(i32, i32) #1

declare dso_local i32 @qbman_swp_interrupt_clear_status(i32, i32) #1

declare dso_local i32 @qbman_swp_push_set(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
