; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_alloc_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_alloc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_msg = type { i32 }
%struct.st_hba = type { i32, i32, i32, %struct.req_msg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.req_msg* (%struct.st_hba*)* @stex_alloc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.req_msg* @stex_alloc_req(%struct.st_hba* %0) #0 {
  %2 = alloca %struct.st_hba*, align 8
  %3 = alloca %struct.req_msg*, align 8
  store %struct.st_hba* %0, %struct.st_hba** %2, align 8
  %4 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %5 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %4, i32 0, i32 3
  %6 = load %struct.req_msg*, %struct.req_msg** %5, align 8
  %7 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %8 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %11 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.req_msg, %struct.req_msg* %6, i64 %14
  store %struct.req_msg* %15, %struct.req_msg** %3, align 8
  %16 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %17 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %21 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  %24 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %25 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = srem i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.req_msg*, %struct.req_msg** %3, align 8
  ret %struct.req_msg* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
