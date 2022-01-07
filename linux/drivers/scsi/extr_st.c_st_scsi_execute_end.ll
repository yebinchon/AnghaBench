; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_scsi_execute_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_scsi_execute_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.st_request* }
%struct.st_request = type { i64, i32, %struct.bio*, i32, %struct.scsi_tape* }
%struct.bio = type { i32 }
%struct.scsi_tape = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.scsi_request = type { i32, i64, i32, i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @st_scsi_execute_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_scsi_execute_end(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_request*, align 8
  %6 = alloca %struct.scsi_request*, align 8
  %7 = alloca %struct.scsi_tape*, align 8
  %8 = alloca %struct.bio*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 0
  %11 = load %struct.st_request*, %struct.st_request** %10, align 8
  store %struct.st_request* %11, %struct.st_request** %5, align 8
  %12 = load %struct.request*, %struct.request** %3, align 8
  %13 = call %struct.scsi_request* @scsi_req(%struct.request* %12)
  store %struct.scsi_request* %13, %struct.scsi_request** %6, align 8
  %14 = load %struct.st_request*, %struct.st_request** %5, align 8
  %15 = getelementptr inbounds %struct.st_request, %struct.st_request* %14, i32 0, i32 4
  %16 = load %struct.scsi_tape*, %struct.scsi_tape** %15, align 8
  store %struct.scsi_tape* %16, %struct.scsi_tape** %7, align 8
  %17 = load %struct.scsi_request*, %struct.scsi_request** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.st_request*, %struct.st_request** %5, align 8
  %21 = getelementptr inbounds %struct.st_request, %struct.st_request* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.scsi_tape*, %struct.scsi_tape** %7, align 8
  %23 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %19, i32* %26, align 4
  %27 = load %struct.scsi_request*, %struct.scsi_request** %6, align 8
  %28 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.scsi_tape*, %struct.scsi_tape** %7, align 8
  %31 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  %35 = load %struct.scsi_tape*, %struct.scsi_tape** %7, align 8
  %36 = load %struct.request*, %struct.request** %3, align 8
  %37 = call i32 @st_do_stats(%struct.scsi_tape* %35, %struct.request* %36)
  %38 = load %struct.st_request*, %struct.st_request** %5, align 8
  %39 = getelementptr inbounds %struct.st_request, %struct.st_request* %38, i32 0, i32 2
  %40 = load %struct.bio*, %struct.bio** %39, align 8
  store %struct.bio* %40, %struct.bio** %8, align 8
  %41 = load %struct.scsi_request*, %struct.scsi_request** %6, align 8
  %42 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %2
  %46 = load %struct.st_request*, %struct.st_request** %5, align 8
  %47 = getelementptr inbounds %struct.st_request, %struct.st_request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.scsi_request*, %struct.scsi_request** %6, align 8
  %50 = getelementptr inbounds %struct.scsi_request, %struct.scsi_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %53 = call i32 @memcpy(i32 %48, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %2
  %55 = load %struct.st_request*, %struct.st_request** %5, align 8
  %56 = getelementptr inbounds %struct.st_request, %struct.st_request* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.st_request*, %struct.st_request** %5, align 8
  %61 = getelementptr inbounds %struct.st_request, %struct.st_request* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @complete(i64 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.bio*, %struct.bio** %8, align 8
  %66 = call i32 @blk_rq_unmap_user(%struct.bio* %65)
  %67 = load %struct.request*, %struct.request** %3, align 8
  %68 = call i32 @blk_put_request(%struct.request* %67)
  ret void
}

declare dso_local %struct.scsi_request* @scsi_req(%struct.request*) #1

declare dso_local i32 @st_do_stats(%struct.scsi_tape*, %struct.request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @blk_rq_unmap_user(%struct.bio*) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
