; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_prep_data_out_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_prep_data_out_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32, i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32 }
%struct.iscsi_r2t_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_data = type { i64, i32, i8*, i32, i32, i32, i32, i8*, i32 }

@ISCSI_OP_SCSI_DATA_OUT = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_prep_data_out_pdu(%struct.iscsi_task* %0, %struct.iscsi_r2t_info* %1, %struct.iscsi_data* %2) #0 {
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.iscsi_r2t_info*, align 8
  %6 = alloca %struct.iscsi_data*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %4, align 8
  store %struct.iscsi_r2t_info* %1, %struct.iscsi_r2t_info** %5, align 8
  store %struct.iscsi_data* %2, %struct.iscsi_data** %6, align 8
  %9 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %9, i32 0, i32 3
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  store %struct.iscsi_conn* %11, %struct.iscsi_conn** %7, align 8
  %12 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %16 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %19, i32 0, i32 0
  store i32 56, i32* %20, align 8
  %21 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %22 = call i32 @memset(%struct.iscsi_data* %21, i32 0, i32 56)
  %23 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %24 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %29 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %33 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %32, i32 0, i32 7
  store i8* %31, i8** %33, align 8
  %34 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %35 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @ISCSI_OP_SCSI_DATA_OUT, align 4
  %39 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %40 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %42 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %45 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %47 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %50 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %52 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %55 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %57 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %60 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %58, %61
  %63 = call i8* @cpu_to_be32(i32 %62)
  %64 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %65 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %68 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ugt i32 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %3
  %72 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %73 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %76 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @hton24(i32 %74, i32 %77)
  %79 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %80 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %83 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %85 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %98

86:                                               ; preds = %3
  %87 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %88 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @hton24(i32 %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %94 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load i64, i64* @ISCSI_FLAG_CMD_FINAL, align 8
  %96 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %97 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %86, %71
  %99 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %100 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  ret void
}

declare dso_local i32 @memset(%struct.iscsi_data*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @hton24(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
