; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_vda.c_clear_vda_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_vda.c_clear_vda_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_request = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RS_PENDING = common dso_local global i32 0, align 4
@ESAS2R_DATA_BUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_request*)* @clear_vda_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_vda_request(%struct.esas2r_request* %0) #0 {
  %2 = alloca %struct.esas2r_request*, align 8
  %3 = alloca i32, align 4
  store %struct.esas2r_request* %0, %struct.esas2r_request** %2, align 8
  %4 = load %struct.esas2r_request*, %struct.esas2r_request** %2, align 8
  %5 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.esas2r_request*, %struct.esas2r_request** %2, align 8
  %11 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 @memset(%struct.TYPE_4__* %12, i32 0, i32 4)
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.esas2r_request*, %struct.esas2r_request** %2, align 8
  %16 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %14, i32* %19, align 4
  %20 = load i32, i32* @RS_PENDING, align 4
  %21 = load %struct.esas2r_request*, %struct.esas2r_request** %2, align 8
  %22 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.esas2r_request*, %struct.esas2r_request** %2, align 8
  %24 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* @ESAS2R_DATA_BUF_LEN, align 4
  %27 = call i32 @memset(%struct.TYPE_4__* %25, i32 0, i32 %26)
  %28 = load %struct.esas2r_request*, %struct.esas2r_request** %2, align 8
  %29 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %28, i32 0, i32 0
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
