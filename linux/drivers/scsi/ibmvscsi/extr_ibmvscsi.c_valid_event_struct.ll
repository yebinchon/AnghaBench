; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_valid_event_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_valid_event_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_pool = type { i32, %struct.srp_event_struct* }
%struct.srp_event_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_pool*, %struct.srp_event_struct*)* @valid_event_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_event_struct(%struct.event_pool* %0, %struct.srp_event_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_pool*, align 8
  %5 = alloca %struct.srp_event_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.event_pool* %0, %struct.event_pool** %4, align 8
  store %struct.srp_event_struct* %1, %struct.srp_event_struct** %5, align 8
  %7 = load %struct.srp_event_struct*, %struct.srp_event_struct** %5, align 8
  %8 = load %struct.event_pool*, %struct.event_pool** %4, align 8
  %9 = getelementptr inbounds %struct.event_pool, %struct.event_pool* %8, i32 0, i32 1
  %10 = load %struct.srp_event_struct*, %struct.srp_event_struct** %9, align 8
  %11 = ptrtoint %struct.srp_event_struct* %7 to i64
  %12 = ptrtoint %struct.srp_event_struct* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.event_pool*, %struct.event_pool** %4, align 8
  %21 = getelementptr inbounds %struct.event_pool, %struct.event_pool* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %36

25:                                               ; preds = %18
  %26 = load %struct.srp_event_struct*, %struct.srp_event_struct** %5, align 8
  %27 = load %struct.event_pool*, %struct.event_pool** %4, align 8
  %28 = getelementptr inbounds %struct.event_pool, %struct.event_pool* %27, i32 0, i32 1
  %29 = load %struct.srp_event_struct*, %struct.srp_event_struct** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %29, i64 %31
  %33 = icmp ne %struct.srp_event_struct* %26, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %36

35:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %24
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
