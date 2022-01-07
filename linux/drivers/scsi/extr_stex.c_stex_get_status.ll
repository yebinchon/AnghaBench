; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_msg = type { i32 }
%struct.st_hba = type { i32, i32, %struct.status_msg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.status_msg* (%struct.st_hba*)* @stex_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.status_msg* @stex_get_status(%struct.st_hba* %0) #0 {
  %2 = alloca %struct.st_hba*, align 8
  %3 = alloca %struct.status_msg*, align 8
  store %struct.st_hba* %0, %struct.st_hba** %2, align 8
  %4 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %5 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %4, i32 0, i32 2
  %6 = load %struct.status_msg*, %struct.status_msg** %5, align 8
  %7 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %8 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.status_msg, %struct.status_msg* %6, i64 %10
  store %struct.status_msg* %11, %struct.status_msg** %3, align 8
  %12 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %13 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %17 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %21 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = srem i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.status_msg*, %struct.status_msg** %3, align 8
  ret %struct.status_msg* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
