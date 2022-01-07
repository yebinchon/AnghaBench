; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r.h_esas2r_build_sg_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r.h_esas2r_build_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 (%struct.esas2r_adapter*, %struct.esas2r_sg_context*)* }
%struct.esas2r_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.esas2r_sg_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.esas2r_request*, %struct.esas2r_sg_context*)* @esas2r_build_sg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_build_sg_list(%struct.esas2r_adapter* %0, %struct.esas2r_request* %1, %struct.esas2r_sg_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.esas2r_adapter*, align 8
  %6 = alloca %struct.esas2r_request*, align 8
  %7 = alloca %struct.esas2r_sg_context*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %5, align 8
  store %struct.esas2r_request* %1, %struct.esas2r_request** %6, align 8
  store %struct.esas2r_sg_context* %2, %struct.esas2r_sg_context** %7, align 8
  %8 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %9 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le32_to_cpu(i32 %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %21, i32 0, i32 0
  %23 = load i32 (%struct.esas2r_adapter*, %struct.esas2r_sg_context*)*, i32 (%struct.esas2r_adapter*, %struct.esas2r_sg_context*)** %22, align 8
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %25 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %7, align 8
  %26 = call i32 %23(%struct.esas2r_adapter* %24, %struct.esas2r_sg_context* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
