; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_msg_free_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_msg_free_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbound_queue_table = type { i32, i64, i32, i32 }
%struct.mpi_msg_hdr = type { i32 }

@IOMB_SIZE_SPCV = common dso_local global i32 0, align 4
@PM8001_MPI_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_mpi_msg_free_get(%struct.inbound_queue_table* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inbound_queue_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mpi_msg_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.inbound_queue_table* %0, %struct.inbound_queue_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IOMB_SIZE_SPCV, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8**, i8*** %7, align 8
  store i8* null, i8** %16, align 8
  store i32 -1, i32* %4, align 4
  br label %66

17:                                               ; preds = %3
  %18 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %19 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm8001_read_32(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @cpu_to_le32(i32 %22)
  %24 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %25 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %27 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %32 = srem i32 %30, %31
  %33 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %34 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %17
  %39 = load i8**, i8*** %7, align 8
  store i8* null, i8** %39, align 8
  store i32 -1, i32* %4, align 4
  br label %66

40:                                               ; preds = %17
  %41 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %42 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %47 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @PM8001_MPI_QUEUE, align 4
  %52 = srem i32 %50, %51
  %53 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %54 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %56 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = inttoptr i64 %60 to %struct.mpi_msg_hdr*
  store %struct.mpi_msg_hdr* %61, %struct.mpi_msg_hdr** %10, align 8
  %62 = load %struct.mpi_msg_hdr*, %struct.mpi_msg_hdr** %10, align 8
  %63 = bitcast %struct.mpi_msg_hdr* %62 to i8*
  %64 = getelementptr i8, i8* %63, i64 4
  %65 = load i8**, i8*** %7, align 8
  store i8* %64, i8** %65, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %40, %38, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @pm8001_read_32(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
