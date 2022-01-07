; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2xxx_delete_qpair.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2xxx_delete_qpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.qla_qpair = type { i32, i64, i32, i32, i32, i32, i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32, i32** }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2xxx_delete_qpair(%struct.scsi_qla_host* %0, %struct.qla_qpair* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.qla_qpair*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.qla_qpair* %1, %struct.qla_qpair** %5, align 8
  %8 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %10 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %9, i32 0, i32 7
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %7, align 8
  %12 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %13 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  br label %14

14:                                               ; preds = %19, %2
  %15 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %16 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %15, i32 0, i32 6
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @msleep(i32 500)
  br label %14

21:                                               ; preds = %14
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %23 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %24 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @qla25xx_delete_req_que(%struct.scsi_qla_host* %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @QLA_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %91

31:                                               ; preds = %21
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %33 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %34 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @qla25xx_delete_rsp_que(%struct.scsi_qla_host* %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @QLA_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %91

41:                                               ; preds = %31
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 3
  %47 = load i32**, i32*** %46, align 8
  %48 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %49 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32*, i32** %47, i64 %50
  store i32* null, i32** %51, align 8
  %52 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %53 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %56 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @clear_bit(i64 %54, i32 %57)
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %64 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %63, i32 0, i32 3
  %65 = call i32 @list_del(i32* %64)
  %66 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %67 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %66, i32 0, i32 1
  %68 = call i64 @list_empty(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %41
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %72 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %75 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %78 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %70, %41
  %81 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %82 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @mempool_destroy(i32 %83)
  %85 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %86 = call i32 @kfree(%struct.qla_qpair* %85)
  %87 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %88 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %90, i32* %3, align 4
  br label %93

91:                                               ; preds = %40, %30
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %80
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qla25xx_delete_req_que(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @qla25xx_delete_rsp_que(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mempool_destroy(i32) #1

declare dso_local i32 @kfree(%struct.qla_qpair*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
