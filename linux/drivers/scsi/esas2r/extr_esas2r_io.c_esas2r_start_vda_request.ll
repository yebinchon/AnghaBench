; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_start_vda_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_start_vda_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i64, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.esas2r_request = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.esas2r_inbound_list_source_entry = type { i32, i32 }

@RS_STARTED = common dso_local global i32 0, align 4
@AF_COMM_LIST_TOGGLE = common dso_local global i32 0, align 4
@RQ_SIZE_DEFAULT = common dso_local global i32 0, align 4
@MU_ILW_TOGGLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"rq->vrq->scsi.handle:%x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dw:%x\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"rq->vda_req_sz:%x\00", align 1
@MU_IN_LIST_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_start_vda_request(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca %struct.esas2r_request*, align 8
  %5 = alloca %struct.esas2r_inbound_list_source_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %4, align 8
  %7 = load i32, i32* @RS_STARTED, align 4
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %9 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @AF_COMM_LIST_TOGGLE, align 4
  %25 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %25, i32 0, i32 3
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @AF_COMM_LIST_TOGGLE, align 4
  %31 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %31, i32 0, i32 3
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  br label %39

34:                                               ; preds = %21
  %35 = load i32, i32* @AF_COMM_LIST_TOGGLE, align 4
  %36 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %36, i32 0, i32 3
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.esas2r_inbound_list_source_entry*
  %46 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.esas2r_inbound_list_source_entry, %struct.esas2r_inbound_list_source_entry* %45, i64 %48
  store %struct.esas2r_inbound_list_source_entry* %49, %struct.esas2r_inbound_list_source_entry** %5, align 8
  %50 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %51 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RQ_SIZE_DEFAULT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %40
  %56 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %63 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %55, %40
  %65 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %66 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cpu_to_le64(i32 %69)
  %71 = load %struct.esas2r_inbound_list_source_entry*, %struct.esas2r_inbound_list_source_entry** %5, align 8
  %72 = getelementptr inbounds %struct.esas2r_inbound_list_source_entry, %struct.esas2r_inbound_list_source_entry* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %74 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @cpu_to_le32(i32 %75)
  %77 = load %struct.esas2r_inbound_list_source_entry*, %struct.esas2r_inbound_list_source_entry** %5, align 8
  %78 = getelementptr inbounds %struct.esas2r_inbound_list_source_entry, %struct.esas2r_inbound_list_source_entry* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @AF_COMM_LIST_TOGGLE, align 4
  %84 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %84, i32 0, i32 3
  %86 = call i64 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %64
  %89 = load i32, i32* @MU_ILW_TOGGLE, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %64
  %93 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %94 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @esas2r_trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @esas2r_trace(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load %struct.esas2r_request*, %struct.esas2r_request** %4, align 8
  %103 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @esas2r_trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %107 = load i32, i32* @MU_IN_LIST_WRITE, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %106, i32 %107, i32 %108)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @esas2r_trace(i8*, i32) #1

declare dso_local i32 @esas2r_write_register_dword(%struct.esas2r_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
